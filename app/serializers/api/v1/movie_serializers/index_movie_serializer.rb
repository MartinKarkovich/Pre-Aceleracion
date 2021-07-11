module Api
    module V1
        module MovieSerializers
            class IndexMovieSerializer < ApplicationSerializer
            attributes :id,:title,:date_of_creation,:image
           
            
            end
        end
    end
end