module SessionsHelper
  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token,User.encrypt(remember_token))
    self.current_user = user
  end
  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    remember_token = User.encrypt(cookies[:remember_token])
    @current_user||=User.find_by(remember_token: remember_token)
  end
  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
  def current_user?(user)
  # bug,I don't know why current!=micropost.user,but their name is same.
    user.id == current_user.id
  end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to home_path, notice: "please sign in."
    end
  end
end
