require 'track'

describe Track do
  it 'returns true if keyword matches title' do
    my_track = Track.new("I Write Sins Not Tradegies", "Panic! At the Disco")
    expect(my_track.matches?("sins")).to eq true
  end

  it 'returns true if keyword matches artist' do
    my_track = Track.new("I Write Sins Not Tradegies", "Panic! At the Disco")
    expect(my_track.matches?("panic!")).to eq true
  end

  it 'returns false if keyword does not match title or artist' do
    my_track = Track.new("I Write Sins Not Tradegies", "Panic! At the Disco")
    expect(my_track.matches?("Wonderwall")).to eq false
  end
end