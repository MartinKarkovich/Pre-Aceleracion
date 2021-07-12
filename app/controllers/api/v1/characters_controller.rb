module Api
    module V1
        class CharactersController < ApplicationController
            before_action :authenticate_user!
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
                    render json: @character, status: :created,
                           serializer: CharacterSerializers::StandardCharacterSerializer
                else 
                    render json: @character.errors , status: :unprocessable_entity
                end

            end

            def destroy
                @character.destroy
            end

            def update
                if @character.update(parameters)
                    render json: @character,
                    serializer: CharacterSerializers::StandardCharacterSerializer
                else
                    render json: @character.errors , status: :unprocessable_entity
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
