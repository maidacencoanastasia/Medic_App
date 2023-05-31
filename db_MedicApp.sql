CREATE TABLE if NOT EXISTS doctors  (
  doctorId INT PRIMARY KEY AUTO_INCREMENT,
  fullName VARCHAR(255) NOT NULL,
  dateOfBirth date NOT NULL,
  gender VARCHAR(2) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  login VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE if NOT EXISTS patients (
  patientId INT PRIMARY KEY AUTO_INCREMENT,
  fullName VARCHAR(255) NOT NULL,
  dateOfBirth VARCHAR(10) NOT NULL,
  gender VARCHAR(2) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS appointments (
  id INT PRIMARY KEY AUTO_INCREMENT,
  patientId INT NOT NULL,
  appointmentDate VARCHAR(10) NOT NULL,
  appointmentTime VARCHAR(8) NOT NULL,
  diseases VARCHAR(255),
  doctorId INT NOT NULL,
  status VARCHAR(255) NOT NULL,
  FOREIGN KEY (patientId) REFERENCES patients(patientId),
  FOREIGN KEY (doctorId) REFERENCES doctors(doctorId)
);

