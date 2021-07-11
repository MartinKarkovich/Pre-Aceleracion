module Api
    module V1
        class MoviesController < ApplicationController
            before_action :set_movie, only: [:show,:destroy,:update]
            def index
                @movies = Movie.all
                render json: @movies,
                       each_serializer: MovieSerializers::IndexMovieSerializer
            end

            def show
                render json: @movie,
                       serializer: MovieSerializers::ShowMovieSerializer 
            end

            def create 
                @movie = Movie.new(parameters)
                if @movie.save
                    render json: @movie, status: :created,
                           serializer: MovieSerializers::StandardMovieSerializer 
                else 
                    render json: @movie.errors, status: :unprocessable_entity
                end

            end

            def destroy
                @movie.destroy
            end

            def update
                if @movie.update(parameters)
                    render json: @movie,
                           serializer: MovieSerializers::StandardMovieSerializer 
                else
                    render json: @movie.errors, status: :unprocessable_entity
                end
            end

            private
            
            def set_movie
                @movie = Movie.find(params[:id])
            end

            def parameters
                params.require(:movie).permit(:title,:rating,:image,:date_of_creation,:genre_id)
            end

            
        end
    end
end
