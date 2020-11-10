#set up like a class, responsible for talking with our API

class API

    def self.start
        url = "https://www.potterapi.com/v1/spells?key=$2a$10$L3jEFajgsSFFT.Ds4KPRDO4cFyTpipac5L1iYW.QoKD8VuBgzcnR2"
        uri = URI(url)
        spells = Net::HTTP.get(uri)
        array_of_spells = JSON.parse(spells)
        binding.pry
        hexes = array_of_spells.each {|spell| spell["type"] == "Hex"}
        puts hexes     
    end

end