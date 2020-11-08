class Song

    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        @@count
    end
   
    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each {|gen| hash[gen]= (hash[gen] || 0) + 1}
        hash 
    end

    def self.artist_count
        hash = {}
        @@artists.each {|gen| hash[gen]= (hash[gen] || 0) + 1}
        hash 
    end

end

# def self.genre_count
#     hash = {}
#     @@genres.each do |genre|
#         hash[genre] ||= 0
#         hash[genre] += 1
#     end
#     hash
# end

