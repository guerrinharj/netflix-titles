if @titles.count.positive?
  json.array! @titles do |title|
    json.extract! title, :show_id, :name, :type_title, :director, :cast, :country, :date_added, :release_year, :rating, :duration, :listed_in, :description
  end
else
  json.not_found "No results founds"
end
