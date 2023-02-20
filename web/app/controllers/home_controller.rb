class HomeController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all

  end

  def create_message

  end
  
end
