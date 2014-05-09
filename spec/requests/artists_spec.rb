require 'spec_helper'

describe "Artists" do

  subject { page }

  describe "GET /artists" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get artists_path
      response.status.should be(200)
    end
  end

  describe "create with invalid information" do
    before do
      visit artists_path
      click_link "New Artist"
    end

    it "should not create an Artist" do
      expect { click_button "Create Artist" }.not_to change(Artist, :count)
    end

    describe "error messages" do
        before { click_button "Create Artist" }
        it { should have_content('error') }
        it { should have_content('Name can\'t be blank') }
        it { should have_content('Born can\'t be blank') }
        it { should have_content('Died can\'t be blank') }
        it { should have_content('Born must have format: YYYY-MM-DD') }
        it { should have_content('Died must have format: YYYY-MM-DD') }
      end
  end
end
