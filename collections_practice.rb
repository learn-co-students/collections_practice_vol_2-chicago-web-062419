# your code goes here

# Method 1
def begins_with_r(tools)
    tools.all? do |string|
        string[0] == "r"
    end
end

# Method 2
def contain_a(tools)
    tools.select do |string|
        string.include?("a")
    end
end

# Method 3
def first_wa(tools)
    tools.find do |string|
        string[0..1] == "wa"
    end
end

# Method 4
def remove_non_strings(tools)
    tools.delete_if do |item|
        item.class != String
    end
end

# Method 5
def count_elements(tools)
    tools.uniq.collect do |item|
        item[:count] = tools.count(item)
        item
    end
end

# Method 6
def merge_data(key, value)
    key.each do |item|
        value.each do |info|
            item.merge!(info[item[:first_name]])
        end
    end
end

# Method 7
def find_cool(tools)
    tools.select do |item|
        if item.values.include?("cool")
            item
        end
    end
end

# Method 8
def organize_schools(schools)
    organized = {}
    schools.collect do |key, value|
        if(organized[value[:location]] == nil)
            organized[value[:location]] = [key]
        else
            organized[value[:location]].push(key)
        end
    end
    organized
end