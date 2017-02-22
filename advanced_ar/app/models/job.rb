class Job < ApplicationRecord
  belongs_to :person, optional: true
  has_one :salary_range
end
