module Api
    module V1
        module MovieSerializers
            class ShowMovieSerializer < ApplicationSerializer
            attributes :id,:title,:date_of_creation,:rating,:image
            has_many :characters, serializer: CharacterSerializers::ShowCharacterSerializer
           
            
            end
        end
    end
end