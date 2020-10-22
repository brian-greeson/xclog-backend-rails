require 'rails_helper'

RSpec.describe "flights/index", type: :view do
  before(:each) do
    @user =  User.create!(
      email: "donkey@donkey.com",
      password: "1234"
    )

    assign(:flights, [
      Flight.create!(
        location: "Location",
        duration: 2,
        user: @user
      ),
      Flight.create!(
        location: "Location",
        duration: 2,
        user: @user
      )
    ])
  end

  it "renders a list of flights" do
    render
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
