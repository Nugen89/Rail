class FeedbacksController < ApplicationController


	def create
		debug	feedback_params
		@feedback = Feedback.new(feedback_params)
		if @feedback.save!
			# redirect_to resource_path(@resource), :flash => { :errors => @feedback.errors } 
		else
			
		end
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
