class Airplane

  attr_reader :type, :wingloading, :horsepower

  def initialize(type, wingloading, horsepower)
    @type = type
    @wingloading = wingloading
    @horsepower = horsepower
    @planestate = 0
  end

  def start
    if @planestate == 1
      return "airplane already started"
    else
      @planestate = 1
      return "airplane started"
    end

  end

  def takeoff
    if @planestate == 0
      return "airplane not started, please start"
    else
      @planestate = 2
      return "airplane launched"
    end
  end

  def land
    if @planestate == 0
      return "airplane not started, please start"
    elsif @planestate == 1
      return "airplane already on the ground"
    elsif @planestate == 2
      @planestate = 1
      return "airplane landed"
    end
  end
end

# my_plane = Airplane.new("cesna", 10, 150)
# puts my_plane.wingloading

# my_plane = Airplane.new("cesna", 10, 150)
# puts my_plane.start
# puts my_plane.land
