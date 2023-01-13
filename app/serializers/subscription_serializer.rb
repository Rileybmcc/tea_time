class SubscriptionSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer

  attributes :title,
              :price,
              :status,
              :frequency,
              :tea_id


end
