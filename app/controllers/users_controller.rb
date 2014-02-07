class UsersController < ApplicationController
	def index
end
def create
  user = User.find_by_gplus(params[:gplus])
  session[:user_id] = params[:gplus]
  if user
    redirect_to user_path(session[:user_id]), notice: "You are successfully logged in!"
  else
    @fullname = params[:fullname]
    @gplusId = params[:gplus]
    User.create(:name => params[:fullname], :gplus => params[:gplus], :image => params[:image], :email => params[:email] )
    
    redirect_to users_path, notice: "User with name #{@fullname} and Google+ ID #{@gplusId} has been successfully registered!"
  end

end
def show
	@user = User.find_by_gplus(session[:user_id])

end

end
