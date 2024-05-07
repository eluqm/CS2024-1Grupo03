CREATE TABLE Usuario (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(100),
    Email VARCHAR(100),
    Contraseña VARCHAR(100),
    Copas INTEGER
);



CREATE TABLE Categoria (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(100)
);



CREATE TABLE Sena (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(100),
    Video VARCHAR(255),
    Categoria_ID INTEGER REFERENCES Categoria(ID)
);



CREATE TABLE Trivia (
    ID SERIAL PRIMARY KEY,
    Pregunta VARCHAR(255),
    Opciones TEXT[],
    Respuesta_correcta VARCHAR(255)
);



CREATE TABLE Copas (
    ID SERIAL PRIMARY KEY,
    Usuario_ID INTEGER REFERENCES Usuario(ID),
    Fecha DATE
);



CREATE TABLE Usuario_Sena (
    Usuario_ID INTEGER REFERENCES Usuario(ID),
    Sena_ID INTEGER REFERENCES Sena(ID),
    PRIMARY KEY (Usuario_ID, Sena_ID)
);



CREATE TABLE Usuario_Trivia (
    Usuario_ID INTEGER REFERENCES Usuario(ID),
    Trivia_ID INTEGER REFERENCES Trivia(ID),
    PRIMARY KEY (Usuario_ID, Trivia_ID)
);

select * from usuario u;