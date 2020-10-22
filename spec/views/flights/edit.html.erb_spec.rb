require 'rails_helper'

RSpec.describe "flights/edit", type: :view do
  before(:each) do
    @user =  User.create!(
      email: "donkey@donkey.com",
      password: "1234"
    )

    @flight = assign(:flight, Flight.create!(
      location: "MyString",
      duration: 1,
      user: @user
    ))
  end

  it "renders the edit flight form" do
    render

    assert_select "form[action=?][method=?]", flight_path(@flight), "post" do

      assert_select "input[name=?]", "flight[location]"

      assert_select "input[name=?]", "flight[duration]"

      assert_select "input[name=?]", "flight[user_id]"
    end
  end
end
