class CreateCollectionreps < ActiveRecord::Migration[5.2]
  def change
    create_table :collectionreps do |t|
      t.integer :representative_id
      t.integer :collection_id

      t.timestamps
    end
  end
end
