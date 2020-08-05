require './talks.rb'

class ConferenceSchedule 

  def initialize
    @tracks = []
  end

  def publishTracks
  end

  def createSchedule
    talks_list = TALKSLIST::TALKS
    puts talks_list
    
  end
end

conference = ConferenceSchedule.new
conference.createSchedule