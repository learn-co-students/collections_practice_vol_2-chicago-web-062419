# your code goes here
require 'pry'
def begins_with_r(array)
    alltrue = 0
    array.each do |value|
        if value.start_with?('r') == false
            alltrue += 1
        end
    end
    if alltrue > 0
        false
    else
        true
    end
end

def contain_a(array)
    arrayofa = []
    array.each do |value|
        if value.include?('a')
            arrayofa << value
        end
    end
    arrayofa
end

def first_wa(array)
    array.each do |value|
        if value.to_s.start_with?('wa')
            return value
        end
    end
end

def remove_non_strings(array)
    newarray = []
    array.each do |value|
        if value.is_a?(String)
            newarray << value
        end
    end
    newarray
end

def count_elements(array)
    newarray = []
    array.each do |item|
        item[:count] = array.count(item)
        newarray << item
    end
    newarray.uniq! {|hash| hash[:name]}
end

def merge_data(keys, data)
=begin
    keys = [{:first_name=>"blake", :motto=>"Have a koala-ty day!"}, {:first_name=>"ashley", :motto=>"I dub thee, 'Lady Brett Ashley'."}]
    data = [{
        "blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
         "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}
         }]

    want: [{:awesomeness => 10, :first_name =>"blake", :height=>"74"},
            {:first_name=>"ashley"}]
=end
    merged = []
    keys.each do |hash| 
        data.first.collect do |x,y| 
            if hash.values[0] == x 
                merged << hash.merge(y) 
            end
        end
    end
    merged
end

def find_cool(array)
    cool = []
    array.each do |hash|
        hash.each do |key, value|
            if value == "cool"
                cool << hash
            end
        end
    end
    cool
end

def organize_schools(schools)
    locations = {}
    schools.collect do |school, lochash|
        locations[lochash[:location]] = []
    end

    locations.each do |location, array|
        schools.each do |school, lochash|
            if lochash[:location] == location
                array << school
            end
        end
    end
end

=begin
{
    "flatiron school bk"=>{:location=>"NYC"},
 "flatiron school"=>{:location=>"NYC"},
 "dev boot camp"=>{:location=>"SF"},
 "dev boot camp chicago"=>{:location=>"Chicago"},
 "general assembly"=>{:location=>"NYC"},
 "Hack Reactor"=>{:location=>"SF"}
}
=end