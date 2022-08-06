require "task_tracker"

RSpec.describe "task_tracker method" do
 context "given an integer, the code fails" do
  it "fails" do
   expect{task_tracker(1)}.to raise_error "error"
  end
 end

 context "given an empty string the code fails" do
 it "fails" do
  expect{task_tracker()}.to raise_error "error"
  end
 end

 context "given a float integer the code fails" do
 it "fails" do
  expect{task_tracker(1.0)}.to raise_error "error"
  end
 end

 context "given a todo, returns true" do
 it "returns true" do
  result = task_tracker("#TODO, go running") 
  expect(result).to eq true
  end
 end
end 