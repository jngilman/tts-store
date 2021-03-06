class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
helper_method :categories
before_filter :tags


def categories
	Category.order("name ASC").all
end

def tags
	@tags = Product.uniq.pluck(:tag).sort	
end

end
