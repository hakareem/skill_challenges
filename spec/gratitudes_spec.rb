require "gratitudes"


RSpec.describe Gratitudes do
 it "adds and provides a list of gratitudes" do
  gratitude = Gratitudes.new
  gratitude.add("happiness")
  expect(gratitude.format).to eq "Be grateful for: happiness"
 end
end