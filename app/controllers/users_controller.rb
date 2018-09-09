class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.new(name: params[:user][:name], kana: params[:user][:kana], mail: params[:user][:mail], postal_code: params[:user][:postal_code], address: params[:user][:address])
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end
end
