class WorkshopResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :teacher, as: :belongs_to
  field :description, as: :textarea
  field :location, as: :text
  field :workshop_day, as: :text
  field :start_time, as: :time
  field :end_time, as: :time
  # add fields here
end
