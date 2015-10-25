json.array!(@shifts) do |shift|
  json.extract! shift, :id, :start, :end, :total, :user_id
  json.url shift_url(shift, format: :json)
end
