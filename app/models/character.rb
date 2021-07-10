class Character < ApplicationRecord
    # Associations
    belongs_to :movie

    # Validations
    validates :image,
              :name,
              :age,
              :weight,
              :history,
              presence: true
    
    validates :age, numericality: {only_integer: true}
    validates :weight, numericality: true

end
