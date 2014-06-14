require 'cgi'

helpers do
 
 	def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def escape_string(str)
    CGI.escape(str)
  end
end
