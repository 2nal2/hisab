json.extract! employee, :id, :name, :last_name, :phone_number, :cedula, :gender, :direction, :admission_date, :departure_date, :created_at, :updated_at
json.url employee_url(employee, format: :json)
