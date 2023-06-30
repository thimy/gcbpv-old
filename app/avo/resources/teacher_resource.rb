class TeacherResource < Avo::BaseResource
  # self.name = "Professeurs"
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # Fields generated from the model
  field :name, as: :text, name: "Nom"
  field :instruments, as: :has_many, through: :instrument_classes, name: "Instruments"
  field :workshops, as: :has_many, name: "Ateliers"
  field :description, as: :markdown
  field :picture, as: :file, name: "Photo"
  field :status, as: :select, enum: ::Teacher::VALID_STATUSES, name: "Statut"
  field :instrument_classes, as: :has_many, name: "Cours"
  # add fields here
end
