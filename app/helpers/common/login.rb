module Common
  module Login
    def is_user_loggedin
      if session[:userlogin_id]
        return true
      end
      false
    end
  end
end
