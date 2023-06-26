class SeasonResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :start_year, as: :number
  # field :instrument_class_id,
  #   as: :tags,
  #   suggestions: -> { InstrumentClass.suggestions }
  field :instrument_class_id, as: :number
  field :workshop_id, as: :number
  field :plan_id, as: :number
  # add fields here
end
