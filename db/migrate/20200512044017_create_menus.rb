class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string "name"
      t.boolean "activemenu"
    end
  end
end
