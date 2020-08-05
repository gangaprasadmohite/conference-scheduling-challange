require './talks.rb'

class ConferenceSchedule 

  def initialize
    @tracks = Array.new
    @session = nil
  end

  def publishTracks
    puts "\n"
    @tracks.each { |track| puts track.displayTrack}
  end

  def createSchedule
    talks_list = TALKSLIST::TALKS
    @session = Session.new talks_list
    puts @session
  end

  def createTrack track_number
    new_track = Track.new track_number
    trackSessions(new_track)
  end

  def trackSessions new_track
    morning_session_track = @session.morningSessions(new_track)
    afternoon_session_track = @session.afternoonSessions(new_track)
    @tracks << new_track
  end
end

conference = ConferenceSchedule.new
conference.createSchedule
conference.createTrack(1)
conference.createTrack(2)
conference.publishTracks