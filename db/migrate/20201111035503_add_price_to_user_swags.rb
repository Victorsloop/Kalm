class AddPriceToUserSwags < ActiveRecord::Migration[6.0]
  def change
    add_column :user_swags, :rent_price, :integer
    remove_column :swags, :price, :integer
  end
end
