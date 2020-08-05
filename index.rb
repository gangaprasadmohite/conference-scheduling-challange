require './talks.rb'

class ConferenceSchedule 

  def initialize
    @tracks = Array.new
    @session = nil
  end

  def publishTracks
  end

  def createSchedule
    talks_list = TALKSLIST::TALKS
    @session = Session.new talks_list
    puts @session
    
  end
end

conference = ConferenceSchedule.new
conference.createSchedule