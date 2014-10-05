require './app/models/player.rb'

describe Player do

	it "has a default name" do
		player = Player.new
		expect(player.name).to eq 'Default'
	end

	it "has a name" do
		player = Player.new(name: 'John')
		expect(player.name).to eq 'John'
	end

end