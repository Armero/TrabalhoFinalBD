/* Inserindos Países */
INSERT INTO País (Cd_País, Nm_País) VALUES(1,'Brasil');
INSERT INTO País (Cd_País, Nm_País) VALUES(2,'Argentina');
INSERT INTO País (Cd_País, Nm_País) VALUES(3,'Mexico');
INSERT INTO País (Cd_País, Nm_País) VALUES(4,'Venezuela');
INSERT INTO País (Cd_País, Nm_País) VALUES(5,'Paraguai');

/* Inserindo Estados */
INSERT INTO Estado (Cd_Estado, Nm_Estado) VALUES(1,'Rio de Janeiro');
INSERT INTO Estado (Cd_Estado, Nm_Estado) VALUES(2,'São Paulo');
INSERT INTO Estado (Cd_Estado, Nm_Estado) VALUES(3,'Minas Gerais');
INSERT INTO Estado (Cd_Estado, Nm_Estado) VALUES(4,'Espirito Santo');
INSERT INTO Estado (Cd_Estado, Nm_Estado) VALUES(5,'Rio Grande do Sul');

/* Inserindo Municipios */
INSERT INTO Municipio (Cd_Municipio, Nm_Municipio) VALUES(1,'Rio de Janeiro');
INSERT INTO Municipio (Cd_Municipio, Nm_Municipio) VALUES(2,'Caxias');
INSERT INTO Municipio (Cd_Municipio, Nm_Municipio) VALUES(3,'São João de Meriti');
INSERT INTO Municipio (Cd_Municipio, Nm_Municipio) VALUES(4,'São Gonçalo');
INSERT INTO Municipio (Cd_Municipio, Nm_Municipio) VALUES(5,'Bangu');

/* Inserindo Bairros*/
INSERT INTO Bairro (Cd_Bairro, Nm_Bairro) VALUES(1,'Vila da Penha');
INSERT INTO Bairro (Cd_Bairro, Nm_Bairro) VALUES(2,'Penha');
INSERT INTO Bairro (Cd_Bairro, Nm_Bairro) VALUES(3,'Penha Circular');
INSERT INTO Bairro (Cd_Bairro, Nm_Bairro) VALUES(4,'Barra da Tijuca');
INSERT INTO Bairro (Cd_Bairro, Nm_Bairro) VALUES(5,'Tijuca');

/*Inserindo Tipo de Logradouro*/
INSERT INTO Tipo_Logradouro(Cd_Tipo_Logradouro, Nm_Tipo_Logradouro) VALUES( 1, 'Casa');
INSERT INTO Tipo_Logradouro(Cd_Tipo_Logradouro, Nm_Tipo_Logradouro) VALUES( 2, 'Apartamento');
INSERT INTO Tipo_Logradouro(Cd_Tipo_Logradouro, Nm_Tipo_Logradouro) VALUES( 3, 'Loja');
INSERT INTO Tipo_Logradouro(Cd_Tipo_Logradouro, Nm_Tipo_Logradouro) VALUES( 4, 'Conjugado');
INSERT INTO Tipo_Logradouro(Cd_Tipo_Logradouro, Nm_Tipo_Logradouro) VALUES( 5, 'Quiosque');

/*Inserindo Logradouro*/
INSERT INTO Logradouro (Cd_Logradouro,Cd_Tipo_Logradouro ,Nm_Logradouro) VALUES(1, 1,'Rua do Banco');
INSERT INTO Logradouro (Cd_Logradouro,Cd_Tipo_Logradouro ,Nm_Logradouro) VALUES(2, 2,'Rua do Dado');
INSERT INTO Logradouro (Cd_Logradouro,Cd_Tipo_Logradouro ,Nm_Logradouro) VALUES(3, 1,'Rua do trabalho');
INSERT INTO Logradouro (Cd_Logradouro,Cd_Tipo_Logradouro ,Nm_Logradouro) VALUES(4, 3,'Rua do final');
INSERT INTO Logradouro (Cd_Logradouro,Cd_Tipo_Logradouro ,Nm_Logradouro) VALUES(5, 1,'Rua da testa');
INSERT INTO Logradouro (Cd_Logradouro,Cd_Tipo_Logradouro ,Nm_Logradouro) VALUES(6, 4,'Rua do Departamento');
INSERT INTO Logradouro (Cd_Logradouro,Cd_Tipo_Logradouro ,Nm_Logradouro) VALUES(7, 4,'Rua da Eletrônica');
INSERT INTO Logradouro (Cd_Logradouro,Cd_Tipo_Logradouro ,Nm_Logradouro) VALUES(8, 5,'Rua da Computação');
INSERT INTO Logradouro (Cd_Logradouro,Cd_Tipo_Logradouro ,Nm_Logradouro) VALUES(9, 2,'Rua do SQL');
INSERT INTO Logradouro (Cd_Logradouro,Cd_Tipo_Logradouro ,Nm_Logradouro) VALUES(10, 1,'Rua do Server');

