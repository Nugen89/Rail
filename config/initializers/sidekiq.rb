# require 'sidekiq'
# require 'sidekiq/web'

# Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
#   [user, password] == ["sidekiqadmin", "yourpassword"]
# end

# require 'sidekiq'
# require 'sidekiq-status'

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