class WorkshopResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # Fields generated from the model
  field :name, as: :text, name: "Nom", link_to_resource: true
  field :teacher, as: :belongs_to, name: "Profeseur"
  field :description, as: :markdown
  field :location, as: :text, name: "Lieu"
  field :workshop_day, as: :text, name: "Jour"
  field :start_time, as: :time, name: "Heure de début"
  field :end_time, as: :time, name: "Heure de fin"
  field :workshop_type, as: :select, enum: ::Workshop::WORKSHOP_TYPES, name: "Type de cours", help: "Permet de définir le prix de l'atelier automatiquement"
  # add fields here
end
