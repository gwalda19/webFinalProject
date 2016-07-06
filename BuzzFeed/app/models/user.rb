class User < ActiveRecord::Base
  has_secure_password
  
  after_destroy :ensure_an_admin_remains

  private
    def ensure_an_admin_remains
      if User.where('name REGEXP "^admin_"').count.zero?
        raise "Can't delete last administrator"
      end
    end     

end
