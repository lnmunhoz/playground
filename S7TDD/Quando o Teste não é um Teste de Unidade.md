# Quando o Teste não é um Teste de Unidade

## Testes de Unidade
- TDD é baseado em testes de unidade.
- Rodar sempre antes de um commit.
- Testes de Unidade são importantes. Assim como prática de deixá-los conduzir
  o nosso desenvolvimento.


## Testes de Integração

São semelhantes aos testes de unidade, precisamos começar o mais cedo
possível.

- Mais fáceis de escrever, pois não é preciso mockar outros componentes.
- Mais lentos para executar. Podem levar várias horas.
- Os mais úteis são os que replicam o comportamento do usuário.
- Devem fazer parte do build noturno.
- Rodar antes de dar um push.
- Garantir:
  - Que as unidades de código vão funcionar juntas.
  - Que todas as camadas estão integradas adequadamente.
  - Que os processos estão funcionando.

## Testes de Interface de Usuário
- Podem parecer um pouco frágeis
- Mudanças relativamente simples exigem que você atualize-os.
- Não tente criar estes testes para todo o fluxo de navegação.
- Verificar automaticamente a lógica da interface de usuário.
- Podem ser executados constantemente como parte do seu processo de build.

## Testes de Aceitação do Usuário

### Acceptance Test-Driver Development (ATDD)

É muito similar ao TDD. Dife3rencia apenas pelo fato da maior colaboração entre
os outros setores. (Desenvolvedor, Analista de negócio, Analista de Qualidade)

#### Aplicando:
- Debater os Requisitos
- Refinar os testes de aceitação.
- Desenvolver e Implementar o Código com TDD.
- Revisar e Apresentar os Resultados dos Testes de Aceitação.
