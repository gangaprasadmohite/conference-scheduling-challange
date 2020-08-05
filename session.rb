class Session
  
  attr_reader :talks_list

  def initialize talks_list
    @talks_list = talks_list
    @remaining_minutes = nil
    @track = nil 
  end

  def morningSessions
  end

  def afternoonSessions
  end  

  def addTalkToTrack

  end
  
end  