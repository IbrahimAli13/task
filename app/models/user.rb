class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable
    #validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, on: :create }, presence: true, uniqueness: true
    #validates :username, presence: true, uniqueness: true
    #validates :name, presence: true, uniqueness: true
    has_one :car
    scope :UserCarModel, -> (year) {joins(:car).where(car: {"model > ?": year})}
    

    #after_validation :Capitalise, on: :create

   # private
   # def Capitalise
    #  self.name = name.upcase.titleize
   # end




end
