require 'spec_helper'

RSpec.describe Funcionario do
  subject { described_class.new }

  describe '#salario_minimo' do
    context 'gravando o salario_minimo' do
      it do
        subject.salario_minimo = 500
        expect(subject.salario_minimo).to eq 500
      end
    end

    context 'lendo o salario_minimo' do
      before { subject.salario_minimo = 2500 }
      it { expect(subject.salario_minimo).to eq 2500 }
    end
  end

  describe '#salario' do
    context 'gravando o salario' do
      it do
        subject.salario = 500
        expect(subject.salario).to eq 500
      end
    end

    context 'lendo o salario' do
      before { subject.salario = 2500 }
      it { expect(subject.salario).to eq 2500 }
    end

    # context 'calcula o valor usando salario_minimo e salario_em_minimos' do
    #   before do
    #     subject.salario = 5000
    #     subject.salario_em_minimos = 50
    #     subject.salario_minimo = 30
    #   end
    #   it { expect(subject.salario).to eq 1500 }
    # end
  end

  # describe '#salario_em_minimos' do
  #   context 'gravando o salario_em_minimos' do
  #     it do
  #       subject.salario_em_minimos = 5
  #       expect(subject.salario_em_minimos).to eq 5
  #     end
  #   end
  #
  #   context 'lendo o salario_em_minimos' do
  #     before { subject.salario_em_minimos = 2 }
  #     it { expect(subject.salario_em_minimos).to eq 2 }
  #   end
  #
  #   context 'calcula o valor usando salario e salario_minimo' do
  #     before do
  #       subject.salario_em_minimos = 10
  #       subject.salario = 1500
  #       subject.salario_minimo = 37
  #     end
  #     it { expect(subject.salario_em_minimos).to eq 40.54 }
  #   end
  # end
  #
  # describe '#aumento!' do
  #   context 'aumento de salario' do
  #     it do
  #       subject.salario = 100
  #       subject.aumento! 10.0
  #       expect(subject.salario).to eq 110
  #     end
  #   end
  #
  #   context 'reducao salarial' do
  #     it do
  #       subject.salario = 100
  #       expect { subject.aumento!(-10.0) }.to raise_error(
  #         ArgumentError, 'CLT nao permite reducao salarial'
  #       )
  #     end
  #   end
  # end
end
