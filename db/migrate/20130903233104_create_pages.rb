class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :html
      t.string :unique

      t.timestamps
    end
  end
end
