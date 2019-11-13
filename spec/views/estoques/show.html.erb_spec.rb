require 'rails_helper'

RSpec.describe "estoques/show", type: :view do
  before(:each) do
    @estoque = assign(:estoque, Estoque.create!(
      :quantidade => 2,
      :pessoa => nil,
      :operacao => nil,
      :produto => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
