class CreateSwags < ActiveRecord::Migration[6.0]
  def change
    create_table :swags do |t|
      t.string :name
      t.string :image_url
      t.integer :price
    end
  end
end
