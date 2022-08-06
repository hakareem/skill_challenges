require "contact"

RSpec.describe Contact do
 it "adds a contact" do
  contact = Contact.new("H", "07126742783")
  expect(contact.name).to eq "H"
  expect(contact.number).to eq "07126742783"
 end

 it "fails if concat number is not 11 digits" do
  expect {Contact.new("H","07363616")}.to raise_error "Please check the phone number you are trying to add is correct"
 end

  it "fails if concat number does not start with zero" do
  expect {Contact.new("H","7127363616")}.to raise_error "Please check the phone number you are trying to add is correct"
 end
end