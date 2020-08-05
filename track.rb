class Track

  attr_reader :track_number
  def initialize track_number
    @sessions = []
    @track_number = track_number
  end

  def addSession session
    @sessions << session
  end

  def displayTrack
    new_track = "\t\tTRACK #{track_number}\n\n"
    @sessions.each { |session| new_track += "#{session}\n\n" }
    return new_track
  end

end