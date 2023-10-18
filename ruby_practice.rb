# Write a Song class with attributes and reader/writer methods for name, artist, and duration. Then write a method that prints the name, artist, and duration in a single sentence.

class Song
  attr_reader :name, :artist, :duration
  attr_writer :name, :artist, :duration

  def initialize(input_name, input_artist, input_duration)
    @name = input_name
    @artist = input_artist
    @duration = input_duration
  end

  def info
    p "#{name}"
  end
end
