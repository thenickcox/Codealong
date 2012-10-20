require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :username => "Username",
        :email => "Email",
        :password_digest => "Password Digest",
        :expertise => "Expertise",
        :bio => "MyText"
      ),
      stub_model(User,
        :name => "Name",
        :username => "Username",
        :email => "Email",
        :password_digest => "Password Digest",
        :expertise => "Expertise",
        :bio => "MyText"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Expertise".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
