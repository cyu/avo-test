class Avo::Resources::Person < Avo::BaseResource
  self.includes = []
  self.title = -> { "Person: #{record.name}" }
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  self.link_to_child_resource = true

  def fields
    field :id, as: :id
    field :name, as: :text
    field :children, as: :has_many, link_to_child_resource: true
  end
end
