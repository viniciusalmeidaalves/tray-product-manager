/*
=========================================================
Projeto : Tray Product Manager
Loja    : Tudo Natal
Arquivo : views.sql
Autor   : Vinicius Almeida Alves
Versão  : 1.0.0

Descrição:
Views utilizadas para atualização em massa de produtos
exportados da plataforma Tray.

Views disponíveis:
• vw_atualizacao_precos
• vw_atualizacao_medidas
• vw_atualizacao_estoque
• vw_atualizacao_seo
• vw_atualizacao_fiscal
=========================================================
*/

DROP VIEW IF EXISTS vw_atualizacao_precos;
DROP VIEW IF EXISTS vw_atualizacao_medidas;
DROP VIEW IF EXISTS vw_atualizacao_estoque;
DROP VIEW IF EXISTS vw_atualizacao_seo;
DROP VIEW IF EXISTS vw_atualizacao_fiscal;

-- =====================================================
-- VIEW: Atualização de Preços
-- =====================================================

CREATE VIEW vw_atualizacao_precos AS
SELECT
    v.`Código variação` AS codigo_variacao,
    p.`Código produto` AS codigo_produto,
    p.`Nome produto` AS nome_produto,

    c1.nome AS categoria,
    c2.nome AS subcategoria,

    COALESCE(v.`Referência`, p.`Referência`) AS referencia,

    v.`Variação principal` AS variacao_principal,
    v.`Valor variação principal` AS valor_variacao_principal,

    v.`Variação 2` AS variacao_secundaria,
    v.`Valor variação 2` AS valor_variacao_secundaria,

    v.`Preço venda` AS preco_venda,
    v.`Preço promoção` AS preco_promocao,
    p.`Preço de custo` AS preco_custo

FROM produtos p

LEFT JOIN variacao v
    ON p.`Código produto` = v.`Código produto`

LEFT JOIN categorias_produtos cp
    ON p.`Código produto` = cp.`Código produto`

LEFT JOIN categorias c1
    ON c1.id = cp.`Código categoria`

LEFT JOIN categorias c2
    ON c2.id = CAST(cp.`CÓDIGO CATEGORIA ADICIONAL 1` AS UNSIGNED)

ORDER BY
    c1.nome,
    c2.nome,
    p.`Nome produto`,
    COALESCE(v.`Referência`, p.`Referência`);

-- =====================================================
-- VIEW: Atualização de Medidas
-- =====================================================

CREATE VIEW vw_atualizacao_medidas AS
SELECT
    v.`Código variação` AS codigo_variacao,
    p.`Código produto` AS codigo_produto,
    p.`Nome produto` AS nome_produto,

    c1.nome AS categoria,
    c2.nome AS subcategoria,

    COALESCE(v.`Referência`, p.`Referência`) AS referencia,

    COALESCE(v.`Peso`, p.`Peso`) AS peso,
    COALESCE(v.`Comprimento`, p.`Comprimento`) AS comprimento,
    COALESCE(v.`Largura`, p.`Largura`) AS largura,
    COALESCE(v.`Altura`, p.`Altura`) AS altura

FROM produtos p

LEFT JOIN variacao v
    ON p.`Código produto` = v.`Código produto`

LEFT JOIN categorias_produtos cp
    ON p.`Código produto` = cp.`Código produto`

LEFT JOIN categorias c1
    ON c1.id = cp.`Código categoria`

LEFT JOIN categorias c2
    ON c2.id = CAST(cp.`CÓDIGO CATEGORIA ADICIONAL 1` AS UNSIGNED)

ORDER BY
    c1.nome,
    c2.nome,
    p.`Nome produto`;

-- =====================================================
-- VIEW: Atualização de Estoque
-- =====================================================

CREATE VIEW vw_atualizacao_estoque AS
SELECT
    v.`Código variação` AS codigo_variacao,
    p.`Código produto` AS codigo_produto,
    p.`Nome produto` AS nome_produto,

    c1.nome AS categoria,
    c2.nome AS subcategoria,

    COALESCE(v.`Referência`, p.`Referência`) AS referencia,

    p.`Estoque atual` AS estoque_atual,
    p.`Estoque mínimo` AS estoque_minimo,
    p.`Disponível` AS disponivel

FROM produtos p

LEFT JOIN variacao v
    ON p.`Código produto` = v.`Código produto`

LEFT JOIN categorias_produtos cp
    ON p.`Código produto` = cp.`Código produto`

LEFT JOIN categorias c1
    ON c1.id = cp.`Código categoria`

LEFT JOIN categorias c2
    ON c2.id = CAST(cp.`CÓDIGO CATEGORIA ADICIONAL 1` AS UNSIGNED)

ORDER BY
    c1.nome,
    c2.nome,
    p.`Nome produto`;

-- =====================================================
-- VIEW: Atualização SEO
-- =====================================================

CREATE VIEW vw_atualizacao_seo AS
SELECT
    p.`Código produto` AS codigo_produto,
    p.`Nome produto` AS nome_produto,

    c1.nome AS categoria,
    c2.nome AS subcategoria,

    p.`SEO Título` AS seo_titulo,
    p.`SEO descrição simplificada` AS seo_descricao,
    p.`SEO palavra chave` AS seo_palavra_chave,
    p.`Endereço do Produto (URL Tray)` AS url_tray

FROM produtos p

LEFT JOIN categorias_produtos cp
    ON p.`Código produto` = cp.`Código produto`

LEFT JOIN categorias c1
    ON c1.id = cp.`Código categoria`

LEFT JOIN categorias c2
    ON c2.id = CAST(cp.`CÓDIGO CATEGORIA ADICIONAL 1` AS UNSIGNED)

ORDER BY
    c1.nome,
    c2.nome,
    p.`Nome produto`;

-- =====================================================
-- VIEW: Atualização Fiscal
-- =====================================================

CREATE VIEW vw_atualizacao_fiscal AS
SELECT
    p.`Código produto` AS codigo_produto,
    p.`Nome produto` AS nome_produto,

    c1.nome AS categoria,
    c2.nome AS subcategoria,

    COALESCE(v.`Referência`, p.`Referência`) AS referencia,

    p.`EAN` AS ean,
    p.`NCM` AS ncm,
    p.`Valor do IPI` AS valor_ipi,
    p.`Garantia` AS garantia

FROM produtos p

LEFT JOIN variacao v
    ON p.`Código produto` = v.`Código produto`

LEFT JOIN categorias_produtos cp
    ON p.`Código produto` = cp.`Código produto`

LEFT JOIN categorias c1
    ON c1.id = cp.`Código categoria`

LEFT JOIN categorias c2
    ON c2.id = CAST(cp.`CÓDIGO CATEGORIA ADICIONAL 1` AS UNSIGNED)

ORDER BY
    c1.nome,
    c2.nome,
    p.`Nome produto`;