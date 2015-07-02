puts "Welcome to Movie Ratings App"

running = true
while running
  print "What you want to do? You can 'Add', 'Update', 'Delete' or 'Show' all movies: "
  choice = gets.chomp

  movies ||= Hash.new

  case choice
  when "Add" then
    print "Movie name: "
    movie = gets.chomp
    if movies[movie.to_sym]
      puts "This movie is already added. You can just Updare or Delete it."
    else
      print "Movie rating: "
      rating = gets.chomp
      movies[movie.to_sym] = rating.to_i
      puts "The movie #{movie} was added succefully!"
    end

  when "Update" then
    print "What movie do you want to Update: "
    movie = gets.chomp
    if movies[movie.to_sym]
      print "New movie rating: "
      rating = gets.chomp
      movies[movie.to_sym] = rating.to_i
      puts "Movie #{movie} updated succefully!"
    else
      puts "This movie is not added."
    end

  when "Delete" then
    if movies[movie_to_sym]
      movies.delete(movie.to_sym)
      puts "Movie deleted succefully!"
    else
      puts "This movie is not added."
    end

  when "Show" then
    movies.each do |m, r|
      puts "#{m}: #{r}"
    end

  when "exit" then running = false
  else puts "Invalid option!"

  end
end