/*Inserindo Tipo de Complemento */
INSERT INTO Tipo_Complemento (Cd_Tipo_Complemento, Nm_Complemento) VALUES(1,'Bloco');
INSERT INTO Tipo_Complemento (Cd_Tipo_Complemento, Nm_Complemento) VALUES(2,'Fundos');
INSERT INTO Tipo_Complemento (Cd_Tipo_Complemento, Nm_Complemento) VALUES(3,'Torre');
INSERT INTO Tipo_Complemento (Cd_Tipo_Complemento, Nm_Complemento) VALUES(4,'Condomínio');
INSERT INTO Tipo_Complemento (Cd_Tipo_Complemento, Nm_Complemento) VALUES(5,'Vila');

/*Inserindo Endereço*/
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(1, 1, 21256511, 1, 1, 1);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento)  
VALUES(2, 2, 21256512, 2, 2, 2);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(3, 3, 21256512, 3, 3, 3);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(4, 4, 21256512, 4, 4, 4);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(5, 5, 21256512, 5, 5, 5);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(6, 1, 21256512, 3, 4, 5);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(7, 2, 21256512, 1, 4, 4);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(8, 3, 21256512, 4, 1, 3);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(9, 4, 21256512, 5, 4, 2);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(10, 4, 21256512, 5, 2, 1);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(11, 1, 21256512, 3, 4, 5);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(12, 2, 21256512, 1, 4, 4);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(13, 3, 21256512, 4, 1, 3);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(14, 4, 21256512, 5, 4, 2);
INSERT INTO Endereco (Cd_Endereco, Cd_Logradouro, Nu_CEP, Nu_Endereco, Cd_Bairro, Cd_Tipo_Complemento) 
VALUES(15, 4, 21256512, 5, 2, 1);

/*Inserindo os tipos de telefones possiveis*/
INSERT INTO Tipo_Telefone (Cd_Tipo_Telefone, Nm_Tipo_Telefone) VALUES (1, 'Fixo');
INSERT INTO Tipo_Telefone (Cd_Tipo_Telefone, Nm_Tipo_Telefone) VALUES (2, 'Celular');
INSERT INTO Tipo_Telefone (Cd_Tipo_Telefone, Nm_Tipo_Telefone) VALUES (3, 'Fax');
INSERT INTO Tipo_Telefone (Cd_Tipo_Telefone, Nm_Tipo_Telefone) VALUES (4, 'Numero de Trabalho');
INSERT INTO Tipo_Telefone (Cd_Tipo_Telefone, Nm_Tipo_Telefone) VALUES (5, 'Skype');

/*Inserindo Telefone*/
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(1,1,21452565891);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(2,2,21551258958);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(3,3,52561221665);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(4,4,51651165165);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(5,5,61615651651);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(6,1,21452465891);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(7,2,21551358958);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(8,3,52561621665);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(9,4,51651765165);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(10,5,11615051651);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(11,1,21452465891);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(12,2,31551358958);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(13,3,42561621665);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(14,4,51651765165);
INSERT INTO Telefone (Cd_Telefone, Cd_Tipo_Telefone, Nu_Telefone) VALUES(15,5,11615051651);

/*Criando as pessoas no banco*/
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (1, 1, 1);
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (2, 2, 2);
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (3, 3, 3);
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (4, 4, 4);
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (5, 5, 5);
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (6, 6, 6);
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (7, 7, 7);
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (8, 8, 8);
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (9, 9, 9);
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (10, 10, 10);
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (11, 11, 11);  
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (12, 12, 12);  
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (13, 13, 13);  
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (14, 14, 14);  
INSERT INTO Pessoa (Cd_Pessoa, Cd_Endereco, Cd_Telefone) VALUES (15, 15, 15);    

