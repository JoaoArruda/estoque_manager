require 'rails_helper'

RSpec.describe "estoques/new", type: :view do
  before(:each) do
    assign(:estoque, Estoque.new(
      :quantidade => 1,
      :pessoa => nil,
      :operacao => nil,
      :produto => nil
    ))
  end

  it "renders new estoque form" do
    render

    assert_select "form[action=?][method=?]", estoques_path, "post" do

      assert_select "input[name=?]", "estoque[quantidade]"

      assert_select "input[name=?]", "estoque[pessoa_id]"

      assert_select "input[name=?]", "estoque[operacao_id]"

      assert_select "input[name=?]", "estoque[produto_id]"
    end
  end
end
