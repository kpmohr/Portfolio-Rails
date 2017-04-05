class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string "name"
      t.string "topic"
      t.string "product"
      t.string "description"
      t.string "image_url"

      t.timestamps
    end
  end
end
