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

  def self.analytics_pie_chart(p_vote)
    Fusioncharts::Chart.new({
        width: "500",
        height: "300",
        type: "pie2d",
        renderAt: "chartContainer",
        dataSource: {
            chart: {
            caption: "#{p_vote.politician} voted #{p_vote.analytics.yes_percentage}% yes and #{p_vote.analytics.no_percentage}% no.",
            theme: "fint",
            exportEnabled: "1",
            },
                dataset: [
                    {
                      seriesname: "Previous Year",
                      data: [
                          { value: p_vote.analytics.yes_percentage},
                          { value: p_vote.analytics.no_percentage}
                        ]
                    },
              ]
        }
    })
  end 
  
  
end