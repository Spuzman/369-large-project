require 'spec_helper'

describe "works/edit" do
  before(:each) do
    @work = assign(:work, stub_model(Work,
      :name => "MyString",
      :artist_id => 1,
      :materials => "MyText",
      :image_url => "MyString"
    ))
  end

  it "renders the edit work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", work_path(@work), "post" do
      assert_select "input#work_name[name=?]", "work[name]"
      assert_select "select#work_artist_id[name=?]", "work[artist_id]"
      assert_select "textarea#work_materials[name=?]", "work[materials]"
      assert_select "input#work_image_url[name=?]", "work[image_url]"
    end
  end
end
