class SessionResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :instrument_class, as: :belongs_to
  field :city, as: :belongs_to
  field :day, as: :text
  field :start_time, as: :time
  field :end_time, as: :time
  # add fields here
end
