require 'spec_helper'

describe "Works" do

  subject { page }

  describe "GET /works" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get works_path
      response.status.should be(200)
    end
  end

  describe "create with invalid information" do
    before do
      visit works_path
      click_link "New Work"
    end

    it "should not create a Work" do
      expect { click_button "Create Work" }.not_to change(Work, :count)
    end

    describe "error messages" do
        before { click_button "Create Work" }
        it { should have_content('error') }
        it { should have_content('Name can\'t be blank') }
        it { should have_content('Year completed can\'t be blank') }
        it { should have_content('Materials can\'t be blank') }
        it { should have_content('Year completed must have format: YYYY') }
      end
  end
end
