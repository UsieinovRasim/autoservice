class Service < ApplicationRecord
  has_and_belongs_to_many :orders
  has_and_belongs_to_many :executors
end
