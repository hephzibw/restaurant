class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.string :body
      t.references :cafe, index: true

      t.timestamps
    end
  end
end
