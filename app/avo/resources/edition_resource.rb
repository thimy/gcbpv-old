class EditionResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :description, as: :textarea
  field :format, as: :text
  field :price, as: :number
  field :image, as: :file
  # add fields here
end
