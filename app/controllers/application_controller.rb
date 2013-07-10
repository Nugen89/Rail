class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@feedback = Feedback.new
  end

  def about
    
  end

  def complaints
    
  end

  def debug(*args)
    args.each do |arg|
      logger.debug arg
    end
  end
  
end
