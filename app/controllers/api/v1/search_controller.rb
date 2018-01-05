class Api::V1::SearchController < ActionController::API 

    def index
      render json: Politician.where(state: params["state"])
    end 

end 