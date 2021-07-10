genre = Genre.create!(
    :name => 'Action',
    :image => 'image'
)

movie = Movie.create!(
    :genre => genre,
    :title => 'Spiderman',
    :date_of_creation => Date.new(2000,4,20),
    :rating => 4.5
)

Character.create!(
    :image => 'image',
    :name => 'Peter Parker',
    :age => 30,
    :weight => 67.2,
    :history => 'History',
    :movie => movie
)