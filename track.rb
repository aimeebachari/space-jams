class Track
  attr_reader :album_id, :id, :title, :track_number, :duration_ms

  def initialize(album_id, id, title, track_number, duration_ms)
    @album_id, @id, @title, @track_number, @duration_ms = album_id, id, title,
      track_number, duration_ms
  end
end
