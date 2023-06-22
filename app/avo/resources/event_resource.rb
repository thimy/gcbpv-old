class EventResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :content, as: :textarea
  field :start_date, as: :date_time
  field :end_date, as: :date_time
  field :address_first, as: :text
  field :address_second, as: :text
  field :street, as: :text
  field :city, as: :text
  field :posts, as: :has_many
  # add fields here
end
