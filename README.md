# RobotFramework

Repositório destinado a prática da utilização da ferramenta RobotFramework. Utilizando o **[Plano de Testes](https://karina-y.notion.site/Sauce-Demo-07f046694578493aa544796df33fe4db)** elaborado por mim empregando o site **[Sauce Demo](https://www.saucedemo.com/v1/)**.

## Features

- Selenium Library

- Collections

##  Pré-requisitos
A aplicação foi testada com as versões das ferramentas, que são listadas abaixo:

- **Python 3.10.12**

- **Robot Framework 7.0.1**

- **pip 22.0.2**

Para que não haja problemas com a formatação do arquivo se sugere o uso da IDE Visual Studio Code.

## Estrutura

Para o desenvolvimento deste projeto a estrutura de diretórios é:

- Auto: diretório responsável por armazenar os recursos necessários para a automação dos testes.

- resources: Local onde foram armazenados:

1. global: diretório responsável por armazenar o arquivo, que contém variáveis e keywords de uso global, portanto compartilhada entre os testes para diferentes épicos.

2. keywords: diretório responsável por armazenar os arquivos que contém as keywords empregadas nos testes.

3. pages: diretório responsável por armazenar os arquivos que contém as variáveis empregadas nos testes.

- tests: diretório que contém os sub diretórios utilizados para armazenar os arquivos onde foram codificados os testes.

- results: diretório responsável por armazenar os arquivos com os resultados dos testes.

## Instalação

Utilizando o Terminal/Console:

1. Clone o projeto : `git clone https://github.com/KarinaYamashita/RobotFramework.git`

2. Acesse a pasta test do projeto

3. Execute o comando: `robot -d results nome_do_arquivo.robot`

Obs: Substituir o nome do arquivo deseja no comando apresentado no item 3.

## Autora :princess:

- Karina Yamashita 

## Como contribuir :sparkles:

Por favor, leia [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) para detalhes do nosso código de conduta, e sobre como submeter um pull request para nós.# RobotFramework
