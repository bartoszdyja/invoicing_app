class AuthControllerController < ApplicationController
  def index
  end

  def create
  	@details = request.env['omniauth.auth']
  end
end
