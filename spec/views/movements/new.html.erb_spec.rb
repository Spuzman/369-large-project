require 'spec_helper'

describe "movements/new" do
  before(:each) do
    assign(:movement, stub_model(Movement,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new movement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movements_path, "post" do
      assert_select "input#movement_name[name=?]", "movement[name]"
      assert_select "textarea#movement_description[name=?]", "movement[description]"
    end
  end
end
