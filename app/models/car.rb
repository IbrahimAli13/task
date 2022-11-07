class Car < ApplicationRecord
    validates :user_id, uniqueness: true , presence: true
    validates :model, numericality: { in: 1985..2030, message: 'The Model must be between 1985 and 2030' }, presence: true
    validates :car_type, presence: true
    belongs_to :user
    scope :NewerCars, ->(year) { where("model > ?", year) }
    scope :OlderCars, ->(year) { where("model < ?", year) }


    after_validation :Capitalise, on: :create

    private
    def Capitalise
      self.car_type = car_type.upcase
    end
   


end
