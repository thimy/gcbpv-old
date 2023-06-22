class WorkshopResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :teacher_id, as: :number
  field :description, as: :textarea
  field :workshop_day, as: :text
  field :start_time, as: :date_time
  field :end_time, as: :date_time
  field :location, as: :text
  field :teacher, as: :belongs_to
  # add fields here
end
