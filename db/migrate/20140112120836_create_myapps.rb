class CreateMyapps < ActiveRecord::Migration
  def change
    create_table :myapps do |t|

      t.timestamps
    end
  end
end
