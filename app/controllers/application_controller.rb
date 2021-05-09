class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  #privateは、自分のコントローラ内でしか参照できません
  #一方、protectedは呼び出された他のコントローラからも参照できます。

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
  end 
end
