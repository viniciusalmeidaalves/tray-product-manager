# Arquitetura do Projeto

# Tray Product Manager

## Visão Geral

O **Tray Product Manager** é um projeto desenvolvido para facilitar a gestão em massa de produtos exportados da plataforma Tray Commerce.

A solução foi projetada para permitir que as informações sejam manipuladas através do Microsoft Excel utilizando conexões com o MySQL, eliminando a necessidade de alterações manuais diretamente na plataforma.

---

# Arquitetura

```text
                Exportação Tray
                       │
                       ▼
              Arquivos CSV (.csv)
                       │
                       ▼
                Banco de Dados MySQL
                       │
        ┌──────────────┼──────────────┐
        │              │              │
        ▼              ▼              ▼
   Produtos      Categorias      Variações
                       │
                       ▼
             Categorias Produtos
                       │
                       ▼
                Views de Negócio
        ┌──────────────┼──────────────┐
        │              │              │
        ▼              ▼              ▼
     Preços        Estoque         SEO
        │              │              │
        └──────────────┼──────────────┘
                       ▼
              Microsoft Excel
             (Power Query / Tabelas)
                       │
                       ▼
               Atualização em Massa
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
├── excel/
│
├── docs/
│   └── arquitetura.md
│
├── README.md
│
└── LICENSE
```

---

# Estrutura do Banco

O projeto trabalha inicialmente com quatro tabelas exportadas da Tray.

## produtos

Tabela principal contendo todas as informações do produto.

Exemplos:

- Nome
- Preço
- Estoque
- Peso
- SEO
- Fiscal

---

## variacao

Contém todas as variações do produto.

Exemplos:

- Cor
- Tamanho
- Voltagem
- Referência
- Preço da variação

---

## categorias_produtos

Responsável por relacionar o produto com suas categorias.

Campos principais:

- Categoria Principal
- Categoria Adicional 1
- Categoria Adicional 2

---

## categorias

Tabela criada pelo projeto para transformar os códigos da Tray em nomes legíveis.

Exemplo:

| Código | Categoria |
|---------|-----------|
| 1227 | Luminárias |
| 1367 | Luminárias Coloniais Decorativa |

---

# Views

As Views são responsáveis por organizar os dados para atualização em massa.

## vw_atualizacao_precos

Responsável pela atualização de:

- Preço
- Promoção
- Custo

---

## vw_atualizacao_medidas

Responsável por:

- Peso
- Comprimento
- Largura
- Altura

---

## vw_atualizacao_estoque

Responsável por:

- Estoque Atual
- Estoque Mínimo
- Disponibilidade

---

## vw_atualizacao_seo

Responsável por:

- SEO Título
- SEO Descrição
- SEO Palavra-chave
- URL Tray

---

## vw_atualizacao_fiscal

Responsável por:

- EAN
- NCM
- IPI
- Garantia

---

# Fluxo de Utilização

```text
Exportar CSV da Tray

        │

        ▼

Importar no MySQL

        │

        ▼

Executar categorias.sql

        │

        ▼

Executar views.sql

        │

        ▼

Conectar Excel (Power Query)

        │

        ▼

Editar informações

        │

        ▼

Importar novamente na Tray
```

---

# Objetivos do Projeto

- Centralizar informações da Tray.
- Facilitar atualizações em massa.
- Reduzir erros operacionais.
- Melhorar produtividade.
- Organizar dados por categorias.
- Integrar MySQL e Excel.
- Possibilitar futuras integrações via API.

---

# Evolução do Projeto

## V1

- Importação CSV
- Banco MySQL
- Views
- Excel
- Atualização em massa

---

## V2

- Procedures
- Functions
- Triggers
- Dashboard
- Automação da importação

---

## V3

- API Tray
- Interface Web
- Controle de usuários
- Histórico de alterações
- Atualização automática