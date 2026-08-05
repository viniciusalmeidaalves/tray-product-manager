# Tray Product Manager

![MySQL](https://img.shields.io/badge/MySQL-Database-blue)
![Excel](https://img.shields.io/badge/Microsoft-Excel-green)
![SQL](https://img.shields.io/badge/SQL-Views-orange)
![License](https://img.shields.io/badge/license-MIT-blue)
![Version](https://img.shields.io/badge/version-1.0-success)

Uma solução para gerenciamento e atualização em massa de produtos da plataforma Tray Commerce utilizando MySQL, SQL Views e Microsoft Excel.

---

## Objetivo

O **Tray Product Manager** foi desenvolvido para facilitar a manutenção de grandes catálogos de produtos exportados da plataforma Tray, eliminando processos repetitivos e reduzindo erros operacionais.

A solução organiza os dados em um banco **MySQL** e disponibiliza **Views SQL** específicas para atualização em massa através do **Microsoft Excel**, tornando o processo mais rápido, seguro e produtivo.

### Principais funcionalidades

- 💰 Atualização de Preços
- 📦 Atualização de Estoque
- 📏 Atualização de Medidas
- 🔍 Atualização de SEO
- 📄 Atualização Fiscal

---

# Tecnologias

- MySQL / MariaDB
- SQL (Views)
- Microsoft Excel
- Power Query
- CSV
- Git
- GitHub

---

# Arquitetura

```text
              Plataforma Tray
                     │
                     ▼
             Exportação CSV
                     │
                     ▼
             Banco MySQL
                     │
      ┌──────────────┼──────────────┐
      ▼              ▼              ▼
 Produtos      Categorias      Variações
                     │
                     ▼
              Views SQL
      ┌──────────────┼──────────────┐
      ▼              ▼              ▼
 Preços        Estoque         SEO
                     │
                     ▼
              Microsoft Excel
```

---

# Estrutura do Projeto

```text
tray-product-manager/

│
├── database/
│   │
│   ├── tray_tudo_natal/
│   │   ├── categorias.sql
│   │   └── views.sql
│   │
│   └── tray_rje_iluminacao/
│       ├── categorias.sql
│       └── views.sql
│
├── docs/
│   ├── arquitetura.md
│   └── fluxo.md
│
├── README.md
└── LICENSE
```

---

# Funcionalidades

## Atualização de Preços

- Preço de Venda
- Preço Promocional
- Preço de Custo

---

## Atualização de Medidas

- Peso
- Comprimento
- Largura
- Altura

---

## Atualização de Estoque

- Estoque Atual
- Estoque Mínimo
- Disponibilidade

---

## Atualização SEO

- SEO Título
- SEO Descrição
- SEO Palavra-chave
- URL do Produto

---

## Atualização Fiscal

- EAN
- NCM
- IPI
- Garantia

---

# Fluxo de Utilização

```text
Tray
 │
 ▼
Exportação CSV
 │
 ▼
Importação MySQL
 │
 ▼
categorias.sql
 │
 ▼
views.sql
 │
 ▼
Microsoft Excel
 │
 ▼
Atualização dos Dados
 │
 ▼
Importação na Tray
```

---

# Estrutura do Banco

|Tabela|Descrição|
|------|---------|
|produtos|Cadastro principal dos produtos|
|variacao|Cadastro das variações|
|categorias_produtos|Relacionamento Produto x Categoria|
|categorias|Tabela auxiliar criada pelo projeto|

---

# Views Disponíveis

|View|Descrição|
|----|---------|
|vw_atualizacao_precos|Atualização de preços|
|vw_atualizacao_medidas|Atualização de medidas|
|vw_atualizacao_estoque|Atualização de estoque|
|vw_atualizacao_seo|Atualização SEO|
|vw_atualizacao_fiscal|Atualização fiscal|

---

# Bancos Homologados

- ✅ Tray Tudo Natal
- ✅ Tray RJE Iluminação

A arquitetura permite adicionar novas lojas Tray reutilizando a mesma estrutura de banco de dados e Views.

---

# Roadmap

### Versão 1.0

- Importação de CSV
- Banco MySQL
- Views SQL
- Integração com Excel

### Versão 2.0

- Stored Procedures
- Functions
- Triggers
- Dashboards
- Automação de Processos

### Versão 3.0

- Integração com API Tray
- Interface Web
- Controle de Usuários
- Histórico de Alterações
- Atualização Automática

---

# Documentação

A documentação completa está disponível na pasta **docs**.

- 📘 arquitetura.md
- 📘 fluxo.md

---

# Licença

Distribuído sob a licença **MIT**.

---

# Autor

**Vinicius Almeida Alves**

Engenheiro da Computação  
MBA em Engenharia de Software

GitHub:
https://github.com/viniciusalmeidaalves

LinkedIn:
https://www.linkedin.com/in/viniciusalmeidaalves/