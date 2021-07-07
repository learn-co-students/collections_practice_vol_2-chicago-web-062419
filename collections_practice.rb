require 'pry'

def begins_with_r(tools)
  answer =
  tools.each do |tool|
    if tool.start_with?("r") == false
      return false
    end
  end
  true
end

def contain_a(element)
  element_array = []
  element.each do |x|
    if x.include? ("a")
      element_array << x
    end
  end
  element_array
end

def first_wa(element)
  first = []
  element.each do |x|
    xs = x.to_s
    if xs.start_with?("wa")
      first << xs
    end
  end
  first[0]
end

def remove_non_strings(array)
  new_array = []
  array.each do |x|
    if x == x.to_s
      new_array << x
    end
  end
  new_array
end

def count_elements(array)
  counts = Hash.new(0)
  array.each { |item| counts[item] += 1 }
  return_array = []
  counts.each do |item, num|
    item.each { |x, y| return_array << {x => y, :count => num} }
  end
  return_array
end

def merge_data(keys, data)
  new_arr = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |val|
        new_arr << val.merge(info) if val.values[0] == name
      end
    end
  end
  new_arr
end


def find_cool(array)
  new_arr = []
  array.each do |hash|
    hash.each do |k, v|
      if v == "cool"
        new_arr << hash
      end
    end
  end
  new_arr
end

def organize_schools(schools)
  locations = {}
  schools.values.each do |location|
    locations[location.values[0]] = []
  end
  schools.each do |school, location|
    locations[location.values[0]] << school
  end
  locations
end
