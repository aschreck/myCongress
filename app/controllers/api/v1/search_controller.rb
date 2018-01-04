class Api::V1::SearchController < ActionController::API 

    def index
      render json: Congressman.where(state: params["state"])
    end 

end 