module Api
    module V1
        module CharacterSerializers
            class ShowCharacterSerializer < ApplicationSerializer
            attributes :id,:name,:image,:age,:weight,:history
            has_one :movie, serializer: MovieSerializers::ShowMovieSerializer

            
            
            end
        end
    end
end