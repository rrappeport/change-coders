class CallbacksController < Devise::OmniauthCallbacksController
  def github
    @developer = Developer.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @developer
  end
end
