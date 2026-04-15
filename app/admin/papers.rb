ActiveAdmin.register Paper do
  permit_params :title, :year, :exam_id, :pdf_file
  config.filters = false

      index do
    selectable_column
    id_column
    column :title
    column :year
    column :exam
    column :created_at
    column :pdf_file
    actions
  end

  form do |f|
    f.inputs do
      f.input :exam
      f.input :title
      f.input :year
      f.input :pdf_file, as: :file
    end
    f.actions
  end
end