class Bill
  def initialize(params)
    
  end

  def get_bill(bill_id)
    #call the service and get the bill json data
    service.get_bill_details(bill_id)
         

    #insantiate the bill object and return it. 
    
  end 

  private

    def self.propublica 
      PropublicaService.new
    end 
end