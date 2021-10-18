class WelcomeController < ApplicationController
  def index
    @nome = params[:pipa]
end
end