/*Inserindo Pessoa Fisica*/
INSERT INTO Pessoa_Física (Cd_Pessoa_Física, Nm_Nome, Nm_Sobrenome, Nu_CPF) VALUES(1,'João Victor','Rito','12536565252');
INSERT INTO Pessoa_Física (Cd_Pessoa_Física, Nm_Nome, Nm_Sobrenome, Nu_CPF) VALUES(2,'Felipe','Claudio','15584882363');
INSERT INTO Pessoa_Física (Cd_Pessoa_Física, Nm_Nome, Nm_Sobrenome, Nu_CPF) VALUES(3,'Lucas','Miranda', '12452351552');
INSERT INTO Pessoa_Física (Cd_Pessoa_Física, Nm_Nome, Nm_Sobrenome, Nu_CPF) VALUES(4,'Gustavo','de Souza', '15454551556');
INSERT INTO Pessoa_Física (Cd_Pessoa_Física, Nm_Nome, Nm_Sobrenome, Nu_CPF) VALUES(5,'Manuel','Abrantes', '15455285515');

/*Inserindo Pessoa Juridica*/
INSERT INTO Pessoa_Jurídica (Cd_Pessoa_Jurídica, Nm_Razão_Social, Nu_Inscrição_Estadual, Nu_Inscricao_Estadual_Substituto_Tributário, Nu_CNPJ, Nu_Loja, Nu_Estabelecimento) 
VALUES(6, 'Del', '1247551154', '51856561895218', '123456781234', 1, 1);
INSERT INTO Pessoa_Jurídica (Cd_Pessoa_Jurídica, Nm_Razão_Social, Nu_Inscrição_Estadual, Nu_Inscricao_Estadual_Substituto_Tributário, Nu_CNPJ, Nu_Loja, Nu_Estabelecimento) 
VALUES(7,'Casas Bahia', '1348551154', '64584916515655', '123456781233', 1, 1);
INSERT INTO Pessoa_Jurídica (Cd_Pessoa_Jurídica, Nm_Razão_Social, Nu_Inscrição_Estadual, Nu_Inscricao_Estadual_Substituto_Tributário, Nu_CNPJ, Nu_Loja, Nu_Estabelecimento)  
VALUES(8,'Ricardo Eletro', '1348551154', '65489891556165', '123456781232', 1, 1);
INSERT INTO Pessoa_Jurídica (Cd_Pessoa_Jurídica, Nm_Razão_Social, Nu_Inscrição_Estadual, Nu_Inscricao_Estadual_Substituto_Tributário, Nu_CNPJ, Nu_Loja, Nu_Estabelecimento)  
VALUES(9,'Fast', '1448551154', '58598587956189', '123456781231', 1, 1);
INSERT INTO Pessoa_Jurídica (Cd_Pessoa_Jurídica, Nm_Razão_Social, Nu_Inscrição_Estadual, Nu_Inscricao_Estadual_Substituto_Tributário, Nu_CNPJ, Nu_Loja, Nu_Estabelecimento) 
VALUES(10,'Propria Empresa', '1358551154', '58516552856556', '123456781231', 1, 1);
INSERT INTO Pessoa_Jurídica (Cd_Pessoa_Jurídica, Nm_Razão_Social, Nu_Inscrição_Estadual, Nu_Inscricao_Estadual_Substituto_Tributário, Nu_CNPJ, Nu_Loja, Nu_Estabelecimento) 
VALUES(11,'Transporte Facil', '168551154', '53516552856556', '123456781230', 1, 1);
INSERT INTO Pessoa_Jurídica (Cd_Pessoa_Jurídica, Nm_Razão_Social, Nu_Inscrição_Estadual, Nu_Inscricao_Estadual_Substituto_Tributário, Nu_CNPJ, Nu_Loja, Nu_Estabelecimento)   
VALUES(12,'Transporte Mais Facil', '168551153', '53516552856513', '123456781229', 1, 1);
INSERT INTO Pessoa_Jurídica (Cd_Pessoa_Jurídica, Nm_Razão_Social, Nu_Inscrição_Estadual, Nu_Inscricao_Estadual_Substituto_Tributário, Nu_CNPJ, Nu_Loja, Nu_Estabelecimento)   
VALUES(13,'Transporte Rápido', '168571154', '53516552816556', '123456781228', 1, 1);
INSERT INTO Pessoa_Jurídica (Cd_Pessoa_Jurídica, Nm_Razão_Social, Nu_Inscrição_Estadual, Nu_Inscricao_Estadual_Substituto_Tributário, Nu_CNPJ, Nu_Loja, Nu_Estabelecimento)  
VALUES(14,'Transporte Mais Facil', '168951153', '53516512856513', '123456781227', 1, 1);
INSERT INTO Pessoa_Jurídica (Cd_Pessoa_Jurídica, Nm_Razão_Social, Nu_Inscrição_Estadual, Nu_Inscricao_Estadual_Substituto_Tributário, Nu_CNPJ, Nu_Loja, Nu_Estabelecimento)   
VALUES(15,'Transporte Garantido', '162151153', '53516512891513', '123450281227', 1, 1);

