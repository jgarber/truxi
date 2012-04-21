require 'spec_helper'

describe "move_requests/new" do
  before(:each) do
    assign(:move_request, stub_model(MoveRequest,
      :destination_id => 1,
      :origin_id => 1,
      :time_frame => "MyString",
      :movers_needed => 1,
      :truck_size => "MyString"
    ).as_new_record)
  end

  it "renders new move_request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => move_requests_path, :method => "post" do
      assert_select "input#move_request_destination_id", :name => "move_request[destination_id]"
      assert_select "input#move_request_origin_id", :name => "move_request[origin_id]"
      assert_select "input#move_request_time_frame", :name => "move_request[time_frame]"
      assert_select "input#move_request_movers_needed", :name => "move_request[movers_needed]"
      assert_select "input#move_request_truck_size", :name => "move_request[truck_size]"
    end
  end
end
