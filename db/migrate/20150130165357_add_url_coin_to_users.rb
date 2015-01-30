class AddUrlCoinToUsers < ActiveRecord::Migration
  def change
    add_column :users, :url_coin, :string
  end
end
