CREATE TABLE Preceptor (
    ID_Preceptor INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(30) NOT NULL,
        Apellido INT (10) NOT NULL,
    Usuario VARCHAR(50) NOT NULL UNIQUE,
    Contraseña VARCHAR(100) NOT NULL,
    Mail VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Curso (
    ID_Curso INT PRIMARY KEY AUTO_INCREMENT,
    Aula INT(10) NOT NULL,
    Año INT (4)NOT NULL,
    Division INT(10) NOT NULL,
    ID_Preceptor INT(10),
    
    FOREIGN KEY (ID_Preceptor) REFERENCES Preceptor(ID_Preceptor)
);

CREATE TABLE Alumno (
    ID_Alumno INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(30) NOT NULL,
    Apellido VARCHAR(30) NOT NULL,
    DNI INT(8) NOT NULL UNIQUE,
    Curso INT(20),
    CodigoQR INT(40),
    MailAlumno VARCHAR(100) NOT NULL UNIQUE,
    MailResponsable VARCHAR(100) NOT NULL,
    ID_Curso INT(10),
    
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

CREATE TABLE Asistencia (
    ID_Asistencia INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE (10) NOT NULL,
    HoraEntrada TIME,
    HoraSalida TIME,
    Estado VARCHAR(30) NOT NULL,
    Tipo VARCHAR(30) NOT NULL,
    ID_Alumno INT(10),
    ID_Preceptor INT(10),
    
    FOREIGN KEY (ID_Alumno) REFERENCES Alumno(ID_Alumno),
    FOREIGN KEY (ID_Preceptor) REFERENCES Preceptor(ID_Preceptor)
);