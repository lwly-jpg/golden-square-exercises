class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def title
    @title
  end

  def artist
    @artist
  end

  def matches?(keyword)
    @title.downcase.include?(keyword) || 
    @artist.downcase.include?(keyword) ? true : false
  end
end