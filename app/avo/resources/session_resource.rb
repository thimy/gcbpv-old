class SessionResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :instrument_class_id, as: :number
  field :city_id, as: :number
  field :start_time, as: :date_time
  field :end_time, as: :date_time
  field :day, as: :text
  field :instrument_class, as: :belongs_to
  field :city, as: :belongs_to
  # add fields here
end
