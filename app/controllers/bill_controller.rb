class BillController < ApplicationController

  def index
    @bill = Bill.get_bill(params[:id])
  end 

end 