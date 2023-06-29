class PlanResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id, link_to_resource: true
  # Fields generated from the model
  field :name, as: :text
  field :class_price, as: :number
  field :workshop_price, as: :number
  field :awakening_price, as: :number
  field :kids_discovery_price, as: :number
  field :discovery_price, as: :number
  field :obc_markup, as: :number
  field :outbounds_markup, as: :number
  # add fields here
end
