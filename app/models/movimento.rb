class Movimento < ActiveRecord::Base
  belongs_to :veiculo
  validates :veiculo, :placa, presence: true
  validates :placa, format: { with: /^[A-Z]{3}\-[0-9]{4}$/ }

  before_create :definir_hora_entrada

  def definir_hora_entrada
    self.hora_entrada = Time.now
  end

  def sair
    self.hora_saida = Time.now
    save!
  end

  def self.abertos
  	where('hora_saida is NULL')
  end

	def fechado?
		hora_saida.present?
	end

	def valor
		2 * ((hora_saida - hora_entrada) / 3600).ceil
	end
end
