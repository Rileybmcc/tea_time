class CustomerSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer

  # set_type 'customer'

  attributes :first_name,
              :last_name,
              :email,
              :address

  has_many :subscriptions

end
