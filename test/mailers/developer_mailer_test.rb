require 'test_helper'

class DeveloperMailerTest < ActionMailer::TestCase
  test "application_status" do
    mail = DeveloperMailer.application_status
    assert_equal "Application status", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
