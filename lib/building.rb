class Building
  attr_reader :units, :renters, :rented_units

  def initialize
    @units = []
    @renters = []
    @rented_units = []
  end

  def add_unit(unit)
    @units << unit
    if unit.renter != nil
      @renters << unit.renter # Doesn't work
    end
  end

  def average_rent
    (@units.reduce(0) do |sum, unit|
      sum + unit.monthly_rent
    end) / @units.length.to_f
  end

  def rented_units
    @units.each do |unit|
      unless unit.renter == nil
        @rented_units << unit
      end
    end
  end

  def renter_with_highest_rent
    @renters.max_by do |renter|
      #unit.monthly_rent
    end
  end
end
