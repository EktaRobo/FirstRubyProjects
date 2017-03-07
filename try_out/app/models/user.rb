class User < ApplicationRecord
    self.inheritance_column = :user_type

    validates :user_type, presence: true

    scope :clients, -> { where(user_type: 'Client') }
    scope :grocers, -> { where(user_type: 'Grocer') }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  class << self
    def types
      %w(Client Grocer)
    end
  end
end
