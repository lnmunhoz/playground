# Mais que Mocks, Dublês de Testes! - Ismael Soares

Softwares são cheios de dependências. Dubles oferecem uma maneira de isolar as
dependências.


### Tipos de Dependências:
- Entrada Indireta - Dado de um objeto real que ele depende.
- Saida Indireta - Resultado de um teste.

### Vantagens
- Isola testes de unidade
- Acelera preparação de execução de testes
- Permite testar mesmo que um compononente não esteja disponível
- Evita eveitos colaterais indesejáveis.

## Tipos de Mocks

### Dummy
Usado apenas para que a execução do teste seja possível, por exemplo, atributos
obrigatórios para testar aquele domínio.

### Test Stub
Prove informação necessária para a unidade de teste, por exemplo, uma classe
calendário sempre retornar um dia específico, não importando qual seja o dia
real atual.

Existe também o chamado **Test Stub Sabotador**, para simular erros. Ele provê
informações não esperadas pelo método para causar erros e tratar excessões.

### Test Spy
Captura e armazena as chamadas indiretas.

### Mock Object
- Verifica chamas indiretas e provê dados ncessários ao teste.
- Retornos pré-estabelecidos e verificações de interações.
- Verifica diretamente os efeitos colaterais causados pela unidade sob teste

##### Tipos de Mock Objects
- Estrito: Espera chamadas na mesma ordem que especificado.
- Tolerante: Aceita qualquer ordem das chamadas, inclusive com chamadas a mais
  ou menos.

### Fake Object
Substitui a funcionalidade real por uma implementação alternativa.

## Conclusões
- **Stub** para testar estado.
- **Mock** para testar comportamento.

## Referências
- Artigo *Mocks aren't stubs -  Martin Fowler*
- *Curso de Versao com Mariana Bravo de Testes Automatizados*
