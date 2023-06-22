class TeacherResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :description, as: :textarea
  field :picture, as: :text
  field :status, as: :text
  field :instrument_classes, as: :has_many
  field :instruments, as: :has_many, through: :instrument_classes
  field :workshops, as: :has_many
  # add fields here
end
