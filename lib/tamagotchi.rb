class Tamagotchi
  @@list = []
  attr_accessor :name
  attr_accessor :food_level
  attr_accessor :sleep_level
  attr_accessor :activity_level
  attr_reader :id

  def initialize(name)
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

  def self.find(id)
    tamagotchi_id = id.to_i()
    @@list.each do |tamagotchi|
      if tamagotchi.id == tamagotchi_id
        return tamagotchi
      end
    end
  end

  def status_checker()
    if self.food_level > 0
      "alive"
    else
      "dead"
    end
  end

  def feeding()
    self.food_level + 1
  end

end
