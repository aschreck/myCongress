class BillController < ApplicationController

  def index
    bills = Bill.get_bill(params[:id])
    require 'pry'; binding.pry
  end 

end 