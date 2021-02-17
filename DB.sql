CREATE DATABASE bankemployee;

CREATE TABLE employee
(
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(255),
    emp_email  VARCHAR(255),
    emp_photo  VARCHAR(1024),
    emp_address  VARCHAR(255),
    emp_password  VARCHAR(255),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES bank_branch(branch_id)
);

CREATE TABLE bank_branch
(
    branch_id INT NOT NULL AUTO_INCREMENT,
    branch_name  VARCHAR(255),
    branch_address  VARCHAR(255),
    bank_id INT,
    PRIMARY KEY(branch_id),
    FOREIGN KEY (bank_id) REFERENCES bank(bank_id)
);

CREATE TABLE bank
(
    bank_id INT NOT NULL AUTO_INCREMENT,
    bank_name VARCHAR(255),
    PRIMARY KEY(bank_id)
);

INSERT INTO bank (bank_name) VALUE
    ('Bank 1'), 
    ('Bank 2');

INSERT INTO bank_branch (branch_name, branch_address, bank_id ) VALUES 
    ('Branch 1', 'Kandy', '2'), 
    ('Branch 2', 'Colombo', '1'), 
    ('Branch 3', 'Vavuniya', '2');


INSERT INTO employee (emp_name, emp_email, emp_photo, emp_address, emp_password, branch_id) VALUES
    ('Aruna jayasundara', 'aruna@bank1.lk', 'https://aardvark.ghostpool.com/community/wp-content/uploads/avatars/72/5cbddabff083e-bpfull.jpg', 'Kandy', 'emp1@123', '1'),
    ('Sampath Liyanage','sampath@bank2.lk','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQEZrATmgHOi5ls0YCCQBTkocia_atSw0X-Q&usqp=CAU','Vavuniya','emp2@123','3'),
    ('Gayani Perera','gayani@bank1.lk','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQEZrATmgHOi5ls0YCCQBTkocia_atSw0X-Q&usqp=CAU','Colombo','emp3@123','2')