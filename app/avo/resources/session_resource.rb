class SessionResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # Fields generated from the model
  field :instrument_class, as: :belongs_to, name: "Cours"
  field :city, as: :belongs_to, name: "Ville"
  field :day, as: :text, name: "Jour"
  field :start_time, as: :time, name: "Heure de début"
  field :end_time, as: :time, name: "Heure de fin"
  # add fields here
end
