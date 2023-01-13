class Api::V1::CustomersController < ApplicationController

  def show
    user = Customer.find(params[:id])
    info = user.subscriptions

    render json: {user: user, data: info}
  end

end
