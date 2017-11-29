require('rspec')
require('tamagotchi')

describe("Tamagotchi") do
  before() do
    Tamagotchi.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Tamagotchi.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves tamagotchi to the list") do
      tamagotchi = Tamagotchi.new("Bunny")
      tamagotchi.save()
      expect(Tamagotchi.all()).to(eq([tamagotchi]))
    end
  end

  describe(".clear") do
    it("clears all tamagotchis from the list") do
      tamagotchi = Tamagotchi.new("Bunny")
      tamagotchi.save()
      Tamagotchi.clear()
      expect(Tamagotchi.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("increments an id by 1 each time a new tamagotchi is added") do
      tamagotchi1 = Tamagotchi.new("Bunny")
      tamagotchi1.save()
      tamagotchi2 = Tamagotchi.new("Daisy")
      tamagotchi2.save()
      expect(tamagotchi1.id()).to(eq(1))
      expect(tamagotchi2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("finds a tamagotchi based on its id") do
      tamagotchi1 = Tamagotchi.new("Bunny")
      tamagotchi1.save()
      tamagotchi2 = Tamagotchi.new("Daisy")
      tamagotchi2.save()
      expect(Tamagotchi.find(1)).to(eq(tamagotchi1))
      expect(Tamagotchi.find(2)).to(eq(tamagotchi2))
    end
  end

  describe("#status_checker") do
    it("is alive if the food level is above 0") do
      tamagotchi = Tamagotchi.new("Bunny")
      tamagotchi.save()
      expect(tamagotchi.status_checker()).to(eq("alive"))
    end
  end

  describe("#feeding") do
    it("increade food_level by one") do
      tamagotchi = Tamagotchi.new("Bunny")
      tamagotchi.save()
      expect(tamagotchi.feeding()).to(eq(11))
    end
  end

  describe("#time_passing") do
    it("decrease food_level by one") do
      tamagotchi = Tamagotchi.new("Bunny")
      tamagotchi.save()
      expect(tamagotchi.time_passing()).to(eq(9))
    end
  end
end
