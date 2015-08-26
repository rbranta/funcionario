class Funcionario
  attr_accessor :salario_minimo
  attr_accessor :salario
  attr_accessor :salario_em_minimos

  def aumento!(value)
    @salario = @salario + value
  end
end
