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
      tamagotchi = Tamagotchi.new("Bunny",10,10,10)
      tamagotchi.save()
      expect(Tamagotchi.all()).to(eq([tamagotchi]))
    end
  end

  describe(".clear") do
    it("clears all tamagotchis from the list") do
      tamagotchi = Tamagotchi.new("Bunny",10,10,10)
      tamagotchi.save()
      Tamagotchi.clear()
      expect(Tamagotchi.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("increments an id by 1 each time a new tamagotchi is added") do
      tamagotchi1 = Tamagotchi.new("Bunny",10,10,10)
      tamagotchi1.save()
      tamagotchi2 = Tamagotchi.new("Daisy",10,10,10)
      tamagotchi2.save()
      expect(tamagotchi1.id()).to(eq(1))
      expect(tamagotchi2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("finds a tamagotchi based on its id") do
      tamagotchi1 = Tamagotchi.new("Bunny",10,10,10)
      tamagotchi1.save()
      tamagotchi2 = Tamagotchi.new("Daisy",10,10,10)
      tamagotchi2.save()
      expect(Tamagotchi.find(1)).to(eq(tamagotchi1))
      expect(Tamagotchi.find(2)).to(eq(tamagotchi2))
    end
  end
end
