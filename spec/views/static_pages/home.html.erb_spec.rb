require 'spec_helper'

describe "static_pages/home.html.erb" do
  subject { page }

  before { visit root_path }

  it "should have text 'Welcome'" do
    should have_content('Welcome')
  end

  it "should have link to Movements" do 
    should have_link('Movements', href: movements_path)
  end

  it "should have link to Artists" do 
    should have_link('Artists', href: artists_path)
  end

  #it "should have link to Works" do 
  #  should have_link('Works', href: works_path)
  #end
end
