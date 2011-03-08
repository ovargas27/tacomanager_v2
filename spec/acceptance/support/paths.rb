module NavigationHelpers
  # Put helper methods related to the paths in your application here.

  def homepage
    "/"
  end

  def new_vendor
    "/vendors/new"
  end

  def vendors_index
    "/vendors"
  end
end

RSpec.configuration.include NavigationHelpers, :type => :acceptance
