class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :caption
      t.text :description
      t.references :pictureable, polymorphic: true
      t.timestamps
    end
  end
end
