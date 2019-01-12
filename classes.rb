# Understanding class and static variable
class MyClass
    @@static_variable = 0

    def awesome_function
        puts "My Awesome Function"
    end

    def increment_static_variable
        @@static_variable+= 1
        return @@static_variable
    end
end

# Understanding about `initiatlize` method and attr_accessor
class Movie
    @@no_of_movies = 0
    
    attr_accessor :movie_name
    attr_accessor :movie_id
    attr_accessor :movie_release_date

    def initialize(id, name, release_date)
        @movie_id = id
        @movie_name = name
        @movie_release_date = release_date
        @@no_of_movies+= 1
    end

    def no_of_movies
        return @@no_of_movies
    end
end


# Its about access variables in methods (puts)
class AwesomeMovie

    @@no_of_movies = 0

    def initialize(id, name, release_date)
        @movie_id = id
        @movie_name = name
        @movie_release_date = release_date
        @@no_of_movies+= 1
    end

    def display_no_of_movies
        puts "No of movies created so far #@@no_of_movies"
    end
end

# Creating objects
awesome_wanted_movie = AwesomeMovie.new(1, 'Wanted', 2010)
awesome_wanted_movie.display_no_of_movies

wanted_movie = Movie.new(1, 'Wanted', 2010)
matrix_movie = Movie.new(2, 'Matrix Reloaded', 2013)

puts wanted_movie.movie_name
puts wanted_movie.movie_id
puts wanted_movie.movie_release_date
puts wanted_movie.no_of_movies

sample = MyClass.new
sample.awesome_function
puts sample.increment_static_variable
puts sample.increment_static_variable
