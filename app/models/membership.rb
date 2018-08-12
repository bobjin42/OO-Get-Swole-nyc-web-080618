class Membership

  attr_reader :cost, :gym, :lifter

    @@all = []

  def initialize(lifter, gym, cost)
    @cost = cost
    @@all << self
    @lifter = lifter
    @gym = gym
  end

  def self.all
    @@all
  end


end
