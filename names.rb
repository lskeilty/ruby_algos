# input: ["Anne", "Mark", "Josh"]
# output: "Anne, Mark, and Josh"

def smush(array)
  sentence_start = array[0..-2].join(", ")
  sentence_start + "and" + array[-1]
end

def sentance_limit(array, limit)
  if array.length > 1 && limit > 0
  sentance_start = array[0..limit -1].join(", ")
  over_limit = array.length - limit
  sentance_start + ", and " + over_limit.to_s + " more"
  elsif limit == 0
    sentance_start = array[0..-2].join(", ")
    sentance_start + ", and " + array[-1]
  else
    array.join("")
  end
end
p sentance_limit(['Mark', 'John', 'Caren'], 2)
p sentance_limit(['Mark', 'John', 'Caren'], 0)



# def to_string_with_commas(array, limit = nil)
#   return "" if array.empty?
#   return array[0] if array.length == 1

#   if limit && limit > 0 && limit < array.length
# end