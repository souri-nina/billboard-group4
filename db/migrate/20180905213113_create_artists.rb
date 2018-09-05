class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :song_name
      t.belongs_to :billboard, foreign_key: true

      t.timestamps
    end
  end
end
