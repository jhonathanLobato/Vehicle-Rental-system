CREATE DATABASE VEICULO_LOCACAO;

USE VEICULO_LOCACAO;


/*CRIAÇÃO DAS TABELAS*/
CREATE TABLE CLIENTE(
	NOME VARCHAR(100) NOT NULL,
	CPF VARCHAR(11) NOT NULL PRIMARY KEY,
	CNH VARCHAR(15) NOT NULL,
	DATA_NASCIMENTO DATE,
	TELEFONE VARCHAR(11) NOT NULL,
	ENDERECO VARCHAR(150) NOT NULL,
	CEP VARCHAR(8),
	BAIRRO VARCHAR(30),
	CIDADE VARCHAR(30),
	ESTADO VARCHAR(30));
    
CREATE TABLE COR(
	COR_CARRO VARCHAR(25) NOT NULL PRIMARY KEY
);
CREATE TABLE CLASSE(
	CLASSE_CARRO VARCHAR(15) NOT NULL PRIMARY KEY 
);
CREATE TABLE MARCA(
	MARCA_CARRO VARCHAR(20) NOT NULL PRIMARY KEY
);


CREATE TABLE CARRO(
	ID_DO_CARRO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	MODELO VARCHAR(50),
	IMPORT_MARCA VARCHAR(20),
	IMPORT_CLASSE VARCHAR(15), 
	ANO DATE,
	PLACA VARCHAR(7) NOT NULL, 
	IMPORT_COR VARCHAR(25),
	TAMANHO_MALA VARCHAR(10),
	FOREIGN KEY(IMPORT_MARCA) REFERENCES MARCA(MARCA_CARRO),
	FOREIGN KEY(IMPORT_CLASSE) REFERENCES CLASSE(CLASSE_CARRO),
	FOREIGN KEY(IMPORT_COR) REFERENCES COR(COR_CARRO));
    
    
CREATE TABLE LOCACAO(
	ID_CARRO INT,
	CPF_CLIENTE VARCHAR(11),
	VALOR FLOAT NOT NULL,
	DATA_PEDIDO DATE,
	DATA_INICIAL DATE NOT NULL,
	DATA_FINAL DATE NOT NULL,
	LOCAL_ENTREGA VARCHAR(150),
	ID_FISCAL INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	FOREIGN KEY(ID_CARRO) REFERENCES CARRO(ID_DO_CARRO),
	FOREIGN KEY(CPF_CLIENTE) REFERENCES CLIENTE(CPF));


/*INSERINDO DADOS NA TABELA*/
/*CLIENTE*/
INSERT INTO cliente VALUES
	('Luiz Pereira Melo', '80042662745', '51934684230',
	'1990-01-05', '4723139004', 'Rua DJ -001 1056', '88359005',
	'Dom Joaquim', 'Brusque', 'São Paulo');

INSERT INTO cliente VALUES 
	('José Araujo Martins', '39442337432', '82772517619',
	'1978-03-13', '1154106021', 'Rua Doutor Miguel de Campos Júnior, 1067',
	'06263150', "Portal D'Oeste", 'Osasco', 'São Paulo');

INSERT INTO CLIENTE VALUES
	('Felipe Cunha Ferreira', '98592380570', '17831202460', '1988-07-08',
	'1976379262', 'Rua dos Cataguases, 300', '13081330', ' Vila Costa e Silva',
	'Campinas', 'São Paulo');

INSERT INTO CLIENTE VALUES
	('Estevan Azevedo Fernandes', '81625867174', '90254795012', '1968-12-08',
	'6247954073', 'Rua Doutor Sebastião Brasileiro, 1147', '74310330', 'Vila Bela',
	'Goiânia', 'Goiás');

INSERT INTO CLIENTE VALUES
	('Leonardo Araujo Alves', '76869895937', '52622467307', '1997-10-13',
	'2887332807', 'Rua Torquato Marchini, 949', '29307080', 'Santa Helena', 'Cachoeiro de Itapemirim', 'Espirito Santo');

