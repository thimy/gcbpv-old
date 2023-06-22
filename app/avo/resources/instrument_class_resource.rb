class InstrumentClassResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :instrument_id, as: :number
  field :teacher_id, as: :number
  field :class_day, as: :text
  field :start_time, as: :date_time
  field :end_time, as: :date_time
  field :instrument, as: :belongs_to
  field :teacher, as: :belongs_to
  # add fields here
end
