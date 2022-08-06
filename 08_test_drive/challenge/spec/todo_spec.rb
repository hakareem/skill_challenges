require "todo"


RSpec.describe Todo do
  context "class need to be initialized correctly" do
  it "requires an input for a todo" do
   expect {todo = Todo.new("")}.to raise_error "Enter a valid todo"
  end
 end

  describe "#task" do
  it "returns the task as a string" do
   todo = Todo.new("todo")
   result = todo.task
   expect(result).to eq "todo"
  end
 end

 describe "mark_done!" do
  it "marks the todo as done" do
   testTodo = Todo.new("do it")
   testTodo.mark_done!
   expect(testTodo.task).to eq "do it"
  end
 end

 describe "done?" do
  it "returns true if the task is complete" do
   testTodo = Todo.new("run")
   test2 = Todo.new("b")
   test3 = Todo.new("a")
   testTodo.mark_done!
   test2.mark_done!
   test3.mark_done!
   expect(testTodo.done?).to eq true
   expect(test2.done?).to eq true
   expect(test3.done?).to eq true
  end
 end

  describe "done?" do
  it "returns false if the task is incomplete" do
   testTodo = Todo.new("run")
   testTwo = Todo.new("walk")
   test3 = Todo.new("walk")
   expect(testTodo.done?).to eq false
   expect(testTwo.done?).to eq false
   expect(test3.done?).to eq false
  end
 end
end