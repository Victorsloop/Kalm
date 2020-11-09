class CreateUserSwags < ActiveRecord::Migration[6.0]
  def change
    create_table :user_swags do |t|
      t.references :user
      t.references :swag
      t.integer :rating
      t.string :review
      t.boolean :rent
      t.boolean :buy
    end
  end
end
