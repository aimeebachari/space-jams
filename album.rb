class Album
  attr_reader :id, :album_title, :artists, :duration_min, :summary
  attr_accessor :tracks

  def initialize(id, album_title, artists)
    @id, @album_title, @artists = id, album_title, artists
    @tracks = []
  end

  def duration_min
    total_duration_ms = 0
    @tracks.each do |track|
      total_duration_ms += track.duration_ms.to_f
    end
    total_duration_ms / 60000
  end

  def summary
# iterate through tracks and save to a variable to print the multiline string
    album_summary = "\nName: #{@album_title}\n"
    album_summary += "Artist(s): #{@artists}\n"
    album_summary += "Duration (min.): #{duration_min.round(2)}\n"
    album_summary += "Tracks:\n"
    @tracks.each do |track|
      album_summary += "-#{track.title}\n"
    end
    album_summary
  end

end
