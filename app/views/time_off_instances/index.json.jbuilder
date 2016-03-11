json.array!(@time_off_instances) do |time_off_instance|
  json.extract! time_off_instance, :id, :employee_id, :hours_used
  json.url time_off_instance_url(time_off_instance, format: :json)
end
