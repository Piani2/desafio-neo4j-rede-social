# Desafio Neo4j - Rede Social Profissional

## Descrição do projeto
Este projeto foi desenvolvido como parte do desafio prático da DIO utilizando Neo4j.

O objetivo foi construir um banco de dados em grafo para representar uma rede social profissional, conectando pessoas, empresas e habilidades.

## Objetivo
Responder perguntas de negócio como:
- Quem são as pessoas mais conectadas?
- Quais empresas possuem mais profissionais?
- Quais habilidades são mais frequentes?
- Quem possui conhecimento em Neo4j?
- Quais conexões podem ser sugeridas na rede?

## Justificativa da modelagem em grafo
A escolha do modelo em grafo foi feita porque o problema envolve muitas conexões entre entidades.

Nesse cenário, o Neo4j facilita a representação das relações entre pessoas, empresas e habilidades, tornando as consultas mais intuitivas.

## Estrutura do grafo

### Labels
- Pessoa
- Empresa
- Habilidade

### Relacionamentos
- TRABALHA_EM
- CONECTADO_COM
- POSSUI_HABILIDADE

### Propriedades

**Pessoa**
- id
- nome
- cargo
- cidade

**Empresa**
- id
- nome
- setor

**Habilidade**
- id
- nome

## Estrutura do repositório
- `data/` -> arquivos CSV com os dados
- `cypher/` -> scripts Cypher de criação, carga e consultas
- `img/` -> imagens e evidências visuais
- `docs/` -> documentação complementar

## Como executar o projeto

### 1. Criar a base no Neo4j Desktop
Criar uma instância local e iniciar o banco.

### 2. Importar os arquivos CSV
Copiar os arquivos CSV para a pasta `import` da instância.

### 3. Rodar as constraints
Executar o arquivo `01-criacao-constraints.cypher`.

### 4. Rodar a carga de dados
Executar o arquivo `02-carga-dados.cypher`.

### 5. Rodar as consultas
Executar o arquivo `03-consultas-negocio.cypher`.

## Perguntas de negócio respondidas
1. Quem são as pessoas mais conectadas?
2. Quais empresas concentram mais profissionais?
3. Quais habilidades são mais comuns?
4. Quem possui habilidade em Neo4j?
5. Quais novas conexões podem ser sugeridas?

## Evidências visuais
Adicionar aqui os prints das consultas e da visualização do grafo.

## Dificuldades encontradas
Como foi meu primeiro contato com Neo4j, a principal dificuldade foi entender a lógica de modelagem em grafos e a importação de dados com `LOAD CSV`.

Também foi necessário compreender a diferença entre nós, relacionamentos e propriedades para estruturar corretamente o projeto.

## Conclusão
O projeto permitiu entender como o Neo4j pode ser usado para representar relações entre entidades de forma visual e intuitiva.

A utilização de grafos se mostrou adequada para cenários em que a análise de conexões é importante.
