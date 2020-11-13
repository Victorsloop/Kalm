class AddConditionToUserSwags < ActiveRecord::Migration[6.0]
  def change
    add_column :user_swags, :condition, :string
  end
end
