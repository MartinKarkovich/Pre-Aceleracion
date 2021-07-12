require 'faker'
# Genres
5.times do |i|
    Genre.create!(
        :name => "name",
        :image => "image"
    )

end


# Movies
5.times do |i|
    Movie.create!(
        :image => "image",
        :title => Faker::Movie.unique.title,
        :rating => rand(1..5).to_f,
        :date_of_creation => Date.today,
        :genre_id => i+1
    )

end


# Characters
5.times do |i|
    3.times do |j| 
        Character.create!(
            :image => "image",
            :name => Faker::Name.unique.name ,
            :age => rand(6..80),
            :weight => rand(50..150).to_f ,
            :movie_id => i+1,
            :history => Faker::Lorem.paragraph
        )  

    end
end

# private

# LIST_OF_GENRES = ["Action","Comedy","Drama","Fantasy","Horror","Mystery","Romance","Thriller"]

# def choose_random_genre_name
#     LIST_OF_GENRES.delete_at(rand(LIST_OF_GENRES.length))   
# end

# def random_date_in_year(year)
#     return rand(Date.civil(year.min, 1, 1)..Date.civil(year.max, 12, 31)) if year.kind_of?(Range)
#     rand(Date.civil(year, 1, 1)..Date.civil(year, 12, 31))
#   end



