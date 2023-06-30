class PostResource < Avo::BaseResource
  self.title = :title
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # Fields generated from the model
  field :title, as: :text, name: "Titre"
  field :content, as: :markdown, name: "Contenu de l’article"
  field :status, as: :badge, name: "Statut"
  field :status, as: :select, hide_on: [:show, :index], enum: ::Post::VALID_STATUSES, name: "Statut"
  field :event, as: :belongs_to, name: "Lié à un événement"
  field :category, as: :belongs_to, hide_on: [:index, :show], name: "Catégorie"
  field :category, as: :badge, name: "Catégorie"
  # add fields here
end
