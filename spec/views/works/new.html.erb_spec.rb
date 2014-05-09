require 'spec_helper'

describe "works/new" do
  before(:each) do
    assign(:work, stub_model(Work,
      :name => "MyString",
      :artist_id => 1,
      :materials => "MyText",
      :image_url => "MyString"
    ).as_new_record)
  end

  it "renders new work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", works_path, "post" do
      assert_select "input#work_name[name=?]", "work[name]"
      assert_select "select#work_artist_id[name=?]", "work[artist_id]"
      assert_select "textarea#work_materials[name=?]", "work[materials]"
      assert_select "input#work_image_url[name=?]", "work[image_url]"
    end
  end
end
