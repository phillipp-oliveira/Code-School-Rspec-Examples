class Zombie
  attr_accessor :name, :brains, :status

  def initialize(option={})
    self.status = option[:status]
    self.name = option[:name]
    self.brains = option[:brains]
  end

  def public?
    self.status && self.status[0] != "@"
  end

  def status=(status)
      @status = status ? status[0...140] : status
  end

  def hungry?
    true
  end
end