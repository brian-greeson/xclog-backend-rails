require 'rails_helper'

RSpec.describe "flights/new", type: :view do
  before(:each) do
        @user =  User.create!(
      email: "donkey@donkey.com",
      password: "1234"
    )

    assign(:flight, Flight.new(
      location: "MyString",
      duration: 1,
      user: @user
    ))
  end

  it "renders new flight form" do
    render

    assert_select "form[action=?][method=?]", flights_path, "post" do

      assert_select "input[name=?]", "flight[location]"

      assert_select "input[name=?]", "flight[duration]"

      assert_select "input[name=?]", "flight[user_id]"
    end
  end
end
