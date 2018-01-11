class BillController < ApplicationController

  def index
    @bill = Bill.get_bill(params[:id])
  
    @charts = @bill.votes.map.with_index(1) do |vote, index|
      ChartMaker.pie_chart(vote, index)
    end 
    @chart = @charts.first
  end 
end 