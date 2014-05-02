json.array!(@goal_updates) do |goal_update|
  json.extract! goal_update, :id, :goal_id, :entry, :update_date
  json.url goal_update_url(goal_update, format: :json)
end
