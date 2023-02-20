class MessagesController < ApplicationController
    before_action :authenticate_user!

    
    def new
        @message = Message.new
    end

    def create
        @message = Message.new(message_params.merge(user: current_user))
        @message.save
        # respond_to do |format|
        #   if @message.save
        #     #format.turbo_stream
        #     format.html { redirect_to listing_url(@listing), notice: "Listing was successfully created." }
        #     format.json { render :show, status: :created, location: @listing }
        #   else
        #     format.html { redirect_to listing_path(@listing), alert: "Reply could not be created" }
        #   end
        # end
    end

    def destroy
        @message = current_user.messages.find(params[:id])
        @message.destroy

        respond_to do |format|
        format.turbo_stream
        format.html { redirect_to listing_path(@listing), notice: "message was deleted" }
        end
    end


    private


    def message_params
        params.require(:message).permit(:body)
    end

end
