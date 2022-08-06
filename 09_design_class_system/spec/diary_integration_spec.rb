require "diary"
require "diary_entry"
require "contact"
require "task"


RSpec.describe "integration" do
 context "when diary entries have been added" do
  it "returns list of diary entries" do
   diary = Diary.new
   entry1 = DiaryEntry.new("Aaron", "1 2 3 4 5")
   entry2 = DiaryEntry.new("Bohely", "1 2 3 4 5 6")
   entry3 = DiaryEntry.new("Cam", "1 2 3")
   diary.add_entry(entry1)
   diary.add_entry(entry2)
   diary.add_entry(entry3)
   expect(diary.all_entries).to eq ["Aaron : 1 2 3 4 5", "Bohely : 1 2 3 4 5 6", "Cam : 1 2 3"]
  end
 
  it "returns longest readable entry in given time and reading speed" do
   diary = Diary.new
   entry1 = DiaryEntry.new("Aaron", "1 2 3 4 5")
   entry2 = DiaryEntry.new("Bohley", "1 2 3 4 5 6")
   entry3 = DiaryEntry.new("Cam", "1 2 3")
   diary.add_entry(entry1)
   diary.add_entry(entry2)
   diary.add_entry(entry3)
   expect(diary.longest_entry_read(2,3)).to eq "You can read an entry from Bohley" 
  end

  it "returns an error if no entries are readbale in the time given" do
   diary = Diary.new
   entry1 = DiaryEntry.new("Aaron", "1 2 3 4 5")
   entry2 = DiaryEntry.new("Bohley", "1 2 3 4 5 6")
   entry3 = DiaryEntry.new("Cam", "1 2 3")
   diary.add_entry(entry1)
   diary.add_entry(entry2)
   diary.add_entry(entry3)
   expect{diary.longest_entry_read(1,1)}.to raise_error "You are unable to read right now"
  end
 end

 context "when tasks have been added" do
  it "returns all tasks" do
   diary = Diary.new
   task1 = Task.new("Run First")
   task2 = Task.new("Walk Second")
   task3 = Task.new("Stop Third")
   diary.add_task(task1)
   diary.add_task(task2)
   diary.add_task(task3)
   expect(diary.all_tasks).to eq ["Run First", "Walk Second", "Stop Third"]
  end

  it "returns all completed tasks" do
   diary = Diary.new
   task1 = Task.new("Run")
   task2 = Task.new("Walk")
   task3 = Task.new("Stop")
   diary.add_task(task1)
   diary.add_task(task2)
   diary.add_task(task3)
   task2.mark_complete
   expect(diary.complete_tasks).to eq ["Walk"]
  end

  it "returns all incompleted tasks" do
   diary = Diary.new
   task1 = Task.new("Run")
   task2 = Task.new("Walk")
   task3 = Task.new("Stop")
   diary.add_task(task1)
   diary.add_task(task2)
   diary.add_task(task3)
   task2.mark_complete
   expect(diary.incomplete_tasks).to eq ["Run","Stop"]
  end
 end

 context "when contacts have been added" do
  it "returns all contacts" do
   diary = Diary.new
   contact1 = Contact.new("Aaron", "07123456789")
   contact2 = Contact.new("Bohley", "07123456789")
   contact3 = Contact.new("Cam", "07123456789")
   diary.add_contact(contact1)
   diary.add_contact(contact2)
   diary.add_contact(contact3)
   expect(diary.all_contacts).to eq ["Aaron : 07123456789", "Bohley : 07123456789", "Cam : 07123456789"]
  end

  it "returns all contacts except invalid ones" do
   diary = Diary.new
   contact1 = Contact.new("Aaron", "07123456789")
   expect{Contact.new("Bohley", "07456789")}.to raise_error "Please check the phone number you are trying to add is correct"
   contact2 = Contact.new("Cam", "07123456789")
   diary.add_contact(contact1)
   diary.add_contact(contact2)
   expect(diary.all_contacts).to eq ["Aaron : 07123456789", "Cam : 07123456789"]
  end
 end
end