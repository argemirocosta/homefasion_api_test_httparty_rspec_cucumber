module REST
  def commons
    Rest::Commons.new
  end

  def cliente
    Rest::Cliente.new
  end

  def usuario
    Rest::Usuario.new
  end

  def pagamento
    Rest::Pagamento.new
  end

  def venda
    Rest::Venda.new
  end
end
