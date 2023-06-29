class SeasonResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :start_year, as: :number
  # field :instrument_class_id,
  #   as: :tags,
  #   suggestions: -> { InstrumentClass.suggestions }
  field :instrument_classes, as: :has_and_belongs_to_many, searchable: true, use_resource: InstrumentClassResource, show_on: :edit 
  field :workshop, as: :has_and_belongs_to_many, searchable: true, use_resource: WorkshopResource, show_on: :edit 
  field :plan, as: :belongs_to
  # add fields here
end
