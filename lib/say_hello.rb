require './lib/email_client'

class SayHello

  def initialize(email = EmailClient.new)
    @email = email
  end

  def run
    # email = EmailClient.new
    @email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end