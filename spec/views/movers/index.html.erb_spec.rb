require 'spec_helper'

describe "movers/index" do
  before(:each) do
    assign(:movers, [
      stub_model(Mover,
        :name => "Name",
        :email => "Email",
        :mobile_phone => "Mobile Phone",
        :latitude => 1.5,
        :longitude => 1.5,
        :gmaps => "",
        :address => "MyText",
        :range => "",
        :availability => "MyText",
        :hourly_rate => "9.99"
      ),
      stub_model(Mover,
        :name => "Name",
        :email => "Email",
        :mobile_phone => "Mobile Phone",
        :latitude => 1.5,
        :longitude => 1.5,
        :gmaps => "",
        :address => "MyText",
        :range => "",
        :availability => "MyText",
        :hourly_rate => "9.99"
      )
    ])
  end

  it "renders a list of movers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mobile Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
