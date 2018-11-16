class CreateSubcontractors < ActiveRecord::Migration[5.2]
  def change
    create_table :subcontractors do |t|
      t.string :accountname
      t.string :tel
      t.string :fax
      t.string :email

      t.timestamps
    end
  end
end
