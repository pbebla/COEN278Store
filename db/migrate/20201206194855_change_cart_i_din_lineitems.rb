class ChangeCartIDinLineitems < ActiveRecord::Migration[6.0]
  def change
    change_column_null :lineitems, :cart_id, true
  end
end
