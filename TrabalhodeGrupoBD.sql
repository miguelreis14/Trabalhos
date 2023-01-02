DROP TABLE cpu;
DROP TABLE ram;
DROP TABLE gpu;
DROP TABLE psu;
DROP TABLE mobo;
DROP TABLE marcas;
DROP TABLE vendas;
DROP TABLE clientes;
DROP TABLE chips;


CREATE TABLE clientes (
client_id NUMBER PRIMARY KEY,
nome VARCHAR2 (50 CHAR) NOT NULL,
email VARCHAR2 (50 CHAR) UNIQUE, 
NIF NUMBER (9) NOT NULL UNIQUE
);

INSERT INTO  clientes VALUES (1,'Jose Manuel','manel619@coisa.com',123456789);
INSERT INTO  clientes VALUES (2,'Roberto Dias','Rob@coisa.com',113546879);
INSERT INTO  clientes VALUES (3,'Franciso Pontes','Frp78@coisa.com',125356789);
INSERT INTO  clientes VALUES (4,'Alexandre Rodrigues','AlexRodri659@coisa.com',113542879);
INSERT INTO  clientes VALUES (5,'Antonio Santos','ToniSan234@coisa.com',123546879);
INSERT INTO  clientes VALUES (6,'Anabela Correia','AnaCorBela@coisa.com',113246879);
INSERT INTO  clientes VALUES (7,'Ivo Pires','Ivo_Pires_22@coisa.com',113549879);
INSERT INTO  clientes VALUES (8,'Bruno Gama','BGR3352@coisa.com',113126879);
INSERT INTO  clientes VALUES (9,'Rafael Gralha','Rafa779@coisa.com',116546879);
INSERT INTO  clientes VALUES (10,'Ana Rita','Rita_Gil@coisa.com',113736879);
INSERT INTO  clientes VALUES (11,'Ines Gomes','SeniG@coisa.com',143546829);

CREATE TABLE vendas (
venda_id NUMBER PRIMARY KEY,
comprador REFERENCES clientes (client_id),
valor_final NUMBER(10,2) DEFAULT '0' NOT NULL
);

INSERT INTO vendas VALUES (1,1,599.99);
INSERT INTO vendas VALUES (2,1,65.99);
INSERT INTO vendas VALUES (3,2,199.99);

CREATE TABLE marcas (
marca_id NUMBER PRIMARY KEY,
marca_nome VARCHAR2 (50 CHAR) UNIQUE NOT NULL
);

INSERT INTO marcas VALUES(1,'AMD');
INSERT INTO marcas VALUES(2,'INTEL');
INSERT INTO marcas VALUES(3,'CORSAIR');
INSERT INTO marcas VALUES(4,'G.SKILL');
INSERT INTO marcas VALUES(5,'KINGSTON');
INSERT INTO marcas VALUES(6,'CRUCIAL');
INSERT INTO marcas VALUES(7,'SEASONIC');
INSERT INTO marcas VALUES(8,'COOLER MASTER');
INSERT INTO marcas VALUES(9,'ASUS');
INSERT INTO marcas VALUES(11,'NVIDIA');
INSERT INTO marcas VALUES(13,'ZOTAC');
INSERT INTO marcas VALUES(14,'GIGABYTE');
INSERT INTO marcas VALUES(15,'TUF');
INSERT INTO marcas VALUES(16,'ROG STRIX');
INSERT INTO marcas VALUES(17,'MSI');
INSERT INTO marcas VALUES(18,'EVGA');
INSERT INTO marcas VALUES(19,'Sapphire');

CREATE TABLE cpu (
cpu_id NUMBER PRIMARY KEY,
nome VARCHAR2(50 CHAR) UNIQUE,
marca REFERENCES marcas (marca_id),
socket VARCHAR2 (50 CHAR) NOT NULL,
corecount NUMBER, 
frequencia NUMBER,
preco NUMBER(10,2) DEFAULT '0' NOT NULL,
stock NUMBER DEFAULT '0' NOT NULL
);

