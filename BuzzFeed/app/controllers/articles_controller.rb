class ArticlesController < ApplicationController
  skip_before_action :authorize, only: :show
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :verify_admin, only: :index
  before_action :set_user, only: [:new, :create, :edit, :update]
  before_action :check_user, only: [:edit, :update]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      if (User.find_by(id: session[:user_id])).name.match(/^admin_/)
        format.html { redirect_to articles_url, notice: "Article was successfully deleted." }
        format.json { head :no_content }
      else
        format.html { redirect_to user_path(session[:user_id]), notice: "Article was successfully deleted." }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    def set_user
      begin
        @username = (Article.find(params[:id])).name
      rescue StandardError => e
        @username = (User.find_by(id: session[:user_id])).name
      end
    end

    def check_user
      tmp_user = User.find_by(id: session[:user_id])
      if not tmp_user.name.match(/^admin_/)
        if (Article.find(params[:id])).name != tmp_user.name
          redirect_to home_url, notice: "Page Not Found!"
        end
      end
    end
      
    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :byline, :body, :image_url, :category, :category2, :name)
    end
end
