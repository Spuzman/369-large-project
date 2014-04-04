require 'spec_helper'

describe "movements/edit" do
  before(:each) do
    @movement = assign(:movement, stub_model(Movement,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit movement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movement_path(@movement), "post" do
      assert_select "input#movement_name[name=?]", "movement[name]"
      assert_select "textarea#movement_description[name=?]", "movement[description]"
    end
  end
end
