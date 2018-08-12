class CharityMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.charity_mailer.new_request.subject
  #
  include Rails.application.routes.url_helpers
  include ActionView::Helpers::UrlHelper

  def new_request(project, developer)
    @project = project
    @charity = project.charity
    @developer = developer

    mail(
      to: @charity.email,
      subject: '#{developer.first_name} has requested  to work on your project'
      )
  end
end
