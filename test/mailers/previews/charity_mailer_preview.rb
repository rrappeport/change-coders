# Preview all emails at http://localhost:3000/rails/mailers/charity_mailer
class CharityMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/charity_mailer/new_request
  def new_request
    developer = Developer.first
    project = Project.first
    CharityMailer.new_request(project, developer)
  end

end
