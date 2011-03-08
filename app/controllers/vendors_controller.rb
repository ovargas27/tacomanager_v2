class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end

  def create
    vendor = Vendor.create(params[:vendor])
    redirect_to :action => :index
  end

  def edit
  end

end
