require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) { Airplane.new("cesna", 10, 150) }
  describe "#initialization" do
    it 'should return type, wingloading, and horsepower' do
      expect(my_plane.type).to eq("cesna")
      expect(my_plane.wingloading).to eq(10)
      expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#start" do
    my_plane = Airplane.new("cesna", 10, 150)
    # let(:my_plane) { Airplane.new("cesna", 10, 150) }

    it 'should start the engine if it is off' do
      expect(my_plane.start).to eq("airplane started")
    end

    it 'should inform the user that it is already on' do
      expect(my_plane.start).to eq("airplane already started")
    end
  end

  describe "#takeoff" do
    # my_plane = Airplane.new("cesna", 10, 150)
    let(:my_plane) { Airplane.new("cesna", 10, 150) }

    it 'returns airplane not started, plesase start' do
      expect(my_plane.takeoff).to eq("airplane not started, please start")
    end

    it 'should change the state of the plane to flying' do
      my_plane.start
      expect(my_plane.takeoff).to eq("airplane launched")
    end

  end

  describe "#land" do
    # my_plane = Airplane.new("cesna", 10, 150)
    let(:my_plane) { Airplane.new("cesna", 10, 150) }
    it 'returns airplane not started, please start' do
      my_plane.land
      expect(my_plane.land).to eq("airplane not started, please start")
    end

    it 'returns airplane is not flying' do
      my_plane.start
      my_plane.takeoff
      my_plane.land
      expect(my_plane.land).to eq("airplane already on the ground")
    end

    it 'should change the state of the plane to landed' do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.land).to eq("airplane landed")
    end

  end

end
