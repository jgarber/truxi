require 'spec_helper'

describe "move_requests/index" do
  before(:each) do
    assign(:move_requests, [
      stub_model(MoveRequest,
        :destination_id => 1,
        :origin_id => 1,
        :time_frame => "Time Frame",
        :movers_needed => 1,
        :truck_size => "Truck Size"
      ),
      stub_model(MoveRequest,
        :destination_id => 1,
        :origin_id => 1,
        :time_frame => "Time Frame",
        :movers_needed => 1,
        :truck_size => "Truck Size"
      )
    ])
  end

  it "renders a list of move_requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Time Frame".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Truck Size".to_s, :count => 2
  end
end
