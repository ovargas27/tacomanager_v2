class TestsController < ApplicationController
  def index
    @vendor = Vendor.new(:name => 'test', :phone => '999-9999')
  end

end
