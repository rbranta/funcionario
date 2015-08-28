class Funcionario
  attr_accessor :salario_minimo
  attr_accessor :salario
  attr_accessor :salario_em_minimos

  def salario
    return @salario if @salario != nil
    @salario = salario_em_minimos * salario_minimo
  end

  def salario=(value)
    @salario_em_minimos = nil
    @salario = value
  end

  def salario_em_minimos
    return @salario_em_minimos if @salario_em_minimos !=nil
    @salario_em_minimos = (salario.to_f / salario_minimo.to_f).round(2)
  end

  def salario_em_minimos=(value)
    @salario=nil
    @salario_em_minimos = value
  end

  def aumento!(value)
    fail(ArgumentError, 'CLT nao permite reducao salarial') if value < 0
    @salario = @salario + value
  end
end
