class Api::V1::CustomersController < ApplicationController

  def show
    user = Customer.find(params[:id])
    info = user.subscriptions

    # require "pry"; binding.pry

    render json: {user: user, data: info}
    # render json: CustomerSerializer.new(user)
  end

end
