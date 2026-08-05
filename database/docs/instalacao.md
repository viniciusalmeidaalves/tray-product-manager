# Instalação

Este guia apresenta os passos necessários para configurar o **Tray Product Manager** em um ambiente local.

---

# Pré-requisitos

Antes de iniciar, certifique-se de possuir os seguintes softwares instalados:

- MySQL Server 8.0 ou superior
- MySQL Workbench
- Microsoft Excel 365 (ou superior)
- Power Query (integrado ao Excel)
- Git (opcional)

---

# Estrutura do Projeto

```text
tray-product-manager/
│
├── database/
│   ├── tray_tudo_natal/
│   │   ├── categorias.sql
│   │   └── views.sql
│   │
│   └── tray_rje_iluminacao/
│       ├── categorias.sql
│       └── views.sql
│
├── docs/
│
├── excel/
│   ├── tudo_natal/
│   └── rje_iluminacao/
│
└── screenshots/
```

---

# 1. Clonar o Repositório

```bash
git clone https://github.com/viniciusalmeidaalves/tray-product-manager.git
```

ou faça o download do projeto em formato **ZIP** diretamente pelo GitHub.

---

# 2. Criar os Bancos de Dados

No MySQL Workbench execute:

```sql
CREATE DATABASE tray_tudo_natal;
CREATE DATABASE tray_rje_iluminacao;
```

---

# 3. Importar os Arquivos da Tray

Para cada loja importe os arquivos exportados da plataforma Tray.

Arquivos necessários:

- produtos
- variacao
- categorias_produtos

Essas tabelas serão utilizadas pelas Views para organização das informações.

---

# 4. Criar a Tabela de Categorias

Após importar os arquivos execute o script correspondente.

## Tudo Natal

```
database/
└── tray_tudo_natal/
    └── categorias.sql
```

## RJE Iluminação

```
database/
└── tray_rje_iluminacao/
    └── categorias.sql
```

O script criará a tabela **categorias** e realizará a carga inicial das categorias da loja.

---

# 5. Criar as Views

Execute o arquivo **views.sql** correspondente à loja.

## Tudo Natal

```
database/
└── tray_tudo_natal/
    └── views.sql
```

## RJE Iluminação

```
database/
└── tray_rje_iluminacao/
    └── views.sql
```

Serão criadas automaticamente as seguintes Views:

- vw_atualizacao_precos
- vw_atualizacao_estoque
- vw_atualizacao_medidas
- vw_atualizacao_seo
- vw_atualizacao_fiscal

---

# 6. Abrir a Planilha Excel

Abra a planilha correspondente à loja.

```text
excel/
├── tudo_natal/
└── rje_iluminacao/
```

---

# 7. Atualizar as Conexões

No Excel acesse:

```text
Dados
→ Atualizar Tudo
```

A planilha carregará automaticamente as informações provenientes das Views do MySQL.

---

# 8. Atualizar Informações

As planilhas permitem atualização em massa de:

- Preços
- Estoque
- Medidas
- SEO
- Dados fiscais

Após as alterações, exporte novamente os dados em formato **CSV**.

---

# 9. Importar na Tray

Com o CSV atualizado, utilize a ferramenta de importação da plataforma Tray para atualizar os produtos da loja.

---

# Fluxo de Funcionamento

```text
Tray Commerce
      │
      ▼
Exportação CSV
      │
      ▼
Banco MySQL
      │
      ▼
Views SQL
      │
      ▼
Microsoft Excel
      │
Atualização dos Dados
      │
      ▼
Exportação CSV
      │
      ▼
Importação na Tray
```

---

# Arquivos SQL

Cada loja possui seus próprios scripts SQL.

## Tudo Natal

```
database/
└── tray_tudo_natal/
    ├── categorias.sql
    └── views.sql
```

## RJE Iluminação

```
database/
└── tray_rje_iluminacao/
    ├── categorias.sql
    └── views.sql
```

---

# Observações

- O projeto foi desenvolvido utilizando MySQL 8.
- As Views são responsáveis por organizar os dados para atualização em massa no Excel.
- A utilização das Views evita alterações diretas nas tabelas originais exportadas pela Tray.
- O Excel funciona como camada de edição, permitindo maior produtividade e organização durante o processo de atualização dos produtos.

---

# Próximas Versões

Planejamento para futuras evoluções do projeto:

- Procedures para automatização de processos
- Functions para tratamento de dados
- Dashboard em Excel
- Integração com Power BI
- Integração via API da Tray
- Automatização completa do fluxo de importação e exportação