INSERT INTO  cpu VALUES (1,'Ryzen 9 5900X',1,'AM4',12,3700,599.99,3);
INSERT INTO  cpu VALUES (2,'Ryzen 7 3700X',1,'AM4',8,3600,269.99,2);
INSERT INTO  cpu VALUES (3,'Ryzen 5 5600X',1,'AM4',6,3700,229.90,2);
INSERT INTO  cpu VALUES (4,'Ryzen 3 3200G',1,'AM4',4,3600,99.00,2);
INSERT INTO  cpu VALUES (5,'I9-12900KF',2,'LGA1700',16,2400,645.99,2);
INSERT INTO  cpu VALUES (6,'I9-11900KF',2,'LGA1200',8,3500,435.99,1);
INSERT INTO  cpu VALUES (7,'I7-12700K',2,'LGA1700',12,2700,449.99,2);
INSERT INTO  cpu VALUES (8,'I5-12400',2,'LGA1700',6,2500,199.59,1);
INSERT INTO  cpu VALUES (9,'I3-12100F',2,'LGA1700',4,3300,105.99,2);

CREATE TABLE ram (
ram_id NUMBER PRIMARY KEY,
nome VARCHAR2 (50 CHAR) UNIQUE NOT NULL,
tipo VARCHAR2 (50 CHAR) NOT NULL,
marca REFERENCES marcas (marca_id),
velocidade VARCHAR2 (50 CHAR) NOT NULL,
capacidade NUMBER NOT NULL,
preco NUMBER(10,2) DEFAULT '0' NOT NULL,
stock NUMBER DEFAULT '0' NOT NULL
);

INSERT INTO  ram VALUES (1,'Aegis 8GB','DDR4',4,'3200Mhz',8,65.99,4);
INSERT INTO  ram VALUES (2,'Vengeance RGB','DDR4',3,'3200Mhz',8,77.99,12);
INSERT INTO  ram VALUES (3,'SO-DIMM 8GB','DDR4',6,'2666Mhz',8,37.99,2);
INSERT INTO  ram VALUES (4,'Ballistix G','DDR4',6,'3200Mhz',16,99.00,6);
INSERT INTO  ram VALUES (5,'RipJaws V','DDR4',4,'3200Mhz',8,74.99,8);
INSERT INTO  ram VALUES (6,'Fury Beast RGB','DDR4',5,'3600Mhz',8,95.99,8);
INSERT INTO  ram VALUES (7,'Vengeance RGB 16','DDR4',3,'3600Mhz',16,165.99,6);
INSERT INTO  ram VALUES (8,'Fury Beast','DDR5',5,'6000Mhz',16,185.59,4);
INSERT INTO  ram VALUES (9,'Trident Z5 RGB','DDR5',4,'6000Mhz',32,359.99,4);

CREATE TABLE chips (
chip_id NUMBER PRIMARY KEY,
chip_nome VARCHAR2 (50 CHAR)
);

INSERT INTO chips VALUES(12,'AMD');
INSERT INTO chips VALUES(11,'NVIDIA');
INSERT INTO chips VALUES(10,'INTEL');

CREATE TABLE gpu (
gpu_id NUMBER PRIMARY KEY,
nome VARCHAR2 (50 CHAR) UNIQUE NOT NULL,
chip REFERENCES chips (chip_id),
marca REFERENCES marcas (marca_id),
gpu_clock NUMBER NOT NULL,
vram NUMBER NOT NULL,
preco NUMBER(10,2) DEFAULT '0' NOT NULL,
stock NUMBER DEFAULT '0' NOT NULL
);

INSERT INTO gpu VALUES (1,'RTX 3060TI Z TRIO',11,17,1845,8,649.90,2);
INSERT INTO gpu VALUES (2,'RTX 3070TI Trinity',11,13,1800,8,799.99,3);
INSERT INTO gpu VALUES (3,'RTX 3080 V2 OC TUF',11,15,1815,10,989.99,2);
INSERT INTO gpu VALUES (4,'RTX 3080 GAMING OC V2',11,14,1800,10,920.99,2);
INSERT INTO gpu VALUES (5,'RTX 3080TI ROG',11,16,1845,12,1750.99,1);
INSERT INTO gpu VALUES (6,'RTX 3090 TUF',11,15,2025,24,2200.00,2);
INSERT INTO gpu VALUES (7,'RTX 3050 XC GAMING',11,18,1845,8,390.99,3);
INSERT INTO gpu VALUES (8,'RX 6700XT',12,19,2581,12,749.99,2);
INSERT INTO gpu VALUES (9,'RX 6800XT Z TRIO',12,17,2310,16,1015.00,3);
INSERT INTO gpu VALUES (10,'RX 6900XT TOXIC EX EDITION',12,19,2525,16,1899.99,1);

