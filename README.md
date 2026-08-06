# Tray Product Manager

![MySQL](https://img.shields.io/badge/MySQL-Database-blue)
![Excel](https://img.shields.io/badge/Microsoft-Excel-green)
![SQL](https://img.shields.io/badge/SQL-Views-orange)
![License](https://img.shields.io/badge/license-MIT-blue)
![Version](https://img.shields.io/badge/version-1.0-success)

Uma solução para gerenciamento e atualização em massa de produtos da plataforma Tray Commerce utilizando MySQL, SQL Views e Microsoft Excel.

---

## Visão Geral

O **Tray Product Manager** ajuda a atualizar catálogos de produtos da Tray Commerce em lote, usando MySQL e Microsoft Excel como interface de edição.

A solução organiza dados exportados da Tray em um banco MySQL e expõe views SQL que podem ser carregadas no Excel via Power Query ou ODBC.

---

## Funcionalidades Principais

- Atualização em massa de preços
- Atualização em massa de estoque
- Atualização em massa de medidas
- Atualização em massa de SEO
- Atualização em massa de dados fiscais

---

## Tecnologias

- MySQL / MariaDB
- SQL
- Microsoft Excel
- Power Query
- CSV
- ODBC
- Git
- GitHub

---

## Estrutura do Projeto

```text
tray-product-manager/
├── CHANGELOG.md
├── CODE_OF_CONDUCT.md
├── CONTRIBUTING.md
├── LICENSE
├── README.md
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md
│   │   └── feature_request.md
│   ├── config.yml
│   └── PULL_REQUEST_TEMPLATE.md
├── database/
│   ├── docs/
│   │   ├── arquitetura.md
│   │   ├── fluxo.md
│   │   ├── instalacao.md
│   │   ├── roadmap.md
│   │   ├── requisitos.md
│   │   └── tecnologias.md
│   ├── excel/
│   ├── tray_rje_iluminacao/
│   │   ├── categorias.sql
│   │   └── views.sql
│   └── tray_tudo_natal/
│       ├── categorias.sql
│       └── views.sql
└── .github/workflows/
    └── ci.yml
```

---

## Documentação

A documentação completa está disponível na pasta `database/docs`:

- 📘 [Instalação](database/docs/instalacao.md)
- 📘 [Arquitetura](database/docs/arquitetura.md)
- 📘 [Fluxo](database/docs/fluxo.md)
- 📘 [Roadmap](database/docs/roadmap.md)
- 📘 [Requisitos](database/docs/requisitos.md)
- 📘 [Tecnologias](database/docs/tecnologias.md)

---

## Uso

1. Exporte os dados de produtos, variações e categorias da Tray em CSV.
2. Importe os arquivos CSV para o MySQL.
3. Execute `categorias.sql` para criar a tabela auxiliar de categorias.
4. Execute `views.sql` para criar as views de atualização.
5. Conecte o Excel via ODBC ou Power Query.
6. Importe cada view como tabela no Excel.
7. Edite apenas os campos necessários e exporte os dados de volta para a Tray.

---

## Estrutura de Dados

| Tabela | Descrição |
|--------|-----------|
| `produtos` | Cadastro principal dos produtos |
| `variacao` | Cadastro das variações |
| `categorias_produtos` | Relacionamento produto x categoria |
| `categorias` | Tabela auxiliar para tradução de categorias |

---

## Views Disponíveis

| View | Finalidade |
|------|-----------|
| `vw_atualizacao_precos` | Atualização de preços |
| `vw_atualizacao_medidas` | Atualização de medidas |
| `vw_atualizacao_estoque` | Atualização de estoque |
| `vw_atualizacao_seo` | Atualização de SEO |
| `vw_atualizacao_fiscal` | Atualização fiscal |

---

## Bancos Homologados

- Tray Tudo Natal
- Tray RJE Iluminação

---

## Roadmap

### Versão 1.0

- Estrutura básica do projeto
- Scripts SQL de categorias e views
- Documentação inicial
- Suporte ao Excel via Power Query

### Futuras melhorias

- Automação de importação/exportação
- Dashboards e relatórios
- Integração com API Tray
- Regras de validação de dados
- Suporte a novas lojas Tray

---

## Contribuição

Leia [CONTRIBUTING.md](CONTRIBUTING.md) para saber como contribuir.

---

## Licença

Este projeto está licenciado sob a licença [MIT](LICENSE).

---

## Autor

**Vinicius Almeida Alves**

- GitHub: https://github.com/viniciusalmeidaalves
- LinkedIn: https://www.linkedin.com/in/viniciusalmeidaalves/
