LOAD CSV WITH HEADERS FROM 'file:///pessoas.csv' AS row
MERGE (p:Pessoa {id: toInteger(row.id)})
SET p.nome = row.nome,
    p.cargo = row.cargo,
    p.cidade = row.cidade;

LOAD CSV WITH HEADERS FROM 'file:///empresas.csv' AS row
MERGE (e:Empresa {id: toInteger(row.id)})
SET e.nome = row.nome,
    e.setor = row.setor;

LOAD CSV WITH HEADERS FROM 'file:///habilidades.csv' AS row
MERGE (h:Habilidade {id: toInteger(row.id)})
SET h.nome = row.nome;

LOAD CSV WITH HEADERS FROM 'file:///trabalha_em.csv' AS row
MATCH (p:Pessoa {id: toInteger(row.pessoa_id)})
MATCH (e:Empresa {id: toInteger(row.empresa_id)})
MERGE (p)-[:TRABALHA_EM]->(e);

LOAD CSV WITH HEADERS FROM 'file:///conectado_com.csv' AS row
MATCH (p1:Pessoa {id: toInteger(row.pessoa1_id)})
MATCH (p2:Pessoa {id: toInteger(row.pessoa2_id)})
MERGE (p1)-[:CONECTADO_COM]->(p2)
MERGE (p2)-[:CONECTADO_COM]->(p1);

LOAD CSV WITH HEADERS FROM 'file:///possui_habilidade.csv' AS row
MATCH (p:Pessoa {id: toInteger(row.pessoa_id)})
MATCH (h:Habilidade {id: toInteger(row.habilidade_id)})
MERGE (p)-[:POSSUI_HABILIDADE]->(h);