class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at
      t.string :slug
      t.integer :status
      t.integer :topic_id

      t.timestamps
    end
  end
end
