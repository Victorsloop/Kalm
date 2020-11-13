class AddBuyPriceToUserSwags < ActiveRecord::Migration[6.0]
  def change
    add_column :user_swags, :buy_price, :integer
  end
end
