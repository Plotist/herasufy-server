class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.string :digest, null: false, limit: 8, index: true
      t.text :destination_url, null: false, limit: 2083

      t.timestamps
    end
  end
end
