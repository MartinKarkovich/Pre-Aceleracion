module Api
    module V1
        class CharactersController < ApplicationController
            before_action :set_character, only: [:show,:destroy,:update]
            def index
                @characters = Character.all
                render json: @characters,
                       each_serializer: CharacterSerializers::IndexCharacterSerializer
            end

            def show
                render json: @character,
                       serializer: CharacterSerializers::ShowCharacterSerializer 
            end

            def create 
                @character = Character.new(parameters)
                if @character.save
                    render json: @character, status: :created
                else 
                    render json: {error: "Can't create the specified character"}, status: :unprocessable_entity
                end

            end

            def destroy
                @character.destroy
            end

            def update
                if @character.update(parameters)
                    render json: @character
                else
                    render json: {error: "Can't update the specified character"}, status: :unprocessable_entity
                end
            end

            private
            
            def set_character
                @character = Character.find(params[:id])
            end

            def parameters
                params.require(:character).permit(:name,:age,:weight,:image,:history,:movie_id)
            end

            
        end
    end
end
