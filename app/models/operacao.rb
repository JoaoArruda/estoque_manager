class Operacao < ApplicationRecord
    enum tipo: { venda: 0, compra: 1, dev_venda: 2, dev_compra: 3 }

end
