class VendorsController < ApplicationController
  before_filter :find_vendor, :only => [:edit, :update, :destroy]
  before_filter :new_vendor, :only => [:index, :create]
  
  def index
    @vendors = Vendor.page params[:page]
  end

  def create
    @vendor = Vendor.new(params[:vendor])
    @vendor.save
  end

  def update
    @vendor.update_attributes(params[:vendor])
  end

  def destroy
    @vendor.destroy
  end
  
  private

  def new_vendor
    @new_vendor = Vendor.new(:name => 'Vendors name', :phone => '(312) 000-0000') 
  end

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end
end
