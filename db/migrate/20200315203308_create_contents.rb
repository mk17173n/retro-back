class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :name
      t.string :source
      t.string :description
      t.string :image
      t.string :kind
      t.timestamps
    end
  end
end
