class HomeController < ApplicationController
  def index
    @contact = ContactForm.new
  end

  def create
    @contact = ContactForm.new(params[:contact])

    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message!'
      render :index
    else
      flash.now[:error] = 'Cannot send message.'
      render :index
    end
  end

  private

  def contact_params
    params.require(:contact_form).permit(:name, :email, :subject, :message)
  end
end
