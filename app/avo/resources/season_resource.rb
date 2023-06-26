class SeasonResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :start_year, as: :number
  field :instrument_class, as: :belongs_to
  field :workshop, as: :belongs_to
  field :plan, as: :belongs_to
  # add fields here
end
