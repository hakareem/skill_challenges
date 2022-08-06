require "todo_organizer"


RSpec.describe TodoOrganizer do
  context "create class instance and empty todo container is given" do
  it "initializes TodoOraganizer" do
    todo = TodoOrganizer.new
    expect(todo).to be_a Object
  end

  it "returns an empty array" do
    todo = TodoOrganizer.new
    expect(todo.list).to eq []
  end
  end

  it "fails when todo given is empty" do
  todo = TodoOrganizer.new
  expect { todo.add("") }.to raise_error "No text was given"
  end

  it "shows current todo" do
  todo = TodoOrganizer.new
  todo.add("Do the work")
  expect(todo.list).to eq ["Do the work"]
  end

  it "adds todo to the list" do
  todo = TodoOrganizer.new
  todo.add("Work")
  todo.add("Run")
  todo.add("Walk")
  expect(todo.list).to eq ["Work","Run", "Walk"]
  end

  it "deletes todo's from the list" do
  todo = TodoOrganizer.new
  todo.add("Football")
  todo.add("Basketball")
  todo.complete("Football")
  expect(todo.list).to eq ["Basketball"]
  end

  it "fails when completing a non existent todo" do
  todo = TodoOrganizer.new
  todo.add("Drink Water")
  expect { todo.complete("Drink Oil")}.to raise_error "todo doesn't exist"
  end

end