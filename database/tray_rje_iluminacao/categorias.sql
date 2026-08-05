/*
=========================================================
Projeto : Tray Product Manager
Loja    : RJE Iluminação
Arquivo : categorias.sql
Autor   : Vinicius Almeida Alves
Versão  : 1.0.0

Descrição:
Criação da tabela de categorias e carga inicial das
categorias utilizadas pela loja RJE Iluminação na
plataforma Tray.
=========================================================
*/

DROP TABLE IF EXISTS categorias;

CREATE TABLE categorias (
    id INT NOT NULL,
    nome VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

/* ======================================================
   Carga inicial das categorias
   ====================================================== */

INSERT INTO categorias (id, nome) VALUES
(1211, 'Lâmpadas'),
(1227, 'Luminárias'),
(1251, 'Reatores'),
(1257, 'Refletores'),
(1263, 'Ventiladores'),
(1269, 'Postes'),

(1273, 'Luminárias Industriais'),
(1283, 'Lâmpadas Super LED'),
(1287, 'Lâmpadas de Descarga'),
(1289, 'Luminárias Prismáticas'),
(1291, 'Luminárias de Emergência'),
(1293, 'Luminárias Posto de Combustível LED'),
(1297, 'Luminárias Comerciais de Embutir'),
(1299, 'Luminárias High Bay LED'),
(1301, 'Luminárias Públicas LED'),
(1307, 'Reator de Descarga Externo'),
(1309, 'Reator de Descarga Interno'),
(1311, 'Refletores Industriais LED'),
(1313, 'Refletores Comerciais LED'),
(1315, 'Ventiladores Oscilantes'),
(1317, 'Ventiladores de Teto'),
(1319, 'Lustres'),

(1331, 'Luminárias Painel LED'),
(1347, 'Luminárias Sobrepor Herméticas'),
(1349, 'Luminárias Comerciais de Sobrepor'),
(1351, 'Luminárias Industriais LED'),
(1353, 'Postes Coloniais de Jardim'),
(1355, 'Postes de Jardim'),
(1359, 'Suporte Para Poste'),
(1361, 'Reator de Descarga Chassi'),
(1363, 'Reator de Descarga Base Rele'),
(1365, 'Reator de Descarga Galvanizado'),
(1367, 'Luminárias Coloniais Decorativa'),
(1369, 'Luminárias Acessórios'),

(1371, 'Luzes e Figuras de Natal'),
(1373, 'Mangueiras Luminosas'),
(1375, 'Piscas de LED'),
(1377, 'Cascatas LED'),
(1379, 'Redes de Luz LED'),
(1381, 'Tubos de LED Snowfall'),
(1383, 'Presépios Natalino'),
(1387, 'Figuras Luminosa Natalina'),
(1389, 'Cortinas de LED'),

(1393, 'Lustres Coloniais'),
(1395, 'Postes Telecônicos'),
(1397, 'Luminárias Públicas LED Solar'),
(1399, 'Refletores Solares LED'),
(1401, 'Postes Girafa');