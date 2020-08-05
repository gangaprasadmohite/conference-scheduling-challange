class Session
  attr_reader :talks_list

  def initialize talks_list
    @talks_list = talks_list
    @new_talk_start_time = nil
    @remaining_minutes = nil
    @current_track = nil 
    @year, @month, @day = 2020, 8, 5
  end

  def timeRemaining start_time, end_time, track
    @remaining_minutes = (end_time.to_i - start_time.to_i) / 60
    @new_talk_start_time = start_time
    @current_track = track
    addTalkToTrack
  end

  def morningSessions track
    start_time = Time.local(@year, @month, @day, 9)
    end_time = Time.local(@year, @month, @day, 12)
    timeRemaining(start_time, end_time, track)
  end
  
  def afternoonSessions track
    start_time = Time.local(@year, @month, @day,13)
    end_time = Time.local(@year, @month, @day, 17)
    timeRemaining(start_time, end_time, track)
  end  

  def addTalkToTrack
    @talks_list.each do |talk, duration|
      if duration  <= @remaining_minutes
        @current_track.addSession("#{@new_talk_start_time.strftime("%I:%M %p")} #{talk}")
        @new_talk_start_time += (duration*60)
        @remaining_minutes -= duration
        @talks_list.delete(talk)
      end
    end
  end
end  