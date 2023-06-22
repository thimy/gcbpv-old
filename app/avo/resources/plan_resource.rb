class PlanResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :class_price, as: :number
  field :workshop_price, as: :number
  field :obc_markup, as: :number
  field :outbounds_markup, as: :number
  # add fields here
end