CREATE TABLE psu (
psu_id NUMBER PRIMARY KEY,
nome VARCHAR2 (50 CHAR) UNIQUE NOT NULL,
marca REFERENCES marcas (marca_id),
watt NUMBER NOT NULL,
rating VARCHAR2 (50 CHAR) NOT NULL,
tipo VARCHAR2 (50 CHAR) NOT NULL,
preco NUMBER(10,2) DEFAULT '0' NOT NULL,
stock NUMBER DEFAULT '0' NOT NULL
);

INSERT INTO psu VALUES (1,'RM850X',3,850,'GOLD','MOD',140.99,5);
INSERT INTO psu VALUES (2,'P750GM',14,750,'GOLD','MOD',104.99,3);
INSERT INTO psu VALUES (3,'FOCUS 850W',7,850,'GOLD','MOD',114.99,2);
INSERT INTO psu VALUES (4,'SUPERNOVA 750GT',18,750,'GOLD','MOD',85.99,2);
INSERT INTO psu VALUES (5,'GP-p1000GM',14,1000,'GOLD','MOD',169.99,1);
INSERT INTO psu VALUES (6,'HX1200',3,1200,'PLAT','FULL MOD',240.99,2);
INSERT INTO psu VALUES (7,'CM V850',8,850,'PLAT','FULL MOD',235.99,3);

CREATE TABLE mobo (
mobo_id NUMBER PRIMARY KEY,
nome VARCHAR2 (50 CHAR) UNIQUE NOT NULL,
marca REFERENCES marcas (marca_id),
socket VARCHAR2 (50 CHAR) NOT NULL,
chipset VARCHAR2 (50 CHAR) NOT NULL,
preco NUMBER(10,2) DEFAULT '0' NOT NULL,
stock NUMBER DEFAULT '0' NOT NULL
);

INSERT INTO  mobo VALUES (1,'PRIME B660-PLUS D4',9,'LGA1700','B660',134.99,2);
INSERT INTO  mobo VALUES (2,'PRO H610M-B',17,'LGA1700','H610M-B',89.99,2);
INSERT INTO  mobo VALUES (3,'B550 AORUS ELITE V2',14,'AM4','B550',148.90,3);
INSERT INTO  mobo VALUES (4,'MAXIMUS Z690 HERO',1,'LGA1700','Z690',599.99,2);
INSERT INTO  mobo VALUES (5,'B450M-A PRO MAX',17,'AM4','B450M',36.99,3);
INSERT INTO  mobo VALUES (6,'GAMING B560M-PLUS',15,'LGA1200','B560M',139.99,2);
INSERT INTO  mobo VALUES (7,'MAG Z490 TOMAHAWK',17,'LGA1200','Z490',159.99,2);
INSERT INTO  mobo VALUES (8,'Z590-PLUS',9,'LGA1200','Z590',199.59,3);
INSERT INTO  mobo VALUES (9,'STRIX B550-F GAMING',16,'AM4','B550-F',209.99,2);

select 'CLIENTES', count(*) CLIENTES from CLIENTES union 
select 'VENDAS', count(*) VENDAS from VENDAS union 
select 'MARCAS', count(*) MARCAS from MARCAS union 
select 'CPU', count(*) CPU from CPU union 
select 'RAM', count(*) RAM from RAM union 
select 'CHIPS', count(*) CHIPS from CHIPS union 
select 'GPU', count(*) GPU from GPU union 
select 'PSU', count(*) PSU from PSU union 
select 'MOBO', count(*) MOBO from MOBO;


SELECT 'Seleção de Colunas das tabelas.' SECÇÃO FROM dual;

-- Imprimir id de cliente e nome da table clientes
SELECT '1-Imprimir id de cliente e nome da table clientes' PERGUNTA FROM dual;
SELECT 'SELECT client_id,nome FROM clientes ;' SQL FROM dual;
SELECT client_id,nome FROM clientes ;

-- Imprimir id de venda e nome do comprador da tabela vendas
SELECT '2-Imprimir id de venda e nome do comprador da tabela vendas' PERGUNTA FROM dual;
SELECT 'SELECT venda_id,comprador FROM vendas' SQL FROM dual;
SELECT venda_id,comprador FROM vendas ;

