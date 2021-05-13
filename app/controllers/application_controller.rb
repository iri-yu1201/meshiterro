class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    post_images_path
  end
  
  protected
  #privateは、自分のコントローラ内でしか参照できません
  #一方、protectedは呼び出された他のコントローラからも参照できます。

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
  end 
end
