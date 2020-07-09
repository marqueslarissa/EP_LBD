/* POSTGRES - ALTERACAO DO MODELO: POPULA BANCO
* Tabelas: 
*	Sale_History e Sale - remocao do campo idt_project pois nao ha relacionamento;
*	Department_Management - remocao do campo idt_employee pois nao ha relacionamento;
*	Employee - remocao do campo idt_team pois nao ha relacionamento;
*	Department_Management - adicao de mais um campo 'DEFAULT' que faltava;
*/

INSERT INTO Level_knowledge VALUES(DEFAULT, 'Estagiario');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Júnior 1');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Júnior 2');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Júnior 3');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Pleno 1');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Pleno 2');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Pleno 3');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Senior 1');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Senior 2');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Senior 3');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Especialista 1');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Especialista 2');
INSERT INTO Level_knowledge VALUES(DEFAULT, 'Especialista 3');

INSERT INTO Project VALUES(DEFAULT, 'Projeto Blissey', '2020-01-01', '2020-12-14');
INSERT INTO Project VALUES(DEFAULT, 'Projeto Chansey', '2019-03-12', '2020-01-12');
INSERT INTO Project VALUES(DEFAULT, 'Projeto Articuno', '2018-03-12', '2019-05-20');
INSERT INTO Project VALUES(DEFAULT, 'Projeto Charmander', '2020-03-12', '2021-02-16');
INSERT INTO Project VALUES(DEFAULT, 'Projeto Arceus', '2020-04-10', '2022-01-09');

INSERT INTO Sale VALUES(DEFAULT,'2019-12-28',1000.00);
INSERT INTO Sale VALUES(DEFAULT,'2019-01-03',3500.00);
INSERT INTO Sale VALUES(DEFAULT,'2017-12-30',30000.00);
INSERT INTO Sale VALUES(DEFAULT,'2020-01-19',5000.00);
INSERT INTO Sale VALUES(DEFAULT,'2019-12-20',10000.00);

INSERT INTO Sale_history VALUES(DEFAULT,'2019-12-28',1000.00, 1);
INSERT INTO Sale_history VALUES(DEFAULT,'2019-01-03',3500.00, 2);
INSERT INTO Sale_history VALUES(DEFAULT,'2017-12-30',30000.00, 3);
INSERT INTO Sale_history VALUES(DEFAULT,'2020-01-19',5000.00, 4);
INSERT INTO Sale_history VALUES(DEFAULT,'2019-12-20',10000.00, 5);

INSERT INTO Financial_control VALUES(DEFAULT,1000.00, 1);
INSERT INTO Financial_control VALUES(DEFAULT,3500.00, 2);
INSERT INTO Financial_control VALUES(DEFAULT,30000.00, 3);
INSERT INTO Financial_control VALUES(DEFAULT,5000.00, 4);
INSERT INTO Financial_control VALUES(DEFAULT,10000.00, 5);

INSERT INTO Department VALUES(DEFAULT, 'Finanças');
INSERT INTO Department VALUES(DEFAULT, 'Tecnologia');
INSERT INTO Department VALUES(DEFAULT, 'Operacional');
INSERT INTO Department VALUES(DEFAULT, 'Relações Humanas');

INSERT INTO Team VALUES(DEFAULT, 'Alpha', 1);
INSERT INTO Team VALUES(DEFAULT, 'Beta', 2);
INSERT INTO Team VALUES(DEFAULT, 'Omega', 3);
INSERT INTO Team VALUES(DEFAULT, 'Delta', 4);
INSERT INTO Team VALUES(DEFAULT, 'Tau', 5);

/* Foi ajustado o insert do campo salary pois estava string */
INSERT INTO Employee VALUES(DEFAULT, 'Nelson Paulo Lorenzo Ramos', '2020-01-01', 1000.00, 1, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Lorena Tatiane Duarte', '2019-03-12', 3000.00, 2, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Julio Victor Porto', '2019-01-01', 7000.00, 5, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Teresinha Tereza Luzia Teixeira', '2018-12-28', 10000.00, 6, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Andreia Sara Maria Cavalcanti', '2017-04-10', 30000.00, 13, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Gustavo Rodrigo Leonardo Barbosa', '2020-01-01', 1000.00, 1, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Gabriel Pietro da Cruz', '2019-09-12', 7000.00, 3, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Clara Sônia Caldeira', '2018-12-28', 10000.00, 6, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Eliane Giovana Rita Silva', '2018-12-28', 10000.00, 6, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Antonella Natália Ayla Novaes', '2017-01-10', 30000.00, 13, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Alexandre Enzo Ferreira', '2019-03-12', 7000.00, 5, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Camila Sophia Cristiane Sales', '2019-03-12', 7000.00, 5, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Julia Isabelly Nunes', '2018-12-12', 10000.00, 6, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Rita Ana Melo', '2017-12-12', 25000.00, 12, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Iago João Vinicius da Cunha', '2017-01-10', 30000.00, 13, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Antônia Teresinha Isabel da Mata', '2019-12-28', 1000.00, 2, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Rodrigo Joaquim Breno Freitas', '2019-09-12', 7000.00, 3, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Daniel Severino Figueiredo', '2018-12-12', 10000.00, 6, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Cristiane Ana Drumond', '2018-01-10', 13000.00, 10, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Luiza Jaqueline Sales', '2018-01-10', 13000.00, 10, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Josefa Patrícia Peixoto', '2020-01-01', 1000.00, 1, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Francisca Kamilly Débora Assunção', '2019-05-12', 8000.00, 4, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Patrícia Sara Maya Gonçalves', '2019-03-12', 10000.00, 6, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Cristiane Vitória Vieira', '2018-01-10', 13000.00, 10, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Brenda Emanuelly Isabela da Conceição', '2017-01-10', 30000.00, 13, 2);
INSERT INTO Employee VALUES(DEFAULT, 'Diego Jorge Santos', '2015-01-10', 90000.00, 13, 2);

