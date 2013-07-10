class FeedbacksController < ApplicationController

	def new
		
	end

	def create
		debug	feedback_params
		@feedback = Feedback.new(feedback_params)
		if @feedback.save
			FeedbackWorker.perform_async(@feedback.id)
			redirect_to @feedback
			# redirect_to resource_path(@resource), :flash => { :errors => @feedback.errors } 
		else
			# redirect_to root_path, @feedback_test => @feedback
			render :new
		end
	end

	def show
		
	end

	def update
  	@feedback.update_attributes!(feedback_params)
  end


  private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def feedback_params
      params.require(:feedback).permit(:comment, :type, :station, :line)
    end

end
