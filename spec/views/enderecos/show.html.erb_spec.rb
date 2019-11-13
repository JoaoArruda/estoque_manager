require 'rails_helper'

RSpec.describe "enderecos/show", type: :view do
  before(:each) do
    @endereco = assign(:endereco, Endereco.create!(
      :cidade => nil,
      :cep => "Cep"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Cep/)
  end
end
