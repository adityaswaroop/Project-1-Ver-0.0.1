class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :group_name
      t.string :company_name
      t.string :responsible_person
      t.date :establishment_date
      t.string :company_type
      t.string :company_logo
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :contact_one
      t.string :contact_two
      t.string :fax
      t.string :email
      t.string :email2
      t.string :website

      t.timestamps
    end
  end
end
