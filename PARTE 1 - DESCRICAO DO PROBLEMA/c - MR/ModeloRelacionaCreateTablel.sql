/* ModeloRelacional: */

CREATE TABLE Employee (
    idt_employee INTEGER PRIMARY KEY,
    name_employee VARCHAR,
    date_admission DATE,
    num_salary DECIMAL,
    idt_level_knowledge INTEGER,
    idt_departament INTEGER
);

CREATE TABLE Level_Knowledge (
    idt_knowledge INTEGER PRIMARY KEY,
    nam_knowledge VARCHAR
);

CREATE TABLE Employee_History (
    idt_employee_history INTEGER PRIMARY KEY,
    date_update DATE,
    num_salary_update DECIMAL,
    level_knowledge_udpdate NCHAR,
    idt_employee INTEGER
);

CREATE TABLE Dependent (
    idt_dependent INTEGER PRIMARY KEY,
    nam_dependent VARCHAR,
    idt_employee INTEGER
);

CREATE TABLE Director (
    Area VARCHAR,
    fk_Employee_idt_employee INTEGER PRIMARY KEY
);

CREATE TABLE Manager (
    num_time INTEGER,
    fk_Employee_idt_employee INTEGER PRIMARY KEY
);

CREATE TABLE Especialist (
    area_knowledge VARCHAR,
    fk_Employee_idt_employee INTEGER PRIMARY KEY
);

CREATE TABLE Analyst (
    fk_Employee_idt_employee INTEGER PRIMARY KEY
);

CREATE TABLE Team_Project (
    idt_team INTEGER,
    name_team VARCHAR,
    qtd_employee INTEGER,
    idt_project INTEGER,
    nam_project VARCHAR,
    date_create DATE,
    date_final DATE,
    idt_manager INTEGER,
    PRIMARY KEY (idt_team, idt_project)
);

CREATE TABLE Sale (
    idt_sale INTEGER PRIMARY KEY,
    date_sale DATE,
    amount_sale_project INTEGER,
    idt_project INTEGER
);

CREATE TABLE Sale_History (
    idt_sale_history INTEGER PRIMARY KEY,
    date_update_sale DATE,
    cost_sale_update DECIMAL,
    idt_sale INTEGER,
    idt_project INTEGER
);

CREATE TABLE Financial_Control (
    idt_financial_control INTEGER PRIMARY KEY,
    total_cost_sale INTEGER,
    idt_sale INTEGER,
    fk_Sale_idt_sale INTEGER
);

CREATE TABLE Departament_Management (
    idt_dpt_management INTEGER PRIMARY KEY,
    name_dpt_management VARCHAR,
    num_employees INTEGER,
    start_date DATE,
    idt_departament INTEGER
);

CREATE TABLE Departament (
    idt_departament INTEGER PRIMARY KEY,
    name_departament VARCHAR,
    qtd_employee INTEGER
);
 
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_2
    FOREIGN KEY (idt_level_knowledge)
    REFERENCES Level_Knowledge (idt_knowledge)
    ON DELETE RESTRICT;
 
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_3
    FOREIGN KEY (idt_departament???)
    REFERENCES ??? (???);
 
ALTER TABLE Employee_History ADD CONSTRAINT FK_Employee_History_2
    FOREIGN KEY (idt_employee???)
    REFERENCES ??? (???);
 
ALTER TABLE Dependent ADD CONSTRAINT FK_Dependent_2
    FOREIGN KEY (idt_employee???)
    REFERENCES ??? (???);
 
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
 
ALTER TABLE Team_Project ADD CONSTRAINT FK_Team_Project_2
    FOREIGN KEY (idt_project???, idt_manager???)
    REFERENCES ??? (???);
 
ALTER TABLE Sale ADD CONSTRAINT FK_Sale_2
    FOREIGN KEY (idt_project???)
    REFERENCES ??? (???);
 
ALTER TABLE Sale_History ADD CONSTRAINT FK_Sale_History_2
    FOREIGN KEY (idt_sale???, idt_project???)
    REFERENCES ??? (???);
 
ALTER TABLE Financial_Control ADD CONSTRAINT FK_Financial_Control_2
    FOREIGN KEY (idt_sale???)
    REFERENCES ??? (???);
 
ALTER TABLE Financial_Control ADD CONSTRAINT FK_Financial_Control_3
    FOREIGN KEY (fk_Sale_idt_sale)
    REFERENCES Sale (idt_sale);
 
ALTER TABLE Departament_Management ADD CONSTRAINT FK_Departament_Management_2
    FOREIGN KEY (idt_departament???)
    REFERENCES ??? (???);