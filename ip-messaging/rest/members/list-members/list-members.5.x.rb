require 'twilio-ruby'

# Get your Account SID, Auth Token, Service SID and Channel SID
# from twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
service_sid = 'ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
channel_sid = 'CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
@client = Twilio::REST::Client.new(account_sid, auth_token)

# list members
service = @client.chat.v2.services(service_sid)
channel = service.channels(channel_sid)
channel.members.each do |member|
  puts "#{member.sid} #{member.identity}"
end
