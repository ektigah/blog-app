class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :website
      t.string :email
      t.string :author_name
      t.text :body
      t.integer :article_id

      t.timestamps
    end
  end
end
