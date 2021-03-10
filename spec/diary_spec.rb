require 'diary'

describe Diary do
  describe 'add' do
    it 'adds an entry object to entries' do
      entry = double(title: "hi", body: "there")
      diary = Diary.new(entry)
      diary.add(entry)
      expect(diary.index).to eq("hi")
    end
  end
end