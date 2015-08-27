class Funcionario
  attr_accessor :salario_minimo
  attr_accessor :salario
  attr_accessor :salario_em_minimos

  def aumento!(value)
    fail(ArgumentError, 'CLT nao permite reducao salarial') if value < 0
    @salario = @salario + value
  end
end
