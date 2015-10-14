json.array!(@rests) do |rest|
  json.extract! rest, :id, :resone, :leave_from, :leave_to, :employe_id
  json.url rest_url(rest, format: :json)
end
