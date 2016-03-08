json.array!(@grades) do |grade|
  json.extract! grade, :id, :student_id, :teacher_id, :assignment, :grade
  json.url grade_url(grade, format: :json)
end
