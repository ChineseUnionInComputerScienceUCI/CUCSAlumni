  private
  def require_login
    unless session[:logged_in] == true
      redirect_to "/"
    end
  end

