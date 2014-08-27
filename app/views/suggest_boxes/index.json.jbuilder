json.array!(@suggest_boxes) do |suggest_box|
  json.extract! suggest_box, :id, :name, :email, :comment
  json.url suggest_box_url(suggest_box, format: :json)
end
