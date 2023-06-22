class PayorResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :last_name, as: :text
  field :first_name, as: :text
  field :street_address, as: :text
  field :postcode, as: :text
  field :city, as: :text
  field :phone, as: :text
  field :mail, as: :text
  # add fields here
end
