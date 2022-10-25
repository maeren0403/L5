class ApplicationController < ActionController::Base
    private
     def current_user
      if session[:login_uid]
          User.find_by(uid: current_user)
      end
     end
helper_method :current_user
end
