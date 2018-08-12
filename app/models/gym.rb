class Gym

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_membership
    Membership.all.select do |membership| membership.gym == self
    end
  end

  def get_lifter
    get_membership.map do |membership| membership.lifter
    end
  end

  def get_name
    get_membership.map do |membership| membership.name
    end
  end

  def total_lift
    sum = 0
    get_lifter.each do |member| sum += member.lift_total
    end
    sum
  end
end #end class
