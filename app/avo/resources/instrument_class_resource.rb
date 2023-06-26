class InstrumentClassResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :instrument, as: :belongs_to
  field :teacher, as: :belongs_to
  field :class_day, as: :select, enum: ::InstrumentClass::CLASS_DAYS
  field :start_time, as: :time
  field :end_time, as: :time
  # add fields here
end
