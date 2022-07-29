class DataController < ApplicationController
  def index
    data = Datum.all
    render json: data.as_json
  end

  def show
    datum = Datum.find_by(id: params[:id])
    render json: datum.as_json
  end

end
