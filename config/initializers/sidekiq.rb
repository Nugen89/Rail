require 'sidekiq'
# require 'sidekiq-status'
# require 'sidekiq/web'

# Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
#   [user, password] == ["sidekiqadmin", "yourpassword"]
# end

# Sidekiq.configure_client do |config|
#   config.client_middleware do |chain|
#   	chain.add Sidekiq::Status::ClientMiddleware
# 	end
# end

# Sidekiq.configure_server do |config|
#   config.server_middleware do |chain|
#   chain.add Sidekiq::Status::ServerMiddleware,
#                      expiration: 30.minutes 
#  end
# end

# http://codedecoder.wordpress.com/2013/05/29/sidekiq-installation-start-stop-authentication-authorization-with-devise/
# http://manuel.manuelles.nl/blog/2012/11/13/sidekiq-on-heroku-with-redistogo-nano/
# http://manuel.manuelles.nl/blog/2012/11/13/scalable-heroku-worker-for-sidekiq/

# Sidekiq.configure_client do |config|
#   config.redis = { :size => 1 }
# end

# Sidekiq.configure_server do |config|
#   config.redis = { :size => 2 }
# end

require 'autoscaler/sidekiq'
require 'autoscaler/heroku_scaler'

heroku = nil
if ENV['HEROKU_APP']
  heroku = Autoscaler::HerokuScaler.new
end

Sidekiq.configure_client do |config|
  if heroku
    config.client_middleware do |chain|
      chain.add Autoscaler::Sidekiq::Client, 'default' => heroku
    end
  end
end

Sidekiq.configure_server do |config|
  config.server_middleware do |chain|
    if heroku
      p "[Sidekiq] Running on Heroku, autoscaler is used"
      chain.add(Autoscaler::Sidekiq::Server, heroku, 60) # 60 seconds timeout
    else
      p "[Sidekiq] Running locally, so autoscaler isn't used"
    end
  end
end