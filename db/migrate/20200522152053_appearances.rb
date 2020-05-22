class Appearances < ActiveRecord::Migration[5.1]
  def change
    create_join_table :guests, :episodes do |t|
        t.index [:guest_id, :episodes_id]     
    end
  end
end