/*Ligando os clientes aos tipos de Pessoas*/
INSERT INTO Cliente (Cd_Cliente, Cd_Pessoa_Física)   VALUES (1, 1);
INSERT INTO Cliente (Cd_Cliente, Cd_Pessoa_Física)   VALUES (2, 2);
INSERT INTO Cliente (Cd_Cliente, Cd_Pessoa_Física)   VALUES (3, 3);
INSERT INTO Cliente (Cd_Cliente, Cd_Pessoa_Física)   VALUES (4, 4);
INSERT INTO Cliente (Cd_Cliente, Cd_Pessoa_Física)   VALUES (5, 5);
INSERT INTO Cliente (Cd_Cliente, Cd_Pessoa_Jurídica) VALUES (6, 6);
INSERT INTO Cliente (Cd_Cliente, Cd_Pessoa_Jurídica) VALUES (7, 7);
INSERT INTO Cliente (Cd_Cliente, Cd_Pessoa_Jurídica) VALUES (8, 8);
INSERT INTO Cliente (Cd_Cliente, Cd_Pessoa_Jurídica) VALUES (9, 9);
INSERT INTO Cliente (Cd_Cliente, Cd_Pessoa_Jurídica) VALUES (10, 10);

/*Inserindo Produto*/
INSERT INTO Produto (Cd_Produto, Nm_Produto, Vl_ICMS, Vl_Seguro, Vl_Frete, Vl_Peso_Bruto, Vl_Peso_Liquido, Qt_Estoque, Vl_Produto_Sem_Imposto ) 
VALUES(1, 'caneta', 0, 0 ,0, 0.20, 0.15, 20, 1.00);
INSERT INTO Produto (Cd_Produto, Nm_Produto, Vl_ICMS, Vl_Seguro, Vl_Frete, Vl_Peso_Bruto, Vl_Peso_Liquido, Qt_Estoque, Vl_Produto_Sem_Imposto ) 
VALUES(2, 'borracha', 0, 0 ,0, 0.30, 0.20, 1, 3.00);
INSERT INTO Produto (Cd_Produto, Nm_Produto, Vl_ICMS, Vl_Seguro, Vl_Frete, Vl_Peso_Bruto, Vl_Peso_Liquido, Qt_Estoque, Vl_Produto_Sem_Imposto )  
VALUES(3, 'lapis', 0, 0 ,0, 0.10, 0.05, 5, 0.50);
INSERT INTO Produto (Cd_Produto, Nm_Produto, Vl_ICMS, Vl_Seguro, Vl_Frete, Vl_Peso_Bruto, Vl_Peso_Liquido, Qt_Estoque, Vl_Produto_Sem_Imposto ) 
VALUES(4, 'lapiseira', 0, 0 ,0, 0.20, 0.15, 30, 5.00);
INSERT INTO Produto (Cd_Produto, Nm_Produto, Vl_ICMS, Vl_Seguro, Vl_Frete, Vl_Peso_Bruto, Vl_Peso_Liquido, Qt_Estoque, Vl_Produto_Sem_Imposto )  
VALUES(5, 'regua', 0, 0 ,0, 0.50, 0.40, 40, 2.00);

