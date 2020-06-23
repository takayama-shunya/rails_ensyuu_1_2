class ContactsController < ApplicationController

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path, notice: "お問い合わせを送信しました！"
    else
      render :new
    end
  end
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
