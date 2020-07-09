/* POSTGRES - ALTERACAO DO MODELO: CRIA BANCO
* Tabelas: 
*	Level_Knowledge - alteracao do campo idt_knowledge para idt_level_knowledge;
*	Sale_History e Sale - remocao do campo idt_project pois nao ha relacionamento;
*	Department_Management - remocao do campo idt_employee pois nao ha relacionamento;
						  - adicao da FK idt_department;
*	Employee - remocao do campo idt_team pois nao ha relacionamento;
*/

CREATE TABLE Level_Knowledge (
	idt_level_knowledge SERIAL PRIMARY KEY,
	name_knowledge VARCHAR
);

CREATE TABLE Employee (
	idt_employee SERIAL PRIMARY KEY,
	name_employee VARCHAR,
	date_admission DATE,
	salary DECIMAL,
	idt_level_knowledge INTEGER,
	idt_department INTEGER,
--	idt_team INTEGER
);

CREATE TABLE Employee_History (
	idt_employee_history SERIAL PRIMARY KEY,
	date_update DATE,
	salary_update DECIMAL,
	level_knowledge_udpdate VARCHAR, 
	idt_employee INTEGER 
);

CREATE TABLE Dependent (
	idt_dependent SERIAL PRIMARY KEY,
	name_dependent VARCHAR,
	idt_employee INTEGER
);

CREATE TABLE Director (
	area VARCHAR,
	fk_Employee_idt_employee SERIAL PRIMARY KEY
);

CREATE TABLE Manager (
	fk_Employee_idt_employee SERIAL PRIMARY KEY
);

CREATE TABLE Especialist (
	area_knowledge VARCHAR,
	fk_Employee_idt_employee SERIAL PRIMARY KEY
);

CREATE TABLE Analyst (
	fk_Employee_idt_employee SERIAL PRIMARY KEY
);

CREATE TABLE Team (
	idt_team SERIAL PRIMARY KEY,
	name_team VARCHAR,
	idt_project INTEGER
);

CREATE TABLE Project(
	idt_project SERIAL PRIMARY KEY,
	name_project VARCHAR,
	date_create DATE,
	date_final DATE
);

CREATE TABLE Sale (
	idt_sale SERIAL PRIMARY KEY,
	date_sale DATE,
	amount_sale_project DECIMAL,
--	idt_project INTEGER
);

CREATE TABLE Sale_History (
	idt_sale_history SERIAL PRIMARY KEY,
	date_update_sale DATE,
	cost_sale_update DECIMAL,
	idt_sale INTEGER,
--	idt_project INTEGER
);

CREATE TABLE Financial_Control (
	idt_financial_control SERIAL PRIMARY KEY,
	total_cost_sale DECIMAL,
	idt_sale INTEGER
);

CREATE TABLE Department (
	idt_department SERIAL PRIMARY KEY,
	name_department VARCHAR
);

CREATE TABLE Department_Management (
	idt_dpt_management SERIAL PRIMARY KEY,
--	idt_employee INTEGER,
	idt_department INTEGER
);

ALTER TABLE Employee ADD CONSTRAINT FK_Employee_2
FOREIGN KEY (idt_level_knowledge)
REFERENCES Level_Knowledge (idt_level_knowledge)
ON DELETE RESTRICT;

ALTER TABLE Employee ADD CONSTRAINT FK_Employee_3
FOREIGN KEY (idt_department)
REFERENCES Department;

ALTER TABLE Dependent ADD CONSTRAINT FK_Dependent_2
FOREIGN KEY (idt_employee)
REFERENCES Employee ON DELETE CASCADE;

ALTER TABLE Director ADD CONSTRAINT FK_Director_2
FOREIGN KEY (fk_Employee_idt_employee)
REFERENCES Employee (idt_employee)
ON DELETE CASCADE;

ALTER TABLE Manager ADD CONSTRAINT FK_Manager_2
FOREIGN KEY (fk_Employee_idt_employee)
REFERENCES Employee (idt_employee)
ON DELETE CASCADE;

ALTER TABLE Especialist ADD CONSTRAINT FK_Especialist_2
FOREIGN KEY (fk_Employee_idt_employee)
REFERENCES Employee (idt_employee)
ON DELETE CASCADE;

ALTER TABLE Analyst ADD CONSTRAINT FK_Analyst_2
FOREIGN KEY (fk_Employee_idt_employee)
REFERENCES Employee (idt_employee)
ON DELETE CASCADE;

/*
ALTER TABLE Sale ADD CONSTRAINT FK_Sale_2
FOREIGN KEY (idt_project)
REFERENCES Project;
*/

ALTER TABLE Sale_History ADD CONSTRAINT FK_Sale_History_2
FOREIGN KEY (idt_sale)
REFERENCES Sale;

/*
ALTER TABLE Sale_History ADD CONSTRAINT FK_Sale_History_1
FOREIGN KEY (idt_project)
REFERENCES Project;
*/

ALTER TABLE Financial_Control ADD CONSTRAINT FK_Financial_Control_2
FOREIGN KEY (idt_sale)
REFERENCES Sale;

/*
ALTER TABLE Department_Management ADD CONSTRAINT FK_department_Management_2
FOREIGN KEY (idt_department)
REFERENCES Department;
*/

ALTER TABLE Team ADD CONSTRAINT FK_project
FOREIGN KEY (idt_project)
REFERENCES Project;

/*
ALTER TABLE Department_Management ADD CONSTRAINT FK_Employee_2
FOREIGN KEY (idt_employee)
REFERENCES Employee;
*/

ALTER TABLE Department_Management ADD CONSTRAINT FK_Department
FOREIGN KEY (idt_department)
REFERENCES Department_Management;