/*Criando a Nota Fiscal para o Cliente 1*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (1, 1, '20161121', '20161122', 'Nada', 'Venda', 1, 1);

/*Criando a Nota Fiscal para o Cliente 2*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (2, 2, '20161121', '20161122', 'Nada', 'Venda', 1, 1);

/*Criando a Nota Fiscal para o Cliente 3*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (3, 3, '20161121', '20161122', 'Nada', 'Venda', 1, 1);

/*Criando a Nota Fiscal para o Cliente 4*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (4, 4, '20161121', '20161122', 'Nada', 'Venda', 1, 1);

/*Criando a Nota Fiscal para o Cliente 5*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (5, 5, '20161121', '20161122', 'Nada', 'Venda', 1, 1);

/*Criando a Nota Fiscal para o Cliente 6*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (6, 9, '20161121', '20161122', 'Nada', 'Venda', 1, 1);

/*Criando a Nota Fiscal para o Cliente 1*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (7, 7, '20161121', '20161122', 'Nada', 'Venda', 1, 1);

/*Criando a Nota Fiscal para o Cliente 2*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (8, 8, '20161121', '20161122', 'Nada', 'Venda', 1, 1);

/*Criando a Nota Fiscal para o Cliente 3*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (9, 9, '20161121', '20161122', 'Nada', 'Venda', 1, 1);

/*Criando a Nota Fiscal para o Cliente 4*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (10, 10, '20161121', '20161122', 'Nada', 'Venda', 1, 1);

/*Criando a Nota Fiscal para o Cliente 5*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (11, 8, '20161121', '20161122', 'Nada', 'Venda', 1, 1);

/*Criando a Nota Fiscal para o Cliente 6*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (12, 7, '20161121', '20161122', 'Nada', 'Venda', 1, 1);


/*Compra de materiais para estoque*/
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (13, 10, '20161121', '20161122', 'Nada', 'Compra', 1, 1);
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (14, 10, '20161121', '20161122', 'Nada', 'Compra', 1, 1);
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (15, 10, '20161121', '20161122', 'Nada', 'Compra', 1, 1);
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (16, 10, '20161121', '20161122', 'Nada', 'Compra', 1, 1);
INSERT INTO Nota_Fiscal (Cd_Nota_Fiscal, Cd_Cliente, Dt_Emissão, Dt_Limite_Emissão, Ds_Dados_Adicionais, Ds_Natureza_Operação, Nu_CFOP, Nu_Controle_Formulario)
VALUES (17, 10, '20161121', '20161122', 'Nada', 'Compra', 1, 1);

--/*Inserindo Item NF*/
/*Nota Fiscal 1*/
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(1, 1, 1, 2);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(2, 1, 3, 5);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(3, 1, 2, 10);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(4, 1, 5, 1);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(5, 1, 4, 3);

/*Nota Fiscal 2*/
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(6, 2, 1, 1);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(7, 2, 3, 2);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(8, 2, 2, 3);

/*Nota Fiscal 3*/
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(9, 3, 1, 5);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(10, 3, 3, 4);

/*Nota Fiscal 4*/
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(11, 4, 2 , 9);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(12, 4, 5, 17);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(13, 4, 4, 3);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(14, 4, 1, 12);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(15, 4, 3, 15);


/*Nota Fiscal 5*/
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(19, 5, 1, 2);

/*Nota Fiscal 6*/
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(20, 6, 1 , 90);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(21, 6, 2, 170);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(22, 6, 3, 30);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(23, 6, 4, 120);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(24, 6, 5, 150);


/*Compra para estoque*/
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(27, 7, 1, 200);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(28, 7, 2, 200);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(29, 7, 3, 200);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(30, 7, 4, 200);
INSERT INTO Item_NF (Cd_Item_NF, Cd_Nota_Fiscal, Cd_Produto, Qt_Produto) VALUES(31, 7, 5, 200);

