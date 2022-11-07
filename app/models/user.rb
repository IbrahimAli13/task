class User < ApplicationRecord
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, on: :create }, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :name, presence: true, uniqueness: true
    has_one :cars
    

    after_validation :Capitalise, on: :create

    private
    def Capitalise
      self.name = name.upcase.titleize
    end




end
