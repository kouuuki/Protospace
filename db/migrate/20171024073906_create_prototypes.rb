class CreatePrototypes < ActiveRecord::Migration[5.0]
  def change
    create_table :prototypes do |t|
      t.string :title
      t.string :catch
      t.text :concept

      t.timestamps
    end
  end
end
