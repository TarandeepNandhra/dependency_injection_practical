require 'note'

describe Note do
  describe 'display' do
    it 'displays the saved note' do
      formatter_double = double(:formatter, format: "Title: Hi\nthere")
      note = Note.new("Hi", "there", formatter_double)
      expect(note.display).to eq("Title: Hi\nthere")
    end
  end
end