require './lita_reminder'
ENVied.require(*ENV['ENVIED_GROUPS'] || [:default, ENV['RACK_ENV']])

Lita.configure do |config|
  config.robot.name = "Reminder"
  config.robot.locale = :en
  config.robot.admins = ENV['ROBOT_ADMINS'].split(',')
  config.robot.log_level = :debug

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :hipchat
  config.adapters.hipchat.jid = ENV['HIPCHAT_JID']
  config.adapters.hipchat.password = ENV['HIPCHAT_PASSWORD']
  config.adapters.hipchat.debug = true

  ## Redis connection settings
  config.redis[:url] = ENV["REDISTOGO_URL"]
  if ENV['RACK_ENV'] == 'production'
    config.http.port = ENV["PORT"]
  end
end
