# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

class MusicTracker

def initialize
  @tracks = [] 
end

def add_track(track)
  # adds a track to the track list
end

def display_tracks
  # displays list of tracks stored
  @tracks
end

end


## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._

## returns empty list of tracks when no tracks have been added
my_tracks = MusicTracker.new
my_tracks.display_tracks => []

## returns one track when a single track has been added
my_tracks = MusicTracker.new
my_tracks.add_track("I Write Sins Not Tradegies")
my_tracks.display_tracks => ["I Write Sins Not Tradegies"]

## returns multiple tracks when a multiple tracks have been added
my_tracks = MusicTracker.new
my_tracks.add_track("I Write Sins Not Tradegies")
my_tracks.add_track("What's My Age Again")
my_tracks.display_tracks => ["I Write Sins Not Tradegies", "What's My Age Again"]

## returns error message when blank string is passed
my_tracks = MusicTracker.new
my_tracks.add_track("") => "Nothing inputted. Track must be at least one letter."


_Encode each example as a test. You can add to the above list as you go._
