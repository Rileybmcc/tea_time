require 'rails_helper'

RSpec.describe 'customer#show' do
  describe 'happy path' do

    it 'returns a json response with information about customers subscriptions' do

      @tea101 = Tea.create(title: "Earl Grey", description: "Black tea", temperature: "100 degrees f", brew_time: "5 min" )
      @tea102 = Tea.create(title: "Jasmin", description: "Herbal tea", temperature: "90 degrees f", brew_time: "5 min" )
      @tea103 = Tea.create(title: "Irish Breakfast", description: "Black tea", temperature: "103 degrees f", brew_time: "4 min" )
      @user101 = Customer.create(first_name: "Henry", last_name: "Spencer", email: "HS@gmail", address: "1234 John St")
      @user102 = Customer.create(first_name: "Shawn", last_name: "Spencer", email: "ShawnS@gmail", address: "1444 E 12th St")

      @subscription101 = Subscription.create(title: "Breakfast Basket", price: 48.99, status: true , frequency: "Every 2 weeks", customer_id: @user101.id, tea_id: @tea101.id )

      get "/api/v1/customers/#{@user101.id}"

      expect(response).to be_successful
      expect(response).to have_http_status(200)

      result = JSON.parse(response.body, symbolize_names: true)
      expect(result).to have_key(:data)


      data = result[:data]
      expect(data.count).to eq(1)


      first_subscription = data.first
      expect(first_subscription).to have_key(:title)
      expect(first_subscription).to have_key(:price)
      expect(first_subscription).to have_key(:tea_id)
    end

  end

  # it 'returns a json response with information about customers subscriptions' do
  #
  #   @tea101 = Tea.create(title: "Earl Grey", description: "Black tea", temperature: "100 degrees f", brew_time: "5 min" )
  #   @tea102 = Tea.create(title: "Jasmin", description: "Herbal tea", temperature: "90 degrees f", brew_time: "5 min" )
  #   @tea103 = Tea.create(title: "Irish Breakfast", description: "Black tea", temperature: "103 degrees f", brew_time: "4 min" )
  #   @user101 = Customer.create(first_name: "Henry", last_name: "Spencer", email: "HS@gmail", address: "1234 John St")
  #   @user102 = Customer.create(first_name: "Shawn", last_name: "Spencer", email: "ShawnS@gmail", address: "1444 E 12th St")
  #
  #   @subscription101 = Subscription.create(title: "Breakfast Basket", price: 48.99, status: true , frequency: "Every 2 weeks", customer_id: @user101.id, tea_id: @tea101.id )
  #
  #   get "/api/v1/customers/9999"
  #
  #   expect(response).to_not be_successful
  #   expect(response).to have_http_status(204)
  # end

end
