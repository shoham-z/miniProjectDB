create table if not exists Room(
    room_id INT NOT NULL PRIMARY KEY,
    name varchar(30),
    max_people INT NOT NULL,
    price INT NOT NULL
);

create table Customer(
  client_id INT,
  client_name varchar(30),
  age INT,
  isMale BIT NOT NULL,
    constraint id_key PRIMARY KEY (client_id)
);

CREATE TABLE MaintenanceEmp (
    emp_id INT,
    emp_name varchar(30),
    age INT,
    isMale BIT NOT NULL,
    salary INT NOT NULL,
    constraint id_key PRIMARY KEY (emp_id)
);

CREATE TABLE RoomOrder(
    OrderId INT,
    amount INT,
    room_number INT,
    customer_id INT,
    constraint id PRIMARY KEY (OrderId),
    CONSTRAINT FOREIGN KEY (room_number) REFERENCES Room(room_id) ON DELETE CASCADE,
    CONSTRAINT FOREIGN KEY (customer_id) REFERENCES Customer(client_id) ON DELETE CASCADE
);

CREATE TABLE Maintane(
    room_id INT,
    emp_id INT,
    CONSTRAINT FOREIGN KEY (room_id)
        REFERENCES Room(room_id)
        ON DELETE CASCADE,
    CONSTRAINT FOREIGN KEY (emp_id) REFERENCES MaintenanceEmp(emp_id) ON DELETE CASCADE
);