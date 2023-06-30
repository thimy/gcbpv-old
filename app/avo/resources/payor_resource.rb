class PayorResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # Fields generated from the model
  field :last_name, as: :text, name: "Nom", link_to_resource: true
  field :first_name, as: :text, name: "Prénom"
  field :students, as: :has_many, name: "Responsable de"

  heading "Adresse du payeur"
  field :street_address, as: :text, name: "Adresse"
  field :postcode, as: :text, name: "Code postal"
  field :city, as: :text, name: "Ville"
  field :phone, as: :text, name: "Téléphone"
  field :mail, as: :text, name: "E-mail"
  # add fields here
end
