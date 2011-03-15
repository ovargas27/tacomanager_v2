class VendorsController < ApplicationController
  before_filter :find_vendor, :only => [:edit, :update]
  before_filter :new_vendor, :only => [:index, :create]
  
  def index
    @vendors = Vendor.page params[:page]
  end

  def create
    @vendor.save
  end

  def edit
    render :layout => false
  end
  
  def update
    @vendor.update_attributes(params[:vendor])
  end
  
  private

  def new_vendor
    params[:vendor] ||= {:name => 'Vendors name', :phone => '(312) 000-0000' }
    @vendor = Vendor.new(params[:vendor])
  end

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end
end
