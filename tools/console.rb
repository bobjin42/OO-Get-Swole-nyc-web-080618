require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

gym1 = Gym.new("gym1")
gym2 = Gym.new("gym2")
gym3 = Gym.new("gym3")
gym4 = Gym.new("gym4")

lifter1 = Lifter.new("lifter1", 3)
lifter2 = Lifter.new("lifter2", 4)
lifter3 = Lifter.new("lifter3", 5)
lifter4 = Lifter.new("lifter4", 2)

membership1 = Membership.new(lifter1, gym2, 90)
membership2 = Membership.new(lifter1, gym3, 100)
membership3 = Membership.new(lifter2, gym1, 80)
membership4 = Membership.new(lifter4, gym4, 70)
membership5 = Membership.new(lifter2, gym1, 80)
membership6 = Membership.new(lifter3, gym1, 80)

binding.pry
