class SubscriptionResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :is_paid, as: :boolean
  field :season, as: :belongs_to
  field :students, as: :belongs_to
  field :amount, as: :number
  # add fields here
end
