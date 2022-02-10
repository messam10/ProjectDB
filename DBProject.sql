create database alqershi;
use alqershi;

CREATE TABLE `Departments` (
    `Department_ID` int  NOT NULL ,
    `Name` varchar(20)  NOT NULL ,
    PRIMARY KEY (
        `Department_ID`
    )
);

CREATE TABLE `Employees` (
    `Employee_ID` int  NOT NULL ,
    `First_Name` varchar(20)  NOT NULL ,
    `Last_Name` varchar(20)  NOT NULL ,
    `Phone` varchar(20)  NOT NULL ,
    `Email` varchar(20)  NOT NULL ,
    `Address` varchar(20)  NOT NULL ,
    `Birthdate` date  NOT NULL ,
    `Hire_Date` date  NOT NULL ,
    PRIMARY KEY (
        `Employee_ID`
    )
);

CREATE TABLE `Salaries` (
    `Salary_ID` int  NOT NULL ,
    `Salary` float(10,2)  NOT NULL ,
    `From_Date` date  NOT NULL ,
    `To-Date` date  NOT NULL ,
    `Employee_ID` int  NOT NULL ,
    PRIMARY KEY (
        `Salary_ID`
    )
);

CREATE TABLE `Dep_Manager` (
    `DM_ID` int  NOT NULL ,
    `Department_ID` int  NOT NULL ,
    `Employee_ID` int  NOT NULL ,
    `From_Date` date  NOT NULL ,
    `To-Date` date  NOT NULL ,
    PRIMARY KEY (
        `DM_ID`
    )
);

CREATE TABLE `Dep_Emp` (
    `DE_ID` int  NOT NULL ,
    `Department_ID` int  NOT NULL ,
    `Employee_ID` int  NOT NULL ,
    `From_Date` date  NOT NULL ,
    `To-Date` date  NOT NULL ,
    PRIMARY KEY (
        `DE_ID`
    )
);


ALTER TABLE `Salaries` ADD CONSTRAINT `fk_Salaries_Employee_ID` FOREIGN KEY(`Employee_ID`)
REFERENCES `Employees` (`Employee_ID`);

ALTER TABLE `Dep_Manager` ADD CONSTRAINT `fk_Dep_Manager_Department_ID` FOREIGN KEY(`Department_ID`)
REFERENCES `Departments` (`Department_ID`);

ALTER TABLE `Dep_Manager` ADD CONSTRAINT `fk_Dep_Manager_Employee_ID` FOREIGN KEY(`Employee_ID`)
REFERENCES `Employees` (`Employee_ID`);

ALTER TABLE `Dep_Emp` ADD CONSTRAINT `fk_Dep_Emp_Department_ID` FOREIGN KEY(`Department_ID`)
REFERENCES `Departments` (`Department_ID`);

ALTER TABLE `Dep_Emp` ADD CONSTRAINT `fk_Dep_Emp_Employee_ID` FOREIGN KEY(`Employee_ID`)
REFERENCES `Employees` (`Employee_ID`);




insert into Departments
values(1, "Human Resource"),
(2, "Marketing"),
(3, "IT"),
(4, "Accounting"),
(5, "Sales");


insert into Employees
values(1, "Mohammed", "Essam", "772708867", "memaq1998.10.7", "Sanaa", '1998-10-07', '2021-01-01'),
(2, "Ahmed", "Mohammed", "772708867", "memaq1998.10.7", "Sanaa", '1998-10-07', '2021-01-01'),
(3, "Ali", "Ahmed", "772708867", "memaq1998.10.7", "Sanaa", '1998-10-07', '2021-01-01'),
(4, "Motaz", "Essam", "772708867", "memaq1998.10.7", "Sanaa", '1998-10-07', '2021-01-01'),
(5, "Zaid", "Essam", "772708867", "memaq1998.10.7", "Sanaa", '1998-10-07', '2021-01-01');


insert into Salaries
values(1, 1400.50, '2021-01-01', '2023-01-01', 2),
(2, 3000.50, '2021-01-01', '2023-01-01', 1),
(3, 540.50, '2021-01-01', '2023-01-01', 4),
(4, 1000.50, '2021-01-01', '2023-01-01', 5),
(5, 4000.50, '2021-01-01', '2023-01-01', 3);

insert into Dep_Emp
values(1, 1, 2, '2023-01-01', '2022-01-01'),
(2, 3, 1, '2023-01-01', '2024-01-01'),
(3, 3, 3, '2023-01-01', '2024-01-01'),
(4, 3, 4, '2023-01-01', '2024-01-01'),
(5, 3, 5, '2023-01-01', '2024-01-01');

insert into Dep_Manager
values(1, 1, 2, '2023-01-01', '2022-01-01'),
(2, 3, 1, '2023-01-01', '2024-01-01');