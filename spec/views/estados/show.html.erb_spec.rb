require 'rails_helper'

RSpec.describe "estados/show", type: :view do
  before(:each) do
    @estado = assign(:estado, Estado.create!(
      :uf => "Uf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uf/)
  end
end
