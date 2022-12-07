class Order < ApplicationRecord
    belongs_to :user
    has_many :order_makeup
    has_many :makeups, through: :order_makeup
end
