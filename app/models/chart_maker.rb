class ChartMaker

  def self.pie_chart(vote, index)
    Fusioncharts::Chart.new({
        width: "500",
        height: "300",
        type: "pie2d",
        renderAt: "chartContainer-#{index}",
        dataSource: {
            chart: {
            caption: "#{vote.chamber}, #{vote.question}, #{vote.result} ",
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