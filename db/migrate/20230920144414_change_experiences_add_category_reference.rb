class ChangeExperiencesAddCategoryReference < ActiveRecord::Migration[7.0]
  def change
    add_reference :experiences, :category, null: false, foreign_key: true
    remove_column :experiences, :category, :string
  end
end
