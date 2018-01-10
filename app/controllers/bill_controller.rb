class BillController < ApplicationController

  def index
    @bill = Bill.get_bill(params[:id])
  
  vote = @bill.votes.first
    @chart = Fusioncharts::Chart.new({
        width: "600",
        height: "400",
        type: "pie2d",
        renderAt: "chartContainer",
        dataSource: {
            chart: {
            caption: "",
            theme: "fint",
            exportEnabled: "1",
            },
                dataset: [
                    {
                        seriesname: "Previous Year",
                        data: [
                            { value: vote.yes_votes },
                            { value: vote.no_votes },
                            { value: vote.not_voting }
                        ]
                    },
              ]
        }
    })

  end 
end 