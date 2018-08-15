class MarketingController < ApplicationController

  def home
  end

  def power_ups
  end

  def faq
  end

  def contact
    @contact = Contact.new
  end

  def contact_form_submit
    @contact = Contact.create(contact_params)

    respond_to do |format|
      if @contact.save

        # Sends email to user when user is created.
        ContactMailer.contact_email(@contact).deliver

        format.html { redirect_to '/', :flash => { :success =>  'Your message was sent successfully to the OverUnder team!' }}
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render '/contact' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
        flash[:notice] = "Something went wrong. Please message directly at 'developer@overunder.com'"
      end
    end

  end

  private

    def contact_params
        params.permit(:name, :email, :message)
    end

end
