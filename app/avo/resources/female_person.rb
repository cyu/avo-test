class Avo::Resources::FemalePerson < Avo::BaseResource
    self.includes = []
    self.title = -> { "Female: #{record.name}" }
    self.model_class = ::FemalePerson
    # self.search = {
    #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
    # }
  
    def fields
      field :id, as: :id
      field :name, as: :text
    end
  end
  