module Api
    module V1
        module CharacterSerializers
            class StandardCharacterSerializer < ApplicationSerializer
            attributes :id,:image,:name,:age,:history,:weight,:movie_id
            
            
            end
        end
    end
end