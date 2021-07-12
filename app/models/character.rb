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

    # Scopes
    scope :for_name, -> (name){where(name: name)}
    scope :for_age, -> (age){where(age: age)}
    scope :for_movie_id, -> (movie_id){where(movie_id: movie_id)}
    scope :for_weight, -> (weight){where(weight: weight)}

end
