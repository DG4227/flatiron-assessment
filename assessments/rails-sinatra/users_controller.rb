class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # GET /users/new

  def create
    @user = User.new(user_params)
    @user.save!
  end
  # POST to /users

  def index
    @users = User.all
  end
  # GET /users

  def show
    @user = User.all.find{|user| user.id == params[:id]}
  end
  # GET users/:id

  def edit
    @user = User.all.find{|user| user.id == params[:id]}
  end
  # GET users/:id/edit

  def update
    @user = User.all.find{|user| user.id == params[:id]}
  end
  # POST to user/:id

  def destroy
    @user = User.all.find{|user| user.id == params[:id]}
    @user.destroy
  end
  # POST (delete?) to /user/:id

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
