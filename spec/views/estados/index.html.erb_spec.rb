require 'rails_helper'

RSpec.describe "estados/index", type: :view do
  before(:each) do
    assign(:estados, [
      Estado.create!(
        :uf => "Uf"
      ),
      Estado.create!(
        :uf => "Uf"
      )
    ])
  end

  it "renders a list of estados" do
    render
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
  end
end
