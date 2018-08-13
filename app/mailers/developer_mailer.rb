class DeveloperMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.developer_mailer.application_status.subject
  #
  def application_status(application)
    @application = application
    @developer = application.developer
    @project = @application.project
    mail(
     to: @developer.email,
     subject: "Your application is #{application.state.downcase}"
     )
  end
end
