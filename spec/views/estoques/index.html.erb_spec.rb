require 'rails_helper'

RSpec.describe "estoques/index", type: :view do
  before(:each) do
    assign(:estoques, [
      Estoque.create!(
        :quantidade => 2,
        :pessoa => nil,
        :operacao => nil,
        :produto => nil
      ),
      Estoque.create!(
        :quantidade => 2,
        :pessoa => nil,
        :operacao => nil,
        :produto => nil
      )
    ])
  end

  it "renders a list of estoques" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
