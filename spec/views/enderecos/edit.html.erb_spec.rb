require 'rails_helper'

RSpec.describe "enderecos/edit", type: :view do
  before(:each) do
    @endereco = assign(:endereco, Endereco.create!(
      :cidade => nil,
      :cep => "MyString"
    ))
  end

  it "renders the edit endereco form" do
    render

    assert_select "form[action=?][method=?]", endereco_path(@endereco), "post" do

      assert_select "input[name=?]", "endereco[cidade_id]"

      assert_select "input[name=?]", "endereco[cep]"
    end
  end
end
