#an album class that stores an array of songs
class Album
 include Enumerable
 #an array of objects of songs. Each song is a string.
 attr_reader :songs

#sets a new album instance with an empty songs array.
 def initialize
   @songs = []
 end

#add a song to the Album object's song array.
 def add_songs(song)
   songs << song
 end

#Yield each in song in the album to a block.
 def each
   songs.each do |song|
     yield song
   end
 end
end

thriller = Album.new
thriller.add_songs("Thriller")
thriller.add_songs("Billie Jean")
puts thriller.songs
