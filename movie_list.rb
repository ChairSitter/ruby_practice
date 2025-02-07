movies = {
    "October Sky": 4,
    "Jurassic Park": 4, 
    Pokemon: 2, 
    Birds: 3
}

puts "Please select from the following options:\n"
puts 'Add'
puts 'Update'
puts 'Display'
puts "Delete\n"

choice = gets.chomp.downcase

case choice
  when 'add'
    puts 'What movie would you like to add?'
    new_movie = gets.chomp
    if movies[new_movie.to_sym].nil?
        puts "What rating would you like to give the movie?\n"
        rating = gets.chomp
        movies[new_movie.to_sym] = rating.to_i
        puts "Added #{new_movie} with a #{rating} point rating!\n"
        movies.each do |movie, rating|
          puts "#{movie} has a #{rating} point rating."
        end
        puts movies
    else
        puts 'Movie already exists in database!'
    end
  when 'update'
    puts 'What movie would you like to update?'
    new_movie = gets.chomp
    if movies[new_movie.to_sym].nil?
        puts 'Movie is not in database!'
    else
        puts 'What rating would you like to give this movie?'
        rating = gets.chomp
        movies[new_movie.to_sym] = rating
        puts "Updated #{new_movie} with #{rating} point rating!\n"
        movies.each do |movie, rating|
          puts "#{movie} has a #{rating} point rating."
        end
    end
  when 'display'
    movies.each do |movie, rating|
        puts "#{movie} has a #{rating} point rating."
    end
  when 'delete'
    puts 'What movie would you like to delete?'
    new_movie = gets.chomp
    if movies[new_movie.to_sym].nil?
        puts 'Movie is not in database!'
    else
        movies.delete(new_movie.to_sym)
        puts "Deleted #{new_movie}!"
    end
    movies.each do |movie, rating|
        puts "#{movie} has a #{rating} point rating."
    end
  else 
    puts "I don't understand that input"
end