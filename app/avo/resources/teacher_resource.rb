class TeacherResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :instruments, as: :has_many, through: :instrument_classes
  field :workshops, as: :has_many
  field :description, as: :textarea
  field :picture, as: :file
  field :status, as: :select, enum: ::Teacher::VALID_STATUSES
  field :instrument_classes, as: :has_many
  # add fields here
end
