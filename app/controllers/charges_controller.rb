class ChargesController < ApplicationController
  helper :all

  def new
  end

  def create
    # Amount in cents
    @amount = params[:payment_amount]

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount.to_i,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    #TODO: Order information needs to be updated here

    session[:cart] = nil
    redirect_to welcome_index_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to welcome_index_path

  end


end
