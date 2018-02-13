class AdsController < ApplicationController
  # GET /ads
  # GET /ads.json
  def index
    ad_service = AdService.new
    @ads = Ad.load_from_collection(ad_service.call.as_json["ads"])
  end
end
