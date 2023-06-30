class SubscriptionResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # Fields generated from the model
  field :is_paid, as: :boolean, name: "A payé"
  field :season, as: :belongs_to, name: "Année scolaire"
  field :student, as: :belongs_to, name: "Élève"
  field :amount, as: :number, name: "Montant"
  # add fields here
end
