require 'test_helper'

class MailServTest < ActionMailer::TestCase
  test "new_suggest" do
    mail = MailServ.new_suggest
    assert_equal "New suggest", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "especial_suggest" do
    mail = MailServ.especial_suggest
    assert_equal "Especial suggest", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
