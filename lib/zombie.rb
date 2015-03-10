class Zombie
  attr_accessor :name, :brains, :status

  def initialize(options={})
    self.status = option[:status]
    self.name = option[:name]
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