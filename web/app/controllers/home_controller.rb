class HomeController < ApplicationController

  before_action :authenticate_user!, only: %i[index]
  def index
    @message = Message.new
    @messages = Message.all.order(created_at: :asc).last(5)
     

  end

  def create_message

  end

  def landing

  end

end
