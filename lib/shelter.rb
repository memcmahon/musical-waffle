class Shelter
    attr_reader :name, :capacity, :pets
    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @pets = []
    end

    def add_pet(pet)
        @pets << pet
    end

    # def call_pets
    #     pet_call_list = []
    #     @pets.each do |pet|
    #         pet_call_list << pet + "!"
    #     end
    #     pet_call_list
    # end

    def call_pets
        @pets.map do |pet|
            pet + "!"
        end
    end

    def over_capacity?
        @pets.length > @capacity
    end

    def adopt
        until !over_capacity?
            @pets.shift
        end
    end
end