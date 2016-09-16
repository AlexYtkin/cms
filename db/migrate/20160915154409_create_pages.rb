class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :url
      t.references :template, index: true, foreign_key: true
      t.text :text
      t.boolean :published, null: false

      t.timestamps null: false
    end
  end
end
