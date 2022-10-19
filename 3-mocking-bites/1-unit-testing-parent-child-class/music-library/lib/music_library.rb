class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) 
    @tracks << track
  end

  def all
    @tracks
  end
  
  def search(keyword)
    return @tracks.filter { |track| track.title.downcase.include?(keyword) }
  end
end

