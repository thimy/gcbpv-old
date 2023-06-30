class InstrumentClassResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # Fields generated from the model
  field :instrument, as: :belongs_to
  field :teacher, as: :belongs_to, name: "Professeur"
  # add fields here
end
