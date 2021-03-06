class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Cannot send message. Please try again after sometime!'
      render :new
    end
  end

  def thanks
    redirect_to root_path
  end
end
