=begin
This is regarding understanding 5 types of variables in Ruby
=end

# Global Variable
$global_variable = 9

class MyClass
    def print_global_variable
        puts "global_variable #$global_variable"
    end
    def increment_global_variable
        $global_variable+= 1
    end
end


class MyAwesomeClass
    def print_global_variable
        puts "global_variable #$global_variable"
    end
    def decrement_global_variable
        $global_variable-= 1
    end
end

my_class_object = MyClass.new
my_awesome_class_object = MyAwesomeClass.new

my_class_object.print_global_variable
puts my_class_object.increment_global_variable
my_awesome_class_object.print_global_variable
puts my_awesome_class_object.decrement_global_variable
my_class_object.print_global_variable


# Instance Variables
class Movie
    def initialize(id, name, release_date)
        @movie_id = id
        @movie_name = name
        @movie_release_date = release_date
    end
    def display_movie_details
        puts "Movie details #@movie_id - #@movie_name rleased on #@movie_release_date"
    end
end

wanted_movie = Movie.new(1, 'wanted', 2010)
wanted_movie.display_movie_details


# Class Variables & Local variable
class Icon
    @@no_of_icons = 0
    def initialize(id, name, svg)
        @icon_id = id
        @icon_name = name
        @icon_svg = svg
        @@no_of_icons+= 1
    end
    def print_no_of_icons
        puts "No of icons #@@no_of_icons"
    end
    def add_class_name(name)
        _prefix = 'icon-' # _prefix is local variable
        return _prefix + name
    end
end

home_icon = Icon.new(1, 'home', '<svg>HOME</svg')
download_icon = Icon.new(2, 'download', '<svg>Download</svg>')
puts home_icon.add_class_name('home')
home_icon.print_no_of_icons
    

# Constants
class Theme
    THEME_NAME = 'ant-d'
    THEME_VERSION = 0.1
    def show_meta
        puts self.THEME_NAME
        puts "Theme Name: #{THEME_NAME}"
        puts "Theme Version: #{THEME_VERSION}"
    end
    # The following will be an error
    # Because you can't assign to the const name
    # def edit_theme_name
    #    THEME_NAME = 'antd-modified'
    # end
end

antd_theme = Theme.new
antd_theme.show_meta

