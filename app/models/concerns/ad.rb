class Ad
  # List of available statuses
  @@statuses = {enabled: 0, disabled: 1}

  attr_accessor :reference, :status, :description, :campaign

  # Init Method
  def initialize(obj)
    @reference = obj["reference"]
    @status = obj["status"]
    @description = obj["description"]
  end

  # Return a list of available statuses
  def self.statuses
    @@statuses
  end
  
  #Load a list of Ads from Ad class in Array
  def self.load_from_collection(objects)
    ads = []
    objects.each do |obj|
      ads.push Ad.new(obj)
    end if objects
    ads
  end

  # Return current instance status
  def status
    @@statuses.key(@status) if @status
  end

  # Set current instance status
  def status= s
    @status = @@statuses[s.to_sym]
  end

  # Return current assigned campaign or load from db
  def campaign
    @campaign || Campaigns.where(external_reference: @reference).first
  end

  @@statuses.each do |k, v|
    # Instance method return true of false to check current status by status name
    define_method :"#{k}?" do
      @status == v
    end

    # Instance method to set status by status name
    define_method :"#{k}!" do
      @status = v
    end
  end
end
