class InstrumentResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  self.translation_key = 'avo.resource_translations.user'
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # Fields generated from the model
  field :name, as: :text, name: "Nom", link_to_resource: true
  field :description, as: :markdown
  field :instrument_classes, as: :has_many, name: "Cours"
  field :teachers, as: :has_many, through: :instrument_classes, name: "Professeurs"
  # add fields here
end
