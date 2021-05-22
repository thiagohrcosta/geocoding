require 'rails_helper'

RSpec.describe Flat, type: :model do
  it "Create a valid flat" do
    flat = Flat.new(
      name: "Paris Flat",
      address: "80  Square de la Tour",
      latitude: "14.1358",
      longitude: "2.2457725",
      photo: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=752&q=80"
      )

    expect(flat.name).to eql "Paris Flat"
    expect(flat.address).to eql "80  Square de la Tour"
    expect(flat.latitude).to eql 14.1358
    expect(flat.longitude).to eql 2.2457725
    expect(flat.photo).to eql "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=752&q=80"
  end

  it "Flat 2 is also valid" do
    flat2 = Flat.new(
      name: "Paris",
      address: "La Tour",
      latitude: "23.33333",
      longitude: "5.3333333",
      photo: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=752&q=80"
    )

    expect(flat2.latitude).to eql 23.33333
  end

  it "Flat 3 is not valid" do
    flat3 = Flat.new(
      name: "",
      address: "",
      latitude: "",
      longitude: "",
      photo: ""
    )

    expect(flat3).to_not be_valid
  end

  it "Flat 4 is not valid" do
    flat4 = Flat.new(
      name: "Le Tour",
      address: "80 Street",
      latitude: "",
      longitude: "",
      photo: ""
    )
    expect(flat4).to_not be_valid
  end
end
