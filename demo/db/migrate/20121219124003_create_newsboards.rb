class CreateNewsboards < ActiveRecord::Migration
  def change
    create_table :newsboards do |t|

      t.timestamps
    end
  end
end
