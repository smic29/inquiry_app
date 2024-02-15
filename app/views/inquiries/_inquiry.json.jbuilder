json.extract! inquiry, :id, :name, :email, :description, :budget, :inquiry_type, :created_at, :updated_at
json.url inquiry_url(inquiry, format: :json)
