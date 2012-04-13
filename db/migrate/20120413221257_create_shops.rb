class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :provider, :null => false, :default => ""
      t.string :domain,   :null => false, :default => ""
      t.string :token,    :null => false, :default => ""

      t.timestamps
    end
  end
end
