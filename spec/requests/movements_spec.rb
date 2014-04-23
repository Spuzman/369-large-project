require 'spec_helper'

describe "Movements" do

  subject { page }

  describe "GET /movements" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get movements_path
      response.status.should be(200)
    end
  end

  describe "create with invalid information" do
    before do
      visit movements_path
      click_link "New Movement"
    end

    it "should not create a Movement" do
      expect { click_button "Create Movement" }.not_to change(Movement, :count)
    end

    describe "error messages" do
        before { click_button "Create Movement" }
        it { should have_content('error') }
        it { should have_content('Name can\'t be blank') }
        it { should have_content('Description can\'t be blank') }
      end
  end
end
