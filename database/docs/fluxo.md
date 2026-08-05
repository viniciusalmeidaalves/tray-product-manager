# Fluxo de Utilização

# Tray Product Manager

Este documento descreve o fluxo operacional para utilização do projeto **Tray Product Manager**, desde a exportação dos dados da plataforma Tray até a atualização das informações.

---

# Fluxo Geral

```text
           Plataforma Tray
                  │
                  ▼
        Exportação dos arquivos CSV
                  │
                  ▼
      Importação para o Banco MySQL
                  │
                  ▼
      Execução dos scripts SQL
        • categorias.sql
        • views.sql
                  │
                  ▼
        Banco de Dados Organizado
                  │
                  ▼
      Conexão Microsoft Excel
          (Power Query / ODBC)
                  │
                  ▼
      Atualização das informações
                  │
                  ▼
      Exportação dos dados tratados
                  │
                  ▼
      Importação na Plataforma Tray
```

---

# Etapa 1 - Exportação

Exportar os seguintes arquivos da plataforma Tray:

- Produtos
- Variações
- Categorias dos Produtos

Formato:

```
CSV
```

---

# Etapa 2 - Importação

Importar os arquivos CSV para o banco MySQL.

Tabelas:

```
produtos

variacao

categorias_produtos
```

---

# Etapa 3 - Estrutura Auxiliar

Executar:

```
categorias.sql
```

Este script cria:

- tabela categorias

Responsável por traduzir os códigos das categorias da Tray.

---

# Etapa 4 - Views

Executar:

```
views.sql
```

Serão criadas as seguintes Views:

- vw_atualizacao_precos
- vw_atualizacao_medidas
- vw_atualizacao_estoque
- vw_atualizacao_seo
- vw_atualizacao_fiscal

---

# Etapa 5 - Excel

Conectar o Excel ao banco MySQL.

Recomendado:

- Power Query
- Conexão ODBC

Cada View será importada como uma tabela independente.

Exemplo:

```
vw_atualizacao_precos

↓

Tabela Excel
```

---

# Etapa 6 - Organização

No Excel é recomendado utilizar:

- Segmentação de Dados
- Tabelas Dinâmicas
- Filtros
- Validação de Dados

Isso facilita atualizações em massa.

---

# Etapa 7 - Atualização

Editar apenas os campos necessários.

Exemplos:

## Preços

- Preço Venda
- Promoção
- Custo

---

## Medidas

- Peso
- Comprimento
- Largura
- Altura

---

## Estoque

- Estoque Atual
- Estoque Mínimo
- Disponível

---

## SEO

- SEO Título

- SEO Descrição

- SEO Palavra-chave

---

## Fiscal

- NCM

- EAN

- IPI

- Garantia

---

# Fluxo por Loja

O projeto suporta múltiplas lojas Tray.

Estrutura:

```
Tray

        │

        ├──────────────┐

        ▼              ▼

Tudo Natal      RJE Iluminação

        │              │

        ▼              ▼

Banco MySQL     Banco MySQL

        │              │

        ▼              ▼

Mesmas Views    Mesmas Views

        │              │

        └──────┬───────┘

               ▼

        Microsoft Excel
```

---

# Fluxo Futuro

Versão 2

```
CSV

↓

MySQL

↓

Procedures

↓

Functions

↓

Triggers

↓

Dashboard

↓

Excel
```

---

# Fluxo Futuro (API)

Versão 3

```
Tray API

↓

Integração

↓

Banco MySQL

↓

Views

↓

Dashboard

↓

Atualização Automática
```

---

# Resumo

```text
Tray

↓

CSV

↓

MySQL

↓

Categorias

↓

Views

↓

Excel

↓

Tratamento

↓

Importação Tray
```