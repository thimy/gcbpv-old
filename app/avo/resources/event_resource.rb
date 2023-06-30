class EventResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text, name: "Nom", link_to_resource: true
  field :content, as: :markdown, name: "Description"
  field :start_date, as: :date_time, name: "Date et heure de début"
  field :end_date, as: :date_time, name: "Date et heure de fin"
  field :address_first, as: :text, name: "Adresse 1"
  field :address_second, as: :text, name: "Adresse 2"
  field :street, as: :text, name: "Rue"
  field :city, as: :text, name: "Ville"
  field :posts, as: :has_many, name: "Article"
  # add fields here
end
