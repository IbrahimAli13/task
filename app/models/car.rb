class Car < ApplicationRecord
    validates :user_id, uniqueness: true , presence: true
    validates :model, inclusion: { in: 1985..2030, message: 'The Model must be between 1985 and 2030' }, presence: true
    validates :car_type, presence: true
    belongs_to :user
end
