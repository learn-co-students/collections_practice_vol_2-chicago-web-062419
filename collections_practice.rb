require "pry"

def begins_with_r(array)
    array.all? {|element| element[0].downcase == "r"}
end

def contain_a(array)
    new_array = []

    array.map do |element|
        if element.include? "a"
            new_array.push(element)
        end
    end
    new_array
end

def first_wa(array)
    new_element = ""

    array.each do |element|
        if element[0..1] == "wa"
            new_element << element
            break
        end
    end
    new_element
end

def remove_non_strings(array)
    string_array = []
    
    array.each do |element|
        # binding.pry
        if element.class == String
            string_array << element

        end
    end
    string_array
end

def count_elements(array)
    total_array = []
    
    blake = Hash.new
    blake[:name] = "blake"
    blake[:count] = 0

    ashley = Hash.new
    ashley[:name] = "ashley"
    ashley[:count] = 0

    array.each do |element|
        element.each do |key, value|
            if value == blake[:name]
                blake[:count] += 1
            elsif value == ashley[:name]
                ashley[:count] += 1
            end
        end
    end
    total_array = [blake, ashley]
end


def merge_data(keys, data)
    new_array_of_hashes = []
    i = 0

    data[0].each do |name, stats|
        keys.each do |individual|
            individual.each do |key, value|
                if value == name
                    new_array_of_hashes[i] = stats.merge(individual)
                    i += 1
                end
            end
        end
    end
    new_array_of_hashes
    # new_data = Hash.new
    # i = 0
    
    # data[0].map do |name, stats|
    #     keys.map do |individual|
    #         individual.map do |key, value|
    #             if value == name
    #                 new_data[value] = stats.merge(individual)
    #                 i += 1
    #             # binding.pry
    #             end  
    #         end
    #     end
    # end
    # new_data
end

def find_cool(array)
    cool_person = []
    i = 0

    array.each do |person|
        person.each do |key, value|
            if value == "cool"
                cool_person << person
            end
        end
    end
    cool_person
end


def organize_schools(array)
    organized_schools = {
        "Chicago"=> [],
        "NYC" => [],
        "SF" => []
    }
    
    organized_schools.each do |city, schools|
        array.each do|school_name, location_value|
            location_value.each do |location_key, city_value|
                if city == city_value
                    schools << school_name
                end
            end
        end
    end
    organized_schools
end
