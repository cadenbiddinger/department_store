class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|
      t.string :index
      t.string :show
      t.string :new
      t.string :edit

      t.timestamps
    end
  end
end