INSERT INTO CLIENTE VALUES
	('Fábio Oliveira Melo', '93297423358', '11661921340', '2001-09-20', 
	'5330956331', 'Rua Dom Guilherme Litran, 587', '96087060', 'Areal', 'Pelotas', 'Rio Grande Do Sul');

INSERT INTO CLIENTE VALUES
	('Gustavo Pinto Cunha', '58590657361', '03171715106', '1978-11-03', '9593703615',
	'Rua P, 438', '69313180', 'Jóquei Clube', 'Boa Vista', 'Roraima');

INSERT INTO CLIENTE VALUES
	('Kauê Santos Carvalho', '37591306820', '17121684464', '1996-03-12',
	'1991803663', 'Rua Castro Alves, 1174', '13424367', 'Higienópolis', 'Piracicaba', 'São Paulo');

INSERT INTO CLIENTE VALUES
	('Raissa Barros Sousa', '96618395062', '98658541162', '1998-05-06',
	'1325836789', 'Rua Célia Alonso Pereira, 1203', '11421320', 'Guaiúba', 'Guarujá', 'São Paulo');

INSERT INTO CLIENTE VALUES
	('Letícia Rodrigues Alves', '14207119701', '77952689355', '1991-09-09', '2482897212',
	'Rua Niteroi, 1077', '27210020', 'Santo Agostinho', 'Volta Redonda', 'Rio de Janeiro');

INSERT INTO CLIENTE VALUES
	('Sofia Oliveira Dias', '78804400544', '86507453737', '1999-10-03',
	'2158672356', 'Rua Um, 1965', '26053015', 'Nova Brasília', 'Nova Iguaçu', 'Rio de Janeiro');

INSERT INTO CLIENTE VALUES
	('Mariana Ribeiro Barros', '69781151420', '68987657100', '1987-03-26', '1956522954', 
    'Rua dos Tangará, 213', '13271601', 'Jardim Paiquerê', 'Valinhos', 'São Paulo');
    
INSERT INTO CLIENTE VALUES
	('Cauã Almeida Azevedo', '63703106700', '10313824533', '2002-03-30', '2146287265', 
    'Rua Paquequer, 204', '20751300', 'Abolição', 'Rio de Janeiro', 'Rio de Janeiro');
    
INSERT INTO CLIENTE VALUES
	('Amanda Martins Dias', '60498452719', '60591374686', '1991-11-24', '4778196690',
    'Rua Caçador, 1956', '88309030', 'São Vicente', 'Itajaí', 'Santa Catarina');
    
INSERT INTO CLIENTE VALUES
	('Breno Cunha Castro', '30906684161', '53043126758', '1999-08-28', '1660252248',
    'Rua Brasília', '14401422', 'Jardim Piratininga II', 'Franca', 'São Paulo');
    
INSERT INTO CLIENTE VALUES
	('Sofia Barros Carvalho', '49610029922', '20068876495', '1999-12-05', '5597954455', 
    'Rua Militão de Moura, 1303', '98015310', 'Prefeito Vila Nova', 'Cruz Alta', 'Rio Grande do Sul');
    
INSERT INTO CLIENTE VALUES
	('Vitor Carvalho Martins', '99331553692', '82247091911', '1980-05-17', '4349625316', 
    'Rua Antônio Negro, 1689', '86081546', 'Jardim Maria Celina', 'Londrina', 'Paraná');
    
INSERT INTO CLIENTE VALUES
	('Diego Melo Silva', '77979995899', '40516136331', '2001-02-10', '2186002042', 
    'Rua Professor Vicente Romano, 754', '24030057', 'Centro', 'Niterói', 'Rio de Janeiro');
    
INSERT INTO CLIENTE VALUES
	('Kauã Silva Azevedo', '98552892260', '24856478650', '1979-07-09', '1125437287',
    'Rua Hollywood, 614', '08533130', 'Vila do Americano', 'Ferraz de Vasconcelos', 'São Paulo');

INSERT INTO CLIENTE VALUES
	('Pedro Costa Sousa', '76784931343', '54708306362', '1985-03-23', '4746613824',
    'Rua Marilde Reinert, 1235', '89053655', 'Itoupava Norte', 'Blumenau', 'Santa Catarina');
