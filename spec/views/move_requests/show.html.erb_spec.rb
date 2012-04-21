require 'spec_helper'

describe "move_requests/show" do
  before(:each) do
    @move_request = assign(:move_request, stub_model(MoveRequest,
      :destination_id => 1,
      :origin_id => 1,
      :time_frame => "Time Frame",
      :movers_needed => 1,
      :truck_size => "Truck Size"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Time Frame/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Truck Size/)
  end
end
