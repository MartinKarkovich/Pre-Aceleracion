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
    
    # Scopes
    scope :for_genre_id, -> (genre_id){where(genre_id: genre_id)}
    scope :for_title, -> (title){where(title: title)}
    scope :for_order_by_date_of_creation, -> (order_param){order(date_of_creation: order_param)}
end
