class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name, comment: "Name of the organization"
      t.string :industry, comment: "Industry of the organization"
      t.string :logo_img, comment: "Cloudinary reference of the logo"

      t.timestamps
    end
  end
end
