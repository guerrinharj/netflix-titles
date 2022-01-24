json.array! @titles do |title|
  json.extract! title, :name
end
