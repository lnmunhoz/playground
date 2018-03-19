class Kill
  attr_accessor :killer, :victim, :mean
  def initialize (killer, victim, mean)
    @killer = killer
    @victim = victim
    @mean = mean
  end

  def self.captures(line)
    line.match(/Kill: \d{1,} \d{1,} \d{1,}: (.{1,}) killed (.{1,}) by (.{1,})/).captures
  end
end
