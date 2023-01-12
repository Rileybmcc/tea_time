class Subscription < ApplicationRecord
  belongs_to :subscriptions
  belongs_to :customers

end
