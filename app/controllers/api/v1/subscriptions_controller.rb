class Api::V1::SubscriptionsController < ApplicationController

  def create
    new_subscription = Subscription.new(title: params[:title], price: params[:price], status: params[:status], frequency: params[:frequency], customer_id: params[:customer_id], tea_id: params[:tea_id])
    if new_subscription.save
      render json: {outcome: 'success', data: new_subscription}
    end

  end

  def destroy
    subscription_on_chopping_block = Subscription.find(params[:id])
    if subscription_on_chopping_block.destroy
      render json: {outcome: 'success', data: {}}
    end
  end

end
