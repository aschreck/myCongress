class BillController < ApplicationController

  def index
    @bill = Bill.get_bill(params[:id])
    require 'pry'; binding.pry
    
  end 

end 