require 'music_library'
require 'track'

describe 'integration tests' do
  context 'when tracks are added' do
    it 'returns list of tracks' do
      my_library = MusicLibrary.new
      test_track_1 = double(:track, title: "I Write Sins Not Tradegies", artist: "Panic! At the Disco")
      test_track_2 = double(:track, title: "Californication", artist: "Red Hot Chilli Peppers")
      my_library.add(test_track_1)
      my_library.add(test_track_2)
      expect(my_library.all).to eq [test_track_1, test_track_2]
    end

    it 'returns list of tracks that match keyword' do
      my_library = MusicLibrary.new
      test_track_1 = Track.new("I Write Sins Not Tradegies", "Panic! At the Disco")
      test_track_2 = Track.new("Californication","Red Hot Chilli Peppers")
      test_track_3 = Track.new("Sin City", "AC/DC")
      my_library.add(test_track_1)
      my_library.add(test_track_2)
      my_library.add(test_track_3)
      expect(my_library.search("sin")).to eq [test_track_1, test_track_3]
    end

    # it 'returns empty list of tracks that match keyword' do
    #   my_library = MusicLibrary.new
    #   test_track_1 = Track.new("I Write Sins Not Tradegies", "Panic! At the Disco")
    #   test_track_2 = Track.new("Californication","Red Hot Chilli Peppers")
    #   test_track_3 = Track.new("Sin City", "AC/DC")
    #   my_library.add(test_track_1)
    #   my_library.add(test_track_2)
    #   my_library.add(test_track_3)
    #   expect(my_library.search("tragic")).to eq "No tracks matching that keyword found."
    # end
  end
end