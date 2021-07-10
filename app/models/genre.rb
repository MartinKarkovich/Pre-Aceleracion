class Genre < ApplicationRecord
    # Associations
    has_many :movies

    # Validations
    validates :name,
              :image,
              presence: true

end
