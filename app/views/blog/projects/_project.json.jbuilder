json.extract! project, :id, :title, :description, :body, :slug, :created_at, :updated_at
json.url project_url(project, format: :json)
