CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    copas INTEGER DEFAULT 0,
    foto_perfil varchar (255)
);
select * from usuarios u ;
UPDATE opciones 
SET video = 'videos/leon_video.mp4'
WHERE id = 5;

alter table opciones add column video varchar(255);

CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    imagen VARCHAR(255) NOT NULL
);
delete from categorias where imagen = 'img/conejo.png';
select * from categorias c ;
insert into categorias (id, nombre, imagen) values (1, 'Animales', 'img/ani.png');
insert into categorias (id, nombre, imagen) values (2, 'Pronombres', 'img/tu.png');
insert into categorias (id, nombre, imagen) values (3, 'Números', 'img/num.png');
insert into categorias (id, nombre, imagen) values (4, 'Letras', 'img/letras.png');
insert into categorias (id, nombre, imagen) values (5, 'Comida', 'img/comi.png');
insert into categorias (id, nombre, imagen) values (6, 'Colores', 'img/colores.png');

DELETE FROM opciones 
WHERE id = 21;

CREATE TABLE opciones (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    categoria_id INTEGER REFERENCES categorias(id),
    imagen varchar (255),
    video varchar (255)
);
select * from opciones;
--Insercion para animales
insert into opciones (id, nombre, categoria_id, imagen) values (1, 'Perro', 1, 'perro.png');
insert into opciones (id, nombre, categoria_id, imagen) values (2, 'Gato', 1, 'gato.png');
insert into opciones (id, nombre, categoria_id, imagen) values (3, 'Caballo', 1, 'caballo.png');
insert into opciones (id, nombre, categoria_id, imagen) values (4, 'Mono', 1, 'mono.png');
insert into opciones (id, nombre, categoria_id, imagen) values (5, 'León', 1, 'leon.png');
insert into opciones (id, nombre, categoria_id, imagen) values (6, 'Conejo', 1, 'conejo.png');
insert into opciones (id, nombre, categoria_id, imagen) values (7, 'Paloma', 1, 'paloma.png');
insert into opciones (id, nombre, categoria_id, imagen) values (8, 'Elefante', 1, 'elefante.png');
insert into opciones (id, nombre, categoria_id, imagen) values (21, 'Jirafa', 1, 'leon.png');

--Insercion para pronombres
insert into opciones (id, nombre, categoria_id, imagen) values (9, 'Tú', 2, 'tu.png');
insert into opciones (id, nombre, categoria_id, imagen) values (10, 'Yo', 2, 'yo.png');
insert into opciones (id, nombre, categoria_id, imagen) values (11, 'Él', 2, 'el.png');
insert into opciones (id, nombre, categoria_id, imagen) values (12, 'Ella', 2, 'ella.png');
insert into opciones (id, nombre, categoria_id, imagen) values (13, 'Ellos', 2, 'ellos.png');
insert into opciones (id, nombre, categoria_id, imagen) values (14, 'Ellas', 2, 'ellas.png');

--Insercion para numeros
insert into opciones (id, nombre, categoria_id, imagen) values (15, 'Número 1', 3, '1.png');
insert into opciones (id, nombre, categoria_id, imagen) values (16, 'Número 2', 3, '2.png');
insert into opciones (id, nombre, categoria_id, imagen) values (17, 'Número 3', 3, '3.png');
insert into opciones (id, nombre, categoria_id, imagen) values (18, 'Número 4', 3, '4.png');
insert into opciones (id, nombre, categoria_id, imagen) values (19, 'Número 5', 3, '5.png');
insert into opciones (id, nombre, categoria_id, imagen) values (20, 'Número 6', 3, '6.png');

CREATE TABLE trivias (
    id SERIAL PRIMARY KEY,
    pregunta VARCHAR(255) NOT NULL,
    respuesta_correcta INTEGER REFERENCES opciones(id),
    opcion1 INTEGER REFERENCES opciones(id),
    opcion2 INTEGER REFERENCES opciones(id),
    opcion3 INTEGER REFERENCES opciones(id)
);

CREATE TABLE resultados (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER REFERENCES usuarios(id),
    trivia_id INTEGER REFERENCES trivias(id),
    acierto BOOLEAN NOT NULL
);
