class Book < ApplicationRecord
  belongs_to :reviewer, optional: true
  has_many :notes, dependent: :destroy
end