--Imprimir o id do cpu , o seu nome e o preco da tabela cpu
SELECT '3-Imprimir o id do cpu , o seu nome e o preco da tabela cpu' PERGUNTA FROM dual;
SELECT 'SELECT cpu_id,nome,preco FROM cpu ;' SQL FROM dual;
SELECT cpu_id,nome,preco FROM cpu ;

--Imprimir o id da ram , o seu tipo e o nome da tabela ram
SELECT '4-Imprimir o id da ram , o seu tipo e o nome da tabela ram' PERGUNTA FROM dual;
SELECT 'SELECT ram_id,tipo,nome FROM ram ;' SQL FROM dual;
SELECT ram_id,tipo,nome FROM ram ;

-- Imprimir o id da gpu, a quantidade de VRAM , o nome e o preco da tabela gpu
SELECT '5-Imprimir o id da gpu, a quantidade de VRAM , o nome e o preco da tabela gpu' PERGUNTA FROM dual;
SELECT 'SELECT gpu_id,vram,nome,preco FROM gpu ;' SQL FROM dual;
SELECT gpu_id,vram,nome,preco FROM gpu ;

-- Imprimir o id da psu, o seu rating e o seu nome da tabela psu
SELECT '6-Imprimir o id da psu, o seu rating e o seu nome da tabela psu' PERGUNTA FROM dual;
SELECT 'SELECT psu_id,rating,nome FROM psu;' SQL FROM dual;
SELECT psu_id,rating,nome FROM psu; 


SELECT 'Junção duas ou mais tabelas.' SECÇÃO FROM dual;

-- Imprimir nome da gpu, fabricante do chip e fabricante da gpu
SELECT '1-Imprimir nome da gpu, fabricante do chip e fabricante da gpu' PERGUNTA FROM dual;
SELECT 'SELECT gpu.nome, chips.chip_nome, marcas.marca_nome  FROM gpu INNER JOIN marcas ON gpu.marca = marcas.marca_id INNER JOIN chips ON gpu.chip = chips.chip_id;' SQL FROM dual;
SELECT gpu.nome, chips.chip_nome, marcas.marca_nome 
FROM gpu 
INNER JOIN marcas
ON gpu.marca = marcas.marca_id
INNER JOIN chips
ON gpu.chip = chips.chip_id;

-- Imprimir id do cliente, nome do cliente e valor final da compra.
SELECT '2-Imprimir id do cliente, nome do cliente e valor final da compra.' PERGUNTA FROM dual;
SELECT 'SELECT  clientes.client_id, clientes.nome, vendas.valor_final FROM vendas INNER JOIN clientes ON clientes.client_id = vendas.comprador;' SQL FROM dual;
SELECT  clientes.client_id, clientes.nome, vendas.valor_final
FROM vendas
INNER JOIN clientes
ON clientes.client_id = vendas.comprador;

-- Imprimir nome da marca, nome do cpu e o seu preco
SELECT '3-Imprimir nome da marca, nome do cpu e o seu preco.' PERGUNTA FROM dual;
SELECT 'SELECT marcas.marca_nome, cpu.nome, cpu.preco FROM cpu INNER JOIN marcas ON cpu.marca = marcas.marca_id;' SQL FROM dual;
SELECT marcas.marca_nome, cpu.nome, cpu.preco 
FROM cpu 
INNER JOIN marcas
ON cpu.marca = marcas.marca_id;

-- Imprimir nome da marca, nome da ram, capacidade da ram e a sua velocidade
SELECT '4-Imprimir nome da marca, nome da ram, capacidade da ram e a sua velocidade.' PERGUNTA FROM dual;
SELECT 'SELECT   marcas.marca_nome, ram.nome, ram.capacidade, ram.velocidade FROM ram INNER JOIN marcas ON ram.marca = marcas.marca_id;' SQL FROM dual;
SELECT   marcas.marca_nome, ram.nome, ram.capacidade, ram.velocidade
FROM ram 
INNER JOIN marcas
ON ram.marca = marcas.marca_id;

