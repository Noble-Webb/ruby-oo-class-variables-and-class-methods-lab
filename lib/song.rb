class Song #define a Song class
    attr_accessor :name, :artist, :genre #accessor for initialized attributes

    @@count = 0 #class variable that keeps track of the number of new songs created by Song class
    @@artists = [] #class variable to hold all artists in an array
    @@genres = [] #class variable to hold all genres in an array

    def initialize(name, artist, genre) #initialize each song with a name, artist, and genre
        @name = name #take name
        @artist = artist #take artist
        @genre = genre #take genre
        @@count += 1 #increment the count class by one each time a song is made
        @@artists << artist #shovels the artist name into the empty 'artist' array
        @@genres << genre #shovels the songs genre into the empty 'genre' array
    end

    def self.count #calls count method
       @@count
    end
    
    def self.artists #calls the artists empty array 
       @@artists.uniq #artist array that doesn't contain any repeats 
    end

    def self.genres #calls the genres empty array
        @@genres.uniq #artists array that doesn't contain any repeats 
    end

    def self.genre_count #returns a hash in which the keys are genres and have the number of times the genres are seen
        genre_count = {} #creates an empty hash to be called later
        @@genres.each do |genre| #iterates through the genres class array and sets the genre as a key
            if genre_count[genre] #if there is a genre
                genre_count[genre] += 1 #increment plus 1
            else
                genre_count[genre] = 1 #equals 
            end
        end
        genre_count #calls method
    end

    def self.artist_count #same as above, replace  genres with artists
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1 
            end
        end
        artist_count
    end
end
