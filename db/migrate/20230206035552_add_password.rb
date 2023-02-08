class AddPassword < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :password_digest, :string
  end
end
