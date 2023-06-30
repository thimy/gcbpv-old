class StudentResource < Avo::BaseResource
  self.title = :full_name
  self.includes = []
  self.model_class = ::Student
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # Fields generated from the model
  field :last_name, as: :text, name: "Nom", link_to_resource: true
  field :first_name, as: :text, name: "Prénom"
  field :birthyear, as: :date, format: "yyyy", name: "Année de naissance"
  field :payor, as: :belongs_to, name: "Payeur"
  field :status, as: :select, enum: ::Student::SUBSCRIPTION_STATUSES, name: "Statut"
  # add fields here
end
