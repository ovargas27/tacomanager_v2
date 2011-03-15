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
      assigns(:vendor).should_not be_nil
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
  end

end
