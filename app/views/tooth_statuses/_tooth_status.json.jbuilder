json.extract! tooth_status, :id, :current_treatment, :treatment_history, :observations, :tooth_id, :created_at, :updated_at
json.url tooth_status_url(tooth_status, format: :json)
