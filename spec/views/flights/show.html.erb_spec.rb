require 'rails_helper'

RSpec.describe "flights/show", type: :view do
  before(:each) do
        @user =  User.create!(
      email: "donkey@donkey.com",
      password: "1234"
    )

    @flight = assign(:flight, Flight.create!(
      location: "Location",
      duration: 2,
      user: @user
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
