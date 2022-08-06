require "task"

RSpec.describe Task do
 it "returns true if the task is marked as complete" do
  task = Task.new("run")
  task.mark_complete
  result = task.complete?
  expect(result).to eq true
 end

  it "fails if task is incomplete" do
  task = Task.new("run")
  expect{task.complete?}.to raise_error "Your task is not completed"
 end
end