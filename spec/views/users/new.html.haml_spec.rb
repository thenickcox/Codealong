require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :username => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :expertise => "MyString",
      :bio => "MyText"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_username", :name => "user[username]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_password_digest", :name => "user[password_digest]"
      assert_select "input#user_expertise", :name => "user[expertise]"
      assert_select "textarea#user_bio", :name => "user[bio]"
    end
  end
end