/*Inserindo informacoes sobre a transportadora*/
INSERT INTO Transportador (Cd_Transportador, Cd_Pessoa_Jurídica, Ic_Frete_Para_Conta) 
VALUES (1, 11, 5);
INSERT INTO Transportador (Cd_Transportador, Cd_Pessoa_Jurídica, Ic_Frete_Para_Conta) 
VALUES (2, 12,3);
INSERT INTO Transportador (Cd_Transportador, Cd_Pessoa_Jurídica, Ic_Frete_Para_Conta) 
VALUES (3, 13,8);
INSERT INTO Transportador (Cd_Transportador, Cd_Pessoa_Jurídica, Ic_Frete_Para_Conta) 
VALUES (4, 14,6);
INSERT INTO Transportador (Cd_Transportador, Cd_Pessoa_Jurídica, Ic_Frete_Para_Conta) 
VALUES (5, 15,2);

/*Datas de Saída dos produtos */
INSERT INTO Saída (Cd_Transportador, Cd_Nota_Fiscal, Dt_Saída) VALUES (1, 1, '20161123');
INSERT INTO Saída (Cd_Transportador, Cd_Nota_Fiscal, Dt_Saída) VALUES (2, 2, '20161124');
INSERT INTO Saída (Cd_Transportador, Cd_Nota_Fiscal, Dt_Saída) VALUES (3, 3, '20161125');
INSERT INTO Saída (Cd_Transportador, Cd_Nota_Fiscal, Dt_Saída) VALUES (4, 4, '20161126');
INSERT INTO Saída (Cd_Transportador, Cd_Nota_Fiscal, Dt_Saída) VALUES (5, 5, '20161127');

/*Datas de Compras dos produtos */
INSERT INTO Saída (Cd_Transportador, Cd_Nota_Fiscal, Dt_Saída) VALUES (1, 6, '20161121');
INSERT INTO Saída (Cd_Transportador, Cd_Nota_Fiscal, Dt_Saída) VALUES (2, 7, '20161121');
INSERT INTO Saída (Cd_Transportador, Cd_Nota_Fiscal, Dt_Saída) VALUES (3, 8, '20161121');
INSERT INTO Saída (Cd_Transportador, Cd_Nota_Fiscal, Dt_Saída) VALUES (4, 9, '20161121');
INSERT INTO Saída (Cd_Transportador, Cd_Nota_Fiscal, Dt_Saída) VALUES (5, 10, '20161121');

/*Duplicatas*/
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (1, 4, 10, '20160921');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (2, 4, 10, '20161021');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (3, 4, 100, '20161121');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (4, 4, 100, '20161221');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (5, 4, 100, '20170121');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (6, 2, 10, '20160915');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (7, 2, 10, '20161015');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (8, 2, 10, '20161107');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (9, 1, 50, '20160907');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (10, 1, 50, '20161007');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (11, 1, 50, '20161123');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (12, 3, 10, '20161223');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (13, 3, 50, '20170123');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (14, 3, 50, '20170223');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (15, 3, 50, '20170223');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (16, 3, 50, '20170323');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (17, 8, 50, '20161023');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (18, 8, 50, '20161123');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (19, 8, 50, '20160823');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (20, 9, 50, '20160723');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (21, 9, 50, '20160823');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (22, 9, 50, '20160923');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (23, 9, 50, '20161023');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (24, 9, 50, '20161123');
INSERT INTO Duplicata (Cd_Duplicata, Cd_Nota_Fiscal, Vl_Parcial, Dt_Vencimento_Parcial)
VALUES (25, 9, 50, '20161223');


/*Pagamentos*/
INSERT INTO Pagamento (Cd_Pagamento, Cd_Duplicata, Dt_Pagamento, Vl_Pagamento)
VALUES (1, 6, '20160914', 10);
INSERT INTO Pagamento (Cd_Pagamento, Cd_Duplicata, Dt_Pagamento, Vl_Pagamento)
VALUES (2, 7, '20161014', 10);
INSERT INTO Pagamento (Cd_Pagamento, Cd_Duplicata, Dt_Pagamento, Vl_Pagamento)
VALUES (3, 8, '20160914', 10);
INSERT INTO Pagamento (Cd_Pagamento, Cd_Duplicata, Dt_Pagamento, Vl_Pagamento)
VALUES (4, 9, '20160722', 50);
INSERT INTO Pagamento (Cd_Pagamento, Cd_Duplicata, Dt_Pagamento, Vl_Pagamento)
VALUES (5, 9, '20160822', 50);

