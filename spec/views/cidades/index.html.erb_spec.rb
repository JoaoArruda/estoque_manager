require 'rails_helper'

RSpec.describe "cidades/index", type: :view do
  before(:each) do
    assign(:cidades, [
      Cidade.create!(
        :estado => nil,
        :nome => "Nome"
      ),
      Cidade.create!(
        :estado => nil,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of cidades" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
