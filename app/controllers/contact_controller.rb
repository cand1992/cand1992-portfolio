class ContactController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      ContactMailer.contact_us(@message).deliver
      redirect_to root_path, notice: "Thank you for contacting us. We will be in touch."
    else
      flash.now.alert = "Please make sure the information is correct"
      render :new
    end
  end
end
