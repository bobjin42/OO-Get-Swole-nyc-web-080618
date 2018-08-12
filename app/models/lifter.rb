class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def get_membership
    Membership.all.select do |member| member.lifter == self
    end
  end

  def get_gym
    get_membership.map do |member| member.gym
    end
  end

  def self.get_avg_lift
    counter = 0
    Lifter.all.each do |lifter| counter += lifter.lift_total
    end
    counter
    lift_total = counter.to_f / @@all.length
  end

  def get_cost
    sum = 0
    get_membership.each do |membership| sum += membership.cost
    end
    sum
  end

  def sign_new_gym(gym, cost)
    Membership.new(self, gym, cost)
  end
end #end class
