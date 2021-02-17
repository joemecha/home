class Building
  attr_reader :units, :renters

  def initialize
    @units = []
    @renters = [] # How to keep nil until units added?
  end

  def add_unit(apartment)
    @units << apartment
    # add_renter
  end

  def average_rent
    (@units.reduce(0) do |sum, unit|
      sum + unit.monthly_rent
    end) / @units.length.to_f
  end

  # def add_renter
  #   @renters << @unit.renter
  # end
end
