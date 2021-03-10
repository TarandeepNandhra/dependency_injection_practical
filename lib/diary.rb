require 'entry'

class Diary
  def initialize(diary_entry = Entry.new(title, body))
    @entries = []
    @diary_entry = diary_entry
  end

  def add(entry)
    @entries << entry
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end