class CreateContrs < ActiveRecord::Migration[5.2]
  def change
    create_table :contrs do |t|
      t.string :a1
      t.string :a2

      t.timestamps
    end
  end
end
