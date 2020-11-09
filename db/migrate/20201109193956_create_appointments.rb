class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.boolean :availability
      t.references :user_swag, null: false, foreign_key: true
    end
  end
end