-- Imprimir nome da marca, nome da psu, capacidade da psu e o seu tipo 
SELECT '5-Imprimir nome da marca, nome da psu, capacidade da psu e o seu tipo.' PERGUNTA FROM dual;
SELECT 'SELECT   marcas.marca_nome, psu.nome, psu.watt, psu.tipo FROM psu INNER JOIN marcas ON psu.marca = marcas.marca_id;' SQL FROM dual;
SELECT   marcas.marca_nome, psu.nome, psu.watt, psu.tipo
FROM psu 
INNER JOIN marcas
ON psu.marca = marcas.marca_id;

-- Imprimir a marca, o nome e a socket da motherboard
SELECT '6-Imprimir a marca, o nome e a socket da motherboard.' PERGUNTA FROM dual;
SELECT 'SELECT   marcas.marca_nome, mobo.nome, mobo.socket FROM mobo INNER JOIN marcas ON mobo.marca = marcas.marca_id;' SQL FROM dual;
SELECT   marcas.marca_nome, mobo.nome, mobo.socket
FROM mobo 
INNER JOIN marcas
ON mobo.marca = marcas.marca_id;


SELECT 'Seleção de algumas linhas Where' SECÇÃO FROM dual;

-- Imprimir todos os cpus cujo o preco é maior que 400 euros
SELECT '1-Imprimir todos os cpus cujo o preco é maior que 400 euros.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM cpu WHERE cpu.preco > 400;' SQL FROM dual;
SELECT * FROM cpu
WHERE cpu.preco > 400;

-- Imprimir todas as rams cujo o stock e maior que 5 unidades
SELECT '2-Imprimir todas as rams cujo o stock e maior que 5 unidades.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM ram WHERE ram.stock > 5;' SQL FROM dual;
SELECT * FROM ram 
WHERE ram.stock > 5;

-- Imprimir todas as gpus cujo o seu clock é maior que 1815
SELECT '3-Imprimir todas as gpus cujo o seu clock é maior que 1815.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM gpu WHERE gpu.gpu_clock > 1815;' SQL FROM dual;
SELECT * FROM gpu
WHERE gpu.gpu_clock > 1815;

--Imprimir as psu's com um rating diferente de gold 
SELECT '4-Imprimir as psu''s com um rating diferente de gold.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM psu WHERE psu.rating <> ''GOLD'';' SQL FROM dual;
SELECT * FROM psu 
WHERE psu.rating <> 'GOLD';

-- Imprimir todas as motherboards cuja sua socket seja AM4
SELECT '5-Imprimir todas as motherboards cuja sua socket seja AM4.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM mobo WHERE mobo.socket = ''AM4'';' SQL FROM dual;
SELECT * FROM mobo
WHERE mobo.socket = 'AM4';

-- Imprimir todas as vendas superiores a 1000 euros
SELECT '6-Imprimir todas as vendas superiores a 1000 euros.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM vendas WHERE vendas.valor_final > 1000;' SQL FROM dual;
SELECT * FROM vendas
WHERE vendas.valor_final > 1000;



SELECT 'Contar: count, sum, min, max, etc' SECÇÃO FROM dual;

--  Imprimir o cpu mais barato
SELECT '1-Imprimir o cpu mais barato.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM cpu WHERE cpu.preco = ( SELECT MIN(preco) FROM cpu );' SQL FROM dual;
SELECT * FROM cpu
WHERE cpu.preco = ( SELECT MIN(preco) FROM cpu );

-- Imprimir a Ram mais cara
SELECT '2-Imprimir a Ram mais cara.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM ram
WHERE ram.preco = ( SELECT MAX(preco) FROM ram );' SQL FROM dual;
SELECT * FROM ram
WHERE ram.preco = ( SELECT MAX(preco) FROM ram );

-- Contar quantas gpu's custam mais de 1500 euros
SELECT '3-Contar quantas gpu''s custam mais de 1500 euros' PERGUNTA FROM dual;
SELECT 'SELECT COUNT(*) FROM gpu WHERE gpu.preco > 1500;' SQL FROM dual;
SELECT COUNT(*) FROM gpu
WHERE gpu.preco > 1500; 

-- Somar o preco a multiplicar pelo stock de todas as motherboards 
SELECT '4-Somar o preco a multiplicar pelo stock de todas as motherboards.' PERGUNTA FROM dual;
SELECT 'SELECT SUM(preco * stock) FROM mobo;' SQL FROM dual;
SELECT SUM(preco * stock) FROM mobo;

