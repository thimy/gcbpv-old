class EditionResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # Fields generated from the model
  field :name, as: :text, name: "Nom", link_to_resource: true
  field :description, as: :markdown
  field :format, as: :text
  field :price, as: :number, name: "Prix"
  field :image, as: :file
  # add fields here
end
