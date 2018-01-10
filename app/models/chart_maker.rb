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
                          { value: vote.yes_votes, label: "Votes in Favor" },
                          { value: vote.no_votes, label: "Votes Against"},
                          { value: vote.not_voting, label: "Abstentions" }
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
            caption: "#{p_vote.politician} voted #{p_vote.analytics.yes_percentage}% yes and #{p_vote.analytics.no_percentage}% no on recent legislation.",
            theme: "fint",
            exportEnabled: "1",
            },
                dataset: [
                    {
                      seriesname: "Previous Year",
                      data: [
                          { value: p_vote.analytics.yes_percentage, label: "Bills Voted For"},
                          { value: p_vote.analytics.no_percentage, label:" Bills Voted Against" }
                        ]
                    },
              ]
        }
    })
  end 
  
  
end