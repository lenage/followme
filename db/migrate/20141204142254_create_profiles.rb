class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :desc
      t.timestamps
    end
  end
end
