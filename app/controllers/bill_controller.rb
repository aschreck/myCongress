class BillController < ApplicationController

  def index
    @bill = Bill.get_bill(params[:id])
  
    @charts = @bill.votes.map.with_index(1) do |vote, index|
      ChartMaker.pie_chart(vote, index)
    end 
    @chart = @charts.first
  end 
end 

#problem: I need to get the charts to hit different divs in a dynamic way. 
    #   Fusioncharts::Chart.new({
    #     width: "600",
    #     height: "400",
    #     type: "pie2d",
    #     renderAt: "chartContainer",
    #     dataSource: {
    #         chart: {
    #         caption: "",
    #         theme: "fint",
    #         exportEnabled: "1",
    #         },
    #             dataset: [
    #                 {
    #                     seriesname: "Previous Year",
    #                     data: [
    #                         { value: vote.yes_votes },
    #                         { value: vote.no_votes },
    #                         { value: vote.not_voting }
    #                     ]
    #                 },
    #           ]
    #     }
    #  })