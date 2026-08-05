/*
=========================================================
Projeto : Tray Product Manager
Loja    : Tudo Natal
Arquivo : categorias.sql
Autor   : Vinicius Almeida Alves
Versão  : 1.0.0
Descrição:
Script responsável pela criação e carga das categorias
utilizadas na loja Tray Tudo Natal.
=========================================================
*/

DROP TABLE IF EXISTS categorias;

CREATE TABLE categorias (
    id INT NOT NULL,
    nome VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

/*
=========================================================
Carga inicial das categorias Tray
=========================================================
*/

INSERT INTO categorias (id, nome) VALUES
(2, 'Mangueiras Luminosas'),
(10, 'Presépios'),
(12, 'Luzes de Natal'),
(17, 'Rede de LED'),
(19, 'Cortinas LED'),
(22, 'Árvores de Natal'),
(31, 'Figuras de Natal'),
(41, 'Cascatas LED'),
(45, 'Mangueiras LED 5050 Chata'),
(47, 'Mangueiras LED'),
(49, 'Mangueira Neon 2835 8x16mm 120 LEDs/m'),
(55, 'Árvore Cerejeira'),
(57, 'Árvore Luminosa Gigante'),
(61, 'Poste'),
(63, 'Portais'),
(65, 'Jardins e Fachadas'),
(69, 'Instagramáveis 3D'),
(73, 'Painéis'),
(77, 'Presépio de Natal Polietileno'),
(79, 'Presépio de Natal Estrutural'),
(81, 'Snowfall'),
(83, 'Fogos de Artifício'),
(87, 'Pisca-Piscas'),
(89, 'Pisca LED Blindado IP44'),
(91, 'Pisca LED Blindado IP65'),
(93, 'Pisca LED'),
(95, 'Pisca LED Fixo IP44 1,8 mm'),
(97, 'Pisca LED Fixo IP44 2,2 mm'),
(101, 'Pisca LED Strobo IP44 1,8 mm'),
(103, 'Pisca LED Strobo IP44 2,2 mm'),
(121, 'Pisca LED 8 Funções com Memória 31V IP44 1,6 mm'),
(125, 'Pisca LED Fixo 31V IP44 1,6 mm'),
(127, 'Cascatas LED Fixo'),
(131, 'Cascatas LED 8 Funções'),
(133, 'Cortina LED Fixo'),
(135, 'Cortina LED com Controle Remoto'),
(137, 'Cortina LED Strobo'),
(143, 'Mangueira 12mm 32 LED/m'),
(145, 'Mangueira 13mm 36 LED/m'),
(147, 'Mangueira Strobo 13mm 36 LED/m'),
(149, 'Mangueiras Neon'),
(151, 'Figuras de Páscoa'),
(153, 'Mangueira 11mm 24 LED/m'),
(155, 'Sputnik'),
(157, 'Fogos de Artifício'),
(159, 'Snowfall 1 Tubo 100 cm'),
(161, 'Snowfall 8 Tubos 50 cm'),
(163, 'Pisca LED Blindado IP44 31V');