INSERT INTO Employee_History VALUES(DEFAULT, '2020-01-01', 1000.00, 1);
INSERT INTO Employee_History VALUES(DEFAULT, '2019-03-12', 3000.00, 2);
INSERT INTO Employee_History VALUES(DEFAULT, '2019-01-01', 7000.00, 5);
INSERT INTO Employee_History VALUES(DEFAULT, '2018-12-28', 10000.00, 6);
INSERT INTO Employee_History VALUES(DEFAULT, '2017-04-10', 30000.00, 13);
INSERT INTO Employee_History VALUES(DEFAULT, '2020-01-01', 1000.00, 1);
INSERT INTO Employee_History VALUES(DEFAULT, '2019-09-12', 7000.00, 3);
INSERT INTO Employee_History VALUES(DEFAULT, '2018-12-28', 10000.00, 6);
INSERT INTO Employee_History VALUES(DEFAULT, '2018-12-28', 10000.00, 6);
INSERT INTO Employee_History VALUES(DEFAULT, '2017-01-10', 30000.00, 13);
INSERT INTO Employee_History VALUES(DEFAULT, '2019-03-12', 7000.00, 51);
INSERT INTO Employee_History VALUES(DEFAULT, '2019-03-12', 7000.00, 52);
INSERT INTO Employee_History VALUES(DEFAULT, '2018-12-12', 10000.00, 6);
INSERT INTO Employee_History VALUES(DEFAULT, '2017-12-12', 25000.00, 12);
INSERT INTO Employee_History VALUES(DEFAULT, '2017-01-10', 30000.00, 13);
INSERT INTO Employee_History VALUES(DEFAULT, '2019-12-28', 1000.00, 2);
INSERT INTO Employee_History VALUES(DEFAULT, '2019-09-12', 7000.00, 3);
INSERT INTO Employee_History VALUES(DEFAULT, '2018-12-12', 10000.00, 6);
INSERT INTO Employee_History VALUES(DEFAULT, '2018-01-10', 13000.00, 10);
INSERT INTO Employee_History VALUES(DEFAULT, '2018-01-10', 13000.00, 10);
INSERT INTO Employee_History VALUES(DEFAULT, '2020-01-01', 1000.00, 1);
INSERT INTO Employee_History VALUES(DEFAULT, '2019-05-12', 8000.00, 4);
INSERT INTO Employee_History VALUES(DEFAULT, '2019-03-12', 10000.00, 6);
INSERT INTO Employee_History VALUES(DEFAULT, '2018-01-10', 13000.00, 10);
INSERT INTO Employee_History VALUES(DEFAULT, '2017-01-10', 30000.00, 13);
INSERT INTO Employee_History VALUES(DEFAULT, '2015-01-10', 90000.00, 13);

