class HomeController < ApplicationController

  before_action :authenticate_user!, only: %i[index]
  def index
    @message = Message.new
    @messages = Message.all.order(created_at: :desc).first(10)

  end

  def create_message

  end

  def landing

  end

end
