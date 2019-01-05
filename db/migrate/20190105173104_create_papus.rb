class CreatePapus < ActiveRecord::Migration[5.2]
  def change
    create_table :papus do |t|
      t.string :title
      t.integer :views

      t.timestamps
    end
  end
end
