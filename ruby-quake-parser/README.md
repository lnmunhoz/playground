# Quake Parser
Parser para extrair relatórios de arquivos de logs do jogo Quake 3.


## Setup
Se você não possui a linguagem Ruby instalada em sua máquina, siga um dos métodos a seguir:

### Download do Ruby Installer
Acesse http://rubyinstaller.org/downloads/, baixe o pacote refente ao seu sistema operacional e instale.

### Instalar o RVM (Ruby Version Manager)
O RVM proprociona a instalação de várias versōes do Ruby em sua máquina sem causar conflitos. Para instalar o RVM, siga os seguintes passos:

```
\curl -sSL https://get.rvm.io | bash -s stable --ruby
```

Aguarde o fim da instalação e execute:
```
rvm install ruby-2.2.3
```

Este comando irá instalar a ultima versão do Ruby em sua máquina. Agora, para utilizá-la:
```
rvm use ruby-2.2.3
```

### Rodando em um Docker Container

Inicie a sua `docker-machine`, o nome padrão criado pelo instalador é `default`:
```
docker-machine start default
```

Atribua as váriáveis de ambiente ao seu console:
```
eval "$(docker-machine env default)"
```

Faça o build do container:
```
docker build .
```

Logo após o build você obterá o `CONTAINER_ID`, em seguida você pode executar os
comandos dentro do container, por exemplo:
```
docker run CONTAINER_ID ruby qp.rb ranking --json games.log
```

## Comandos Disponiveis
Interface do `qp` (Quake Parser)
```
ruby qp.rb <comando> --options file.log
```
> Todos os comandos possuem a opção `--json` para imprimir em formato JSON. Caso você deseje visualizar em formato de `hash`, não informe esta opção.

### Exemplos
#### Obter o relatório de jogos:
```
ruby qp.rb games_report --json games.log
```

#### Obter o ranking de jogadores:
```
ruby qp.rb ranking --json games.log
```

#### Obter o relatório de causas de mortes:
```
ruby qp.rb kills_by_means --json games.log
```

# Testes
Para rodar os testes, execute:
```
rake test
```