INSERT INTO Dependent VALUES(DEFAULT, 'Betina Josefa Eduarda Corte Real', 1);
INSERT INTO Dependent VALUES(DEFAULT, 'Davi Benedito André Melo', 1);
INSERT INTO Dependent VALUES(DEFAULT, 'Helena Heloisa Almeida', 2);
INSERT INTO Dependent VALUES(DEFAULT, 'Julio Tiago Manuel Araújo', 3);
INSERT INTO Dependent VALUES(DEFAULT, 'Valentina Sandra Nina Dias', 3);
INSERT INTO Dependent VALUES(DEFAULT, 'Cristiane Manuela Antonella Pires', 4);
INSERT INTO Dependent VALUES(DEFAULT, 'Maya Vera Assis', 6);
INSERT INTO Dependent VALUES(DEFAULT, 'Severino Iago Aparício', 6);
INSERT INTO Dependent VALUES(DEFAULT, 'Kevin Jorge Benedito Galvão', 6);
INSERT INTO Dependent VALUES(DEFAULT, 'Carolina Heloisa Caldeira', 7);
INSERT INTO Dependent VALUES(DEFAULT, 'Diego Anderson Bernardes', 8);
INSERT INTO Dependent VALUES(DEFAULT, 'Antonella Ana Santos', 8);
INSERT INTO Dependent VALUES(DEFAULT, 'Emanuelly Esther Barbosa', 9);
INSERT INTO Dependent VALUES(DEFAULT, 'Carolina Kamilly Carvalho', 9);
INSERT INTO Dependent VALUES(DEFAULT, 'Marcela Isabela Cecília Melo', 10);
INSERT INTO Dependent VALUES(DEFAULT, 'Emily Maitê Analu da Rocha', 11);
INSERT INTO Dependent VALUES(DEFAULT, 'Diego Nicolas Murilo da Silva', 12);
INSERT INTO Dependent VALUES(DEFAULT, 'Henrique Paulo Kaique Mendes', 12);
INSERT INTO Dependent VALUES(DEFAULT, 'Augusto Breno Rodrigo da Costa', 14);
INSERT INTO Dependent VALUES(DEFAULT, 'Davi Vicente Viana', 14);
INSERT INTO Dependent VALUES(DEFAULT, 'Erick Joaquim Silva', 15);
INSERT INTO Dependent VALUES(DEFAULT, 'Isadora Raquel Jéssica Moraes', 15);
INSERT INTO Dependent VALUES(DEFAULT, 'Yuri Noah Thomas Cardoso', 16);
INSERT INTO Dependent VALUES(DEFAULT, 'Caleb Kaique Luan Pires', 16);
INSERT INTO Dependent VALUES(DEFAULT, 'Enzo José Monteiro', 17);
INSERT INTO Dependent VALUES(DEFAULT, 'Raimundo Paulo Gabriel Pires', 17);
INSERT INTO Dependent VALUES(DEFAULT, 'Alana Joana Emanuelly Jesus', 18);
INSERT INTO Dependent VALUES(DEFAULT, 'Daniel Alexandre Viana', 18);
INSERT INTO Dependent VALUES(DEFAULT, 'Anderson Geraldo Moura', 19);
INSERT INTO Dependent VALUES(DEFAULT, 'Enrico Alexandre Rodrigues', 20);
INSERT INTO Dependent VALUES(DEFAULT, 'Fernanda Juliana Viana', 21);
INSERT INTO Dependent VALUES(DEFAULT, 'Amanda Isabelle Mariana Martins', 21);
INSERT INTO Dependent VALUES(DEFAULT, 'Eduarda Lara da Mata', 22);
INSERT INTO Dependent VALUES(DEFAULT, 'Larissa Letícia Benedita Moura', 22);
INSERT INTO Dependent VALUES(DEFAULT, 'Lucca Augusto André Alves', 23);
INSERT INTO Dependent VALUES(DEFAULT, 'Sophia Fernanda da Costa', 23);
INSERT INTO Dependent VALUES(DEFAULT, 'Lorena Priscila Vitória da Rosa', 24);
INSERT INTO Dependent VALUES(DEFAULT, 'Cauã Elias Fernando Assis', 25);
INSERT INTO Dependent VALUES(DEFAULT, 'Iago Arthur Juan Carvalho', 25);
INSERT INTO Dependent VALUES(DEFAULT, 'Sebastiana Eduarda Cecília Ferreira', 25);

INSERT INTO Manager VALUES(5);
INSERT INTO Manager VALUES(10);
INSERT INTO Manager VALUES(15);
INSERT INTO Manager VALUES(20);
INSERT INTO Manager VALUES(25);

INSERT INTO Analyst VALUES(1);
INSERT INTO Analyst VALUES(2);
INSERT INTO Analyst VALUES(3);
INSERT INTO Analyst VALUES(6);
INSERT INTO Analyst VALUES(7);
INSERT INTO Analyst VALUES(8);
INSERT INTO Analyst VALUES(11);
INSERT INTO Analyst VALUES(12);
INSERT INTO Analyst VALUES(13);
INSERT INTO Analyst VALUES(16);
INSERT INTO Analyst VALUES(17);
INSERT INTO Analyst VALUES(18);
INSERT INTO Analyst VALUES(21);
INSERT INTO Analyst VALUES(22);
INSERT INTO Analyst VALUES(23);

INSERT INTO Especialist VALUES('Mobile',4);
INSERT INTO Especialist VALUES('Front-End',9);
INSERT INTO Especialist VALUES('Back-End',14);
INSERT INTO Especialist VALUES('Infra',19);
INSERT INTO Especialist VALUES('BI',24);

INSERT INTO Director VALUES('Desenvolvimento', 26);

INSERT INTO Department_Management VALUES(DEFAULT, 2);