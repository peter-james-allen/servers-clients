class NoteList

  attr_reader :notes

  def initialize
    @notes = ['', "Notes:"]
  end

  def add(note)
    @notes << note
  end

end