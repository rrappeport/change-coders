# Preview all emails at http://localhost:3000/rails/mailers/developer_mailer
class DeveloperMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/developer_mailer/application_status
  def application_status
    proposal = Proposal.first
    DeveloperMailer.application_status(proposal)
  end

end
