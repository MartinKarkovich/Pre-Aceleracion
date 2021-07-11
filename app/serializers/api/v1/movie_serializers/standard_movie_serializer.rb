module Api
    module V1
        module MovieSerializers
            class StandardMovieSerializer < ApplicationSerializer
            attributes :id,:title,:date_of_creation,:image,:rating,:genre_id
           
            
            end
        end
    end
end