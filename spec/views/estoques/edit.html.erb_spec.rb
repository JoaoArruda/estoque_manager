require 'rails_helper'

RSpec.describe "estoques/edit", type: :view do
  before(:each) do
    @estoque = assign(:estoque, Estoque.create!(
      :quantidade => 1,
      :pessoa => nil,
      :operacao => nil,
      :produto => nil
    ))
  end

  it "renders the edit estoque form" do
    render

    assert_select "form[action=?][method=?]", estoque_path(@estoque), "post" do

      assert_select "input[name=?]", "estoque[quantidade]"

      assert_select "input[name=?]", "estoque[pessoa_id]"

      assert_select "input[name=?]", "estoque[operacao_id]"

      assert_select "input[name=?]", "estoque[produto_id]"
    end
  end
end
