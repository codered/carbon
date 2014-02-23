json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :start_date, :duration, :order, :progress, :status
  json.url project_url(project, format: :json)
end
