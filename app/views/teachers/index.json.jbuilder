json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :first, :last
  json.url teacher_url(teacher, format: :json)
end
