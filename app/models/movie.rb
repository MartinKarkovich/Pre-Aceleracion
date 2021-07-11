class Movie < ApplicationRecord
    # Associations
    belongs_to :genre
    has_many :characters

    # Validations
    validates :title,
              :date_of_creation,
              :rating,
              :image,
              presence: true

    validates :rating, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to:5}
    
end
