class Ship
  @@all = []
  attr_accessor :name, :type, :booty

  def initialize(params)
    @name = params[:pirate][:ships][Ship.all.count][:name]
    @type = params[:pirate][:ships][Ship.all.count][:type]
    @booty = params[:pirate][:ships][Ship.all.count][:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
