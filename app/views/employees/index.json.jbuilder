json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :hours_left
  json.url employee_url(employee, format: :json)
end
