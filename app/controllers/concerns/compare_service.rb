class CompareService

  def initialize(campaigns, ads)
    @campaigns = campaigns
    @ads = ads
  end

  def compare
    perform_compare
  end

  #######
  private
  #######

    # Compare between two lists of AdServices and Campaigns
    # Loop on the list of Campaigns and find the matached Ad for each campaign
    def perform_compare
      @campaigns.each do |campaign|
        ad = @ads.select{|a| a["reference"] == campaign.external_reference}.first
        if ad
          campaign.ad_service_status = ad["status"]
        else
          campaign.ad_service_status = :deleted
        end
      end

      @campaigns
    end
end
