class Jointableforsellerandbuyer < ActiveRecord::Migration[7.0]
  def change
    create_join_table :buyers, :sellers
  end
end
