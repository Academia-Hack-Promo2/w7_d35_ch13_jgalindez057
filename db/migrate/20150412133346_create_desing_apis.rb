class CreateDesingApis < ActiveRecord::Migration
  def change
    create_table :desing_apis do |t|

      t.timestamps null: false
    end
  end
end
