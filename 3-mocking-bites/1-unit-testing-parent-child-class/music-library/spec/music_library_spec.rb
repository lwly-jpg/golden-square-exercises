require 'music_library'

describe MusicLibrary do
  context 'when no tracks have been added' do
    it 'initializes with empty array' do
      my_library = MusicLibrary.new
      expect(my_library.all).to eq []
    end
  end

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
      test_track_1 = double(:track, title: "I Write Sins Not Tradegies", artist: "Panic! At the Disco")
      test_track_2 = double(:track, title: "Californication", artist: "Red Hot Chilli Peppers")
      test_track_3 = double(:track, title: "Sin City", artist: "AC/DC")
      my_library.add(test_track_1)
      my_library.add(test_track_2)
      my_library.add(test_track_3)
      expect(my_library.search("sin")).to eq [test_track_1, test_track_3]
    end
  end
end