-- Obter a media do preco de todas as rams
SELECT '5-Obter a media do preco de todas as rams.' PERGUNTA FROM dual;
SELECT 'SELECT AVG (preco) FROM ram;' SQL FROM dual;
SELECT AVG (preco) FROM ram;

-- Obter o numero do stock de psu's
SELECT '6-Obter o numero do stock de psu''s.' PERGUNTA FROM dual;
SELECT 'SELECT SUM(stock) FROM psu;' SQL FROM dual;
SELECT SUM(stock) FROM psu;



SELECT 'Order by' SECÇÃO FROM dual;

-- Ordenar gpu's por preco
SELECT '1-Ordenar gpu''s por preco.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM gpu ORDER BY preco;' SQL FROM dual;
SELECT * FROM gpu
ORDER BY preco;

-- Ordenar ram's por velocidade 
SELECT '2-Ordenar ram''s por velocidade.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM ram ORDER BY velocidade;' SQL FROM dual;
SELECT * FROM ram
ORDER BY velocidade;

-- Ordenar psu's por capacidade
SELECT '3-Ordenar psu''s por capacidade.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM psu ORDER BY watt;' SQL FROM dual;
SELECT * FROM psu
ORDER BY watt;

-- Ordenar gpu's pelo core clock
SELECT '4-Ordenar gpu''s pelo core clock.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM gpu ORDER BY gpu_clock;' SQL FROM dual;
SELECT * FROM gpu
ORDER BY gpu_clock;

-- Ordenar os clientes pelo seu nome alfabeticamente
SELECT '5-Ordenar os clientes pelo seu nome alfabeticamente.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM clientes ORDER BY nome;' SQL FROM dual; 
SELECT * FROM clientes
ORDER BY nome;

-- Ordenar cpu pelo corecount de forma descendente
SELECT '6-Ordenar cpu pelo corecount de forma descendente.' PERGUNTA FROM dual;
SELECT 'SELECT * FROM cpu ORDER BY corecount DESC;' SQL FROM dual;
SELECT * FROM cpu
ORDER BY corecount DESC;



SELECT 'Agrupar e contar' SECÇÃO FROM dual;


-- Contar quantas rams existem de cada tipo
SELECT '1-Contar quantas rams existem de cada tipo.' PERGUNTA FROM dual;
SELECT 'SELECT ram.tipo, COUNT(ram.tipo) FROM ram GROUP BY tipo ORDER BY COUNT(ram.tipo);' SQL FROM dual;
SELECT ram.tipo, COUNT(ram.tipo) FROM ram 
GROUP BY tipo 
ORDER BY COUNT(ram.tipo);

-- contar quantas motherboards existem de cada socket
SELECT '2-Contar quantas motherboards existem de cada socket.' PERGUNTA FROM dual;
SELECT 'SELECT socket, count(socket) FROM mobo GROUP BY socket;' SQL FROM dual;
SELECT socket, count(socket) FROM mobo
GROUP BY socket;

-- Contar quantos cpu existem por cada tipo de socket
SELECT '3-Contar quantos cpu existem por cada tipo de socket.' PERGUNTA FROM dual;
SELECT 'SELECT socket, COUNT(socket) FROM cpu GROUP BY socket;' SQL FROM dual;
SELECT socket, COUNT(socket) FROM cpu
GROUP BY socket;

--Contar quantos cpu's existem por numero de cores
SELECT '4-Contar quantos cpu existem por numero de cores' PERGUNTA FROM dual;
SELECT 'SELECT corecount, count(corecount) FROM cpu GROUP BY corecount;' SQL FROM dual;
SELECT corecount, count(corecount) FROM cpu
GROUP BY corecount;

--Contar quantas ram's existem por cada velocidade
SELECT '5-Contar quantas ram''s existem por cada velocidade.' PERGUNTA FROM dual;
SELECT 'SELECT velocidade, count(velocidade) FROM ram GROUP BY velocidade;' SQL FROM dual;
SELECT velocidade, count(velocidade) FROM ram
GROUP BY velocidade;

--Contar quantas psu's existem por cada classificacao
SELECT '6-Contar quantas psu''s existem por cada classificacao.' PERGUNTA FROM dual;
SELECT 'SELECT rating, count(rating) FROM psu GROUP BY rating;' SQL FROM dual;
SELECT rating, count(rating) FROM psu
GROUP BY rating;

