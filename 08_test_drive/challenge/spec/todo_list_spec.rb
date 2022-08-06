require "todo_list"

RSpec.describe TodoList do
  context "initially" do
  it "returns an empty list" do
    todo = TodoList.new
    expect(todo.incomplete).to eq []
    expect(todo.complete).to eq []
  end

  it "returns an error when marking all tasks as done" do
    list = TodoList.new
    expect {list.give_up!}.to raise_error "no tasks added"
  end
  end

  context "Given new todos - adds them to the list" do
    it "all new todos are marked as incomplete" do
    testTodo = TodoList.new
    test1 = Todo.new("run")
    test2 = Todo.new("walk")
    test3 = Todo.new("crawl")
    testTodo.add(test1)
    testTodo.add(test2)
    testTodo.add(test3)
    expect(testTodo.incomplete).to eq [test1,test2,test3]
    end
  end


  context "when a few tasks are done" do
    it "returns true if tasks are done" do
    testTodo = TodoList.new
    test1 = Todo.new("run")
    test2 = Todo.new("walk")
    test3 = Todo.new("crawl")
    test1.mark_done!
    test2.mark_done!
    test3.mark_done!
    expect(test1.done?).to eq true
    expect(test2.done?).to eq true
    expect(test3.done?).to eq true
    end

    it "returns false if tasks are done" do
    testTodo = TodoList.new
    test1 = Todo.new("run")
    test2 = Todo.new("walk")
    test3 = Todo.new("crawl")
    expect(test1.done?).to eq false
    expect(test2.done?).to eq false
    expect(test3.done?).to eq false
    end
  end
end