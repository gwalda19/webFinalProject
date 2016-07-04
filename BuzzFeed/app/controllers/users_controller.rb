class UsersController < ApplicationController
  skip_before_action :authorize, only: [:new, :create]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :verify_admin, only: [:index, :new]
  before_action :check_user, only: [:show, :edit, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_user

  # GET /users
  # GET /users.json
  def index
    @users = User.order(:name)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    userArticle = []
      
    Article.where(name: @user.name).order("created_at DESC").each do |article|
      userArticle.push(article)
    end
    
    @articles = userArticle
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to home_url, notice: "User #{@user.name} was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_url, notice: "User #{@user.name} was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    begin
      @user.destroy
      tmp_user = User.find_by(id: session[:user_id])
      if not tmp_user.name.match(/^admin_/)
        session[:user_id] = nil
      end
      flash[:notice] = "User #{@user.name} deleted"
    rescue StandardError => e
      flash[:notice] = e.message
    end
    respond_to do |format|
      format.html { redirect_to home_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end

    def check_user
      tmp_user = User.find_by(id: session[:user_id])
      if not tmp_user.name.match(/^admin_/)
        if session[:user_id] != @user.id
          redirect_to home_url, notice: "Page Not Found!"
        end
      end
    end

    def invalid_user
      logger.error "Attempt to access invalid user #{params[:id]}"
      redirect_to home_url, notice: "Page Not Found!"
    end
end
