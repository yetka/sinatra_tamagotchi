class Tamagotchi
  @@list = []
  attr_accessor :name
  attr_accessor :food_level
  attr_accessor :sleep_level
  attr_accessor :activity_level
  attr_reader :id

  def initialize(name,food_level,sleep_level,activity_level)
    @name = name
    @food_level = food_level
    @sleep_level = sleep_level
    @activity_level = activity_level
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

end
