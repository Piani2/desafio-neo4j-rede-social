// 1. Pessoas mais conectadas
MATCH (p:Pessoa)-[:CONECTADO_COM]->()
RETURN p.nome AS Pessoa, count(*) AS TotalConexoes
ORDER BY TotalConexoes DESC;

// 2. Empresas com mais profissionais
MATCH (p:Pessoa)-[:TRABALHA_EM]->(e:Empresa)
RETURN e.nome AS Empresa, count(p) AS TotalProfissionais
ORDER BY TotalProfissionais DESC;

// 3. Habilidades mais comuns
MATCH (p:Pessoa)-[:POSSUI_HABILIDADE]->(h:Habilidade)
RETURN h.nome AS Habilidade, count(p) AS TotalPessoas
ORDER BY TotalPessoas DESC;

// 4. Pessoas com habilidade em Neo4j
MATCH (p:Pessoa)-[:POSSUI_HABILIDADE]->(h:Habilidade {nome: "Neo4j"})
RETURN p.nome AS Nome, p.cargo AS Cargo, p.cidade AS Cidade;

// 5. Sugestão de nova conexão para Ana
MATCH (p1:Pessoa {nome: "Ana"})-[:CONECTADO_COM]->(p2:Pessoa)-[:CONECTADO_COM]->(p3:Pessoa)
WHERE p3.nome <> "Ana" AND NOT (p1)-[:CONECTADO_COM]->(p3)
RETURN DISTINCT p3.nome AS SugestaoDeConexao;