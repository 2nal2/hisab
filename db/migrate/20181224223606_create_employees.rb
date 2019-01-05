class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :last_name
      t.string :phone_number
      t.string :cedula
      t.string :gender
      t.text :direction
      t.datetime :admission_date
      t.datetime :departure_date

      t.timestamps
    end
  end
end
