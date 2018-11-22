class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.string :logo

      t.timestamps
    end
  end
end
