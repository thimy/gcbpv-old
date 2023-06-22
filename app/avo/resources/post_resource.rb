class PostResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :title, as: :text
  field :content, as: :textarea
  field :status, as: :text
  field :event_id, as: :number
  field :category_id, as: :number
  field :event, as: :belongs_to
  field :category, as: :belongs_to
  # add fields here
end
