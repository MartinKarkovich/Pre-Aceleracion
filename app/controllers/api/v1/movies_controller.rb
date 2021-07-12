module Api
    module V1
        class MoviesController < ApplicationController
            before_action :authenticate_user!
            before_action :set_movie, only: [:show,:destroy,:update]
            def index
                @movies = fetch_movies
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

            def fetch_movies
                movies = Movie.all
                movies = movies.for_genre_id(genre_id) if genre_id
                movies = movies.for_title(title) if title
                movies = movies.for_order_by_date_of_creation(order_param) if order_param
                movies
            end
            
            ## Filtros
            def genre_id
                params[:genre_id]
            end
            
            def title
                params[:title]
            end

            def order_param
                params[:order]
            end            
            ####################

            def set_movie
                @movie = Movie.find(params[:id])
            end

            def parameters
                params.require(:movie).permit(:title,:rating,:image,:date_of_creation,:genre_id,:order)
            end

            
        end
    end
end
