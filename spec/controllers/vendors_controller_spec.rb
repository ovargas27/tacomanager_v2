require 'spec_helper'

describe VendorsController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
    it "should set vendors list" do
      get 'index'
      assigns(:vendors).should_not be_nil
    end
    it "should set an default new Vendor" do
      vendor = Vendor.new()
      Vendor.should_receive(:new).and_return(vendor)
      get 'index'
      assigns(:new_vendor).should_not be_nil
    end
  end
end
