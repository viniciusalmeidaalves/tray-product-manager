# Instalação

## Requisitos

- MySQL ou MariaDB
- Microsoft Excel com Power Query
- Conexão ODBC para MySQL
- Acesso aos arquivos exportados da Tray

## Passos de instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/viniciusalmeidaalves/software-project-template.git
   ```

2. Abra o diretório do projeto.
3. Verifique os arquivos SQL em `database/tray_tudo_natal/` e `database/tray_rje_iluminacao/`.
4. Importe os arquivos CSV da Tray para as tabelas MySQL:
   - `produtos`
   - `variacao`
   - `categorias_produtos`
5. Execute o script `categorias.sql` para criar a tabela auxiliar `categorias`.
6. Execute o script `views.sql` para criar as views de atualização.
7. Conecte o Excel ao banco de dados via ODBC ou Power Query.
8. Importe as views como tabelas no Excel para permitir atualizações em massa.

## Observações

- Os arquivos de exemplo estão organizados por loja em `database/tray_tudo_natal/` e `database/tray_rje_iluminacao/`.
- Mantenha os dados originais em backup antes de aplicar atualizações na Tray.
