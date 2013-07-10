class FeedbackWorker
	include Sidekiq::Worker

	def perform(feedback_id)
		feedback = Feedback.find(feedback_id)
		console.log("ASYNC FEEDBACKWORKER")
		# SEND EMAIL with variables set
	end
end