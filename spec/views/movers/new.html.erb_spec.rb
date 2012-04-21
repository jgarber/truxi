require 'spec_helper'

describe "movers/new" do
  before(:each) do
    assign(:mover, stub_model(Mover,
      :name => "MyString",
      :email => "MyString",
      :mobile_phone => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :gmaps => "",
      :address => "MyText",
      :range => "",
      :availability => "MyText",
      :hourly_rate => "9.99"
    ).as_new_record)
  end

  it "renders new mover form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => movers_path, :method => "post" do
      assert_select "input#mover_name", :name => "mover[name]"
      assert_select "input#mover_email", :name => "mover[email]"
      assert_select "input#mover_mobile_phone", :name => "mover[mobile_phone]"
      assert_select "input#mover_latitude", :name => "mover[latitude]"
      assert_select "input#mover_longitude", :name => "mover[longitude]"
      assert_select "input#mover_gmaps", :name => "mover[gmaps]"
      assert_select "textarea#mover_address", :name => "mover[address]"
      assert_select "input#mover_range", :name => "mover[range]"
      assert_select "textarea#mover_availability", :name => "mover[availability]"
      assert_select "input#mover_hourly_rate", :name => "mover[hourly_rate]"
    end
  end
end
