class FeedbackWorker
	include Sidekiq::Worker

	def perform(feedback_id)
		feedback = Feedback.find(feedback_id)
		# SEND EMAIL with variables set

# require 'mandrill'
# m = Mandrill::API.new # All official Mandrill API clients will automatically pull your API key from the environment
# rendered = m.templates.render 'MyTemplate', [{:name => 'main', :content => 'The main content block'}]
# puts rendered['html'] # print out the rendered HTML
	end
end