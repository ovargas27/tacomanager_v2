require 'spec_helper'

describe VendorsController do
  before do
    @vendor = Vendor.make!
  end

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

  describe "post 'Create'" do
    it "should create a vendor and a new vendor" do
      params = {'name' => 'vendor1'}
      vendor = Vendor.make!(params)
      Vendor.should_receive(:new).and_return(true)
      Vendor.should_receive(:new).with(params).and_return(vendor)
      post :create, :vendor => params, :format => :js
    end
  end

  describe "put 'Update'" do
    it "should update the vendor" do
      Vendor.should_receive(:find).with(@vendor.id).and_return(@vendor)
      @vendor.should_receive(:update_attributes).with({'phone' => '(312) 123-4567'}).and_return(true)
      put :update, :id => @vendor.id, :vendor => {'phone' => '(312) 123-4567'}, :format => :js
    end
    it "should return the modified vendor" do
      put :update, :id => @vendor.id, :vendor => {'phone' => '(312) 123-4567'}, :format => :js
      assigns[:vendor].should_not be_nil
      assigns[:vendor].phone.should == '(312) 123-4567'
    end
  end

  describe "delete 'destroy'" do
    it "should destroy the vendor" do
      Vendor.should_receive(:find).with(@vendor.id).and_return(@vendor)
      @vendor.should_receive(:destroy).and_return(true)
      delete 'destroy', :id => @vendor.id, :format => :js
    end
  end
end
