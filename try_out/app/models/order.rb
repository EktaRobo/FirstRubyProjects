class Order < ApplicationRecord
  belongs_to :Grocer
  belongs_to :Client
  belongs_to :Order_status
end
