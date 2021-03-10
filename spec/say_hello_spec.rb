require 'say_hello'

describe SayHello do
  describe 'run' do
    it 'gets an email and sends it' do
      message = double(send: "HELLO   sent to friend@example.com")
      email = double(message: message)
      application = SayHello.new(email)
      expect(application.run).to eq("HELLO   sent to friend@example.com")
    end
  end
end

# def send(to, body)
#   # Imagine I'm sending an email
# end