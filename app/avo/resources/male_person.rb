class Avo::Resources::MalePerson < Avo::BaseResource
  self.includes = []
  self.title = -> { "Male: #{record.name}" }
  self.model_class = ::MalePerson
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :name, as: :text
  end
end
