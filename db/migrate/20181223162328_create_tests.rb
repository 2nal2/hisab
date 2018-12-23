class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :title
      t.text :description
      t.string :status, default: true

      t.timestamps
    end
  end
end
