class CreateBillboards < ActiveRecord::Migration[5.2]
  def change
    create_table :billboards do |t|
      t.string :title
      t.string :artist_name
      t.string :song_name

      t.timestamps
    end
  end
end
