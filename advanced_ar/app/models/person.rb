class Person < ApplicationRecord
    has_one :personal_info
    has_and_belongs_to_many :hobbies
    has_many :jobs
    has_many :approx_salaries, through: :jobs, source: :salary_range

    def max_salary
        approx_salaries.maximum(:max_salary)
    end
end
