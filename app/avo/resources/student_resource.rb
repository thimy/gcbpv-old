class StudentResource < Avo::BaseResource
  self.title = :full_name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :last_name, as: :text
  field :first_name, as: :text
  field :birthyear, as: :date
  field :payor, as: :belongs_to
  # add fields here
end
