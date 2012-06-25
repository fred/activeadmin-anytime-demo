ActiveAdmin.register User do

  show title: :name do
    attributes_table do
      row :id
      bool_row :admin
      row :email
      row :name
      row :birthdate
      row :created_at
      row :updated_at
    end
  end
  index do
    id_column
    bool_column :admin
    column :email
    column :name
    column :birthdate
    column :created_at
    column :updated_at
    default_actions
  end

  form do |f|
    f.inputs "User Info" do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :birthdate, as: 'string'
    end
    f.buttons
  end

end