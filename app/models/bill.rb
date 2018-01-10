class Bill
  #sponsor_uri is )))also included here—I could make that name clickable too
    attr_reader :short_title, 
                :title, 
                :sponsor, 
                :sponsor_uri, 
                :website_url, 
                :sponsor_party,
                :sponsor_state, 
                :d_cosponsors, 
                :r_cosponsors, 
                :summary,
                :last_action 

  def initialize(params)
    @short_title = params[:short_title]
    @title = params[:title]
    @sponsor = params[:sponsor]
    @sponsor_uri = params[:sponsor_uri]
    @website_url = params[:congressdotgov_url]
    @sponsor_party = params[:sponsor_party]
    @sponsor_state = params[:sponsor_state]
    @d_cosponsors = params[:cosponsors_by_party][:D]
    @r_cosponsors = params[:cosponsors_by_party][:R]
    @summary= params[:summary_short]
    @last_action = params[:latest_major_action]
  end

  def self.get_bill(bill_id)

    #call the service and get the bill json data
    response = propublica.get_bill_details(bill_id)
         



    #insantiate the bill object and return it. 
    
  end 

  private

    def self.propublica 
      PropublicaService.new
    end 
end