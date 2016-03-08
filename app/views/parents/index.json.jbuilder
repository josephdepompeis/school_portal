json.array!(@parents) do |parent|
  json.extract! parent, :id, :student_id, :first, :last
  json.url parent_url(parent, format: :json)
end
