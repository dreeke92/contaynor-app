class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, comment: "First name of the user"
    add_column :users, :last_name, :string, comment: "Second name of the user"
    add_column :users, :company_role, :string, comment:"Company role of the user"
    add_column :users, :telephone_number, :string, comment: "Personal telephone number of the user"
    add_column :users, :organization_admin, :boolean, default: false, comment: "Boolean denoting whether or not the user has admin rights in his/her organization"
    add_column :users, :employee_admin, :boolean, default: false, comment: "Boolean denoting whether or not the user is an employee of Contaynor, and thus has admin rights"
    add_column :users, :master_admin, :boolean, default: false, comment: "Boolean denoting wether or not the user has master admin rights"
    add_column :users, :dark_theme, :boolean, default: false, comment: "Preferred theme is usually white team, unless the user chooses for the dark theme and sets boolean to true"
    add_reference :users, :organization, index: true, comment: "A user is part of an organization, be it Contaynor or a client of contaynor."
  end
end
