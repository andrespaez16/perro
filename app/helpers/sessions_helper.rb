module SessionsHelper
  def log_in(dog)
    session[:dog_id] = dog.id
  end

  def current_dog
    if session[:dog_id]
      @current_dog = @current_dog || Dog.find_by(id: session[:dog_id])
    end
  end

  def logged_in?
    !current_dog.nil?
  end

  def log_out
    session.delete(:dog_id)
    @current_dog = nil
  end

end
