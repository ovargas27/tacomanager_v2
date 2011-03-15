require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Manage Vendors Feature", %q{
  In order to manage vendors
  As an User
  I want to Create, Read, Update and Delete vendors
} do

  scenario "index" do
    vendor2 = Vendor.make!(:name => 'beta')
    visit vendors_index
    page.should have_content(vendor2.name)
  end
end
