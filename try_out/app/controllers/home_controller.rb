class HomeController < ApplicationController
  def index
    if user_signed_in?
        if current_user.user_type == "Grocer"
            redirect_to items_path
        else
            redirect_to grocers_path
        end
    else
        redirect_to new_user_session_path
    end
  end
end