SELECT * FROM CLIENTE;


/*CLASSE*/
INSERT INTO classe
(CLASSE_CARRO) VALUES 
	('Hatch'),
	('Sedan'),
	('Picape'),
	('SUV'),
	('Cupês'),
	('Conversível'),
	('Minivans'),
	('Luxo');
SELECT * FROM CLASSE;


/*COR*/    
INSERT INTO COR
(COR_CARRO) VALUES
	('Preto'),
	('Branco'),
	('Vermelho'),
	('Azul'),
	('Prata'),
	('Cinza'),
	('Verde'),
	('Amarelo'); 
SELECT * FROM COR;


/*MARCA*/
INSERT INTO MARCA
(MARCA_CARRO) VALUES 
	('Hyundai'),
	('Mercedes Benz'),
	('Fiat'),
	('Renault'),
	('Land Rover'),
	('Volkswagen'),
	('Chevrolet'),
	('Ford'),
	('Toyota'),
	('Jeep');
SELECT * FROM MARCA;


/*INSERINDO DADOS NA TABELA CARRO*/
INSERT INTO CARRO VALUES
	('1', 'A200', 'HYUNDAI', 'HATCH', '2019-01-01', 'ASC345', 'BRANCO', '485 kg');
INSERT INTO CARRO VALUES
	('2', 'COROLLA', 'TOYOTA', 'SEDAN', '2020-03-10', 'GHF786', 'VERDE', '470');
INSERT INTO CARRO VALUES
	('3', 'ONIX', 'CHEVROLET', 'SEDAN', '2022-08-23', 'FZB7324', 'BRANCO', '303');
INSERT INTO CARRO VALUES
	('4', 'CAMARO', 'CHEVROLET', 'CUPÊS', '2015-05-15', 'DYL6717', 'AMARELO', '320');
INSERT INTO CARRO VALUES
	('5', 'DUSTER', 'RENAULT', 'SUV', '2019-11-04', 'LNI7915', 'PRATA', '475');
INSERT INTO CARRO VALUES
	('6', 'GOL', 'VOLKSWAGEN', 'HATCH', '2018-03-30', 'LQV6334', 'VERMELHO', '285');
INSERT INTO CARRO VALUES
	('7', 'VOYAGE', 'VOLKSWAGEN', 'SEDAN', '2017-09-12', 'KZB3012', 'BRANCO', '480');
INSERT INTO CARRO VALUES
	('8', 'MERCEDES BENZ CLASSE A 200', 'MERCEDES BENZ', 'HATCH', '2019-02-25', 'EHM2425', 'CINZA', '430');
INSERT INTO CARRO VALUES
	('9', 'LAND ROVER RANGE ROVER SPORT', 'LAND ROVER', 'SUV', '2022-07-16', 'DLS9215', 'AZUL', '489');
INSERT INTO CARRO VALUES
	('10', 'FIAT ARGO', 'FIAT', 'HATCH', '2022-04-26', 'MLW4723', 'CINZA', '300');
INSERT INTO CARRO VALUES
	('11', 'LAND CRUISER PRADO', 'TOYOTA', 'SUV', '2021-12-23', 'MMM3464', 'PRETO', '620');
INSERT INTO CARRO VALUES
	('12', 'CRUZE', 'CHEVROLET', 'SEDAN', '2022-01-01', 'QEW2472', 'PRETO', '440');
INSERT INTO CARRO VALUES
	('13', 'GRAND CHEROKEE', 'JEEP', 'SUV', '2019-04-30', 'FMT3776', 'CINZA', '457');
INSERT INTO CARRO VALUES
	('14', 'FUSCA 2.0 TSI', 'VOLKSWAGEN', 'HATCH', '2016-07-18', 'PVA7215', 'BRANCO', '310');
INSERT INTO CARRO VALUES
	('15', 'FLUENCE', 'RENAULT', 'SEDAN', '2016-11-12', 'CEP8139', 'AZUL', '530');
