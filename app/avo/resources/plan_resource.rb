class PlanResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # Fields generated from the model
  field :name, as: :text, name: "Nom", link_to_resource: true
  field :class_price, as: :number, name: "Cours"
  field :workshop_price, as: :number, name: "Atelier seul"
  field :awakening_price, as: :number, name: "Éveil musical"
  field :kids_discovery_price, as: :number, name: "Atelier découverte enfants"
  field :discovery_price, as: :number, name: "Atelier découverte adultes"
  field :obc_markup, as: :number, name: "Majoration OBC"
  field :outbounds_markup, as: :number, name: "Majoration hors-agglo"
  # add fields here
end
