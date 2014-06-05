json.array!(@goals) do |goal|
  json.extract! goal, :id, :goal, :description, :start, :end, :recurrance
  json.url goal_url(goal, format: :json)
end