INSERT INTO CARRO VALUES
	('16', 'UNO ECONOMY', 'FIAT', 'HATCH', '2018-03-09', 'BAX3875', 'VERDE', '290');
INSERT INTO CARRO VALUES
	('17', 'CABRIOLET KOMPRESSOR', 'MERCEDES BENZ', 'CONVERSÍVEL', '1998-07-12', 'GRN1705', 'VERMELHO', '350');
INSERT INTO CARRO VALUES
	('18', 'RAV4', 'TOYOTA', 'SUV', '2015-09-19', 'LCT3886', 'AMARELO', '515');
INSERT INTO CARRO VALUES
	('19', 'RANGER', 'FORD', 'PICAPE', '2021-12-10', 'HCW2588', 'VERDE', NULL);
INSERT INTO CARRO VALUES
	('20', 'MUSTANG', 'FORD', 'CUPÊS', '2021-01-01', 'ENS7944', 'BRANCO', NULL);
INSERT INTO CARRO VALUES
	('21', 'Mercedes GLE 400', 'MERCEDES BENZ', 'SUV', '2021-01-01', 'EIC5650', 'VERMELHO', '690');
INSERT INTO CARRO VALUES
	('22', 'AGILE LTZ', 'CHEVROLET', 'HATCH', '2015-12-02', 'HRQ5761', 'CINZA', '357');
INSERT INTO CARRO VALUES
	('23', 'BLAZER JIMMY', 'CHEVROLET', 'SUV', '1999-02-25', 'RVW1863', 'PRATA' ,'445');
INSERT INTO CARRO VALUES
	('24', 'Sonata', 'HYUNDAI', 'SEDAN', '2012-03-21', 'DDG5662', 'CINZA', '464');
INSERT INTO CARRO VALUES
	('25', 'HB20 Copa do Mundo', 'HYUNDAI', 'HATCH', '2014-05-10', 'LKW4850', 'VERDE', '300');
INSERT INTO CARRO VALUES
	('26', 'CAMARO Z28 1968', 'CHEVROLET', 'CUPÊS', '1968-04-30', 'JUT6206', 'AMARELO', NULL);
INSERT INTO CARRO VALUES
	('27', 'Discovery4', 'LAND ROVER', 'SUV', '2012-01-01', 'HYX8113', 'CINZA', '280');
INSERT INTO CARRO VALUES
	('28', 'Freelander2', 'LAND ROVER', 'SUV', '2012-01-01', 'HZO6143', 'PRETO', '375');
INSERT INTO CARRO VALUES
	('29', 'MERCEDES CLA', 'MERCEDES BENZ', 'LUXO', '2019-01-01', 'MBZ9958', 'VERDE', '470');
INSERT INTO CARRO VALUES
	('30', 'LEXUS NX300', 'TOYOTA', 'LUXO', '2022-01-01', 'HPL2742', 'VERMELHO', '490');
SELECT * FROM CARRO;


/*INSERINDO LOCAÇÃO*/
INSERT INTO LOCACAO VALUES
	('4', '76784931343', '2500', '2022-02-10', '2022-02-10', '2022-02-25', 'FLORIANOPOLIS -SC', '8634');
INSERT INTO LOCACAO VALUES
	('5', '77979995899', '1750', '2022-01-28', '2022-02-20', '2022-03-04', 'SÃO PAULO - SP', '2342');
INSERT INTO LOCACAO VALUES
	('8', '49610029922', '5230', '2022-01-30-', '2022-02-10', '2022-02-18', 'PORTO ALEGRE -RS', '5836');
INSERT INTO LOCACAO VALUES
	('1', '30906684161', '458', '2022-02-04', '2022-02-14', '2022-02-15', 'Rio de Janeiro -RJ', '1576');
INSERT INTO LOCACAO VALUES
	('9', '69781151420', '5739', '2022-01-28', '2022-02-08', '2022-02-18', 'Curitiba - PR', '9753');
INSERT INTO LOCACAO VALUES
	('10', '93297423358', '2000', '2022-01-14', '2022-02-14', '2022-02-28', 'Vitoria - ES', '0034');
SELECT * FROM LOCACAO;

