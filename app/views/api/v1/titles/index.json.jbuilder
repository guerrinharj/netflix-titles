json.array! @titles do |title|
  json.extract! title, :show_id, :name, :type_title, :director, :cast
end
