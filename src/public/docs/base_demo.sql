CREATE TABLE paises (
  id varchar(11) PRIMARY KEY,
  nombre varchar(100) NOT NULL
);

INSERT INTO paises (id, nombre) VALUES 
('504','HONDURAS')


CREATE TABLE departamentos (
  id int PRIMARY KEY,
  nombre varchar(100) NOT NULL,
  paisId VARCHAR(11) NOT NULL REFERENCES paises(id)
);



INSERT INTO departamentos (id, nombre,paisId) VALUES
(1, 'Atlantida','504'),
(2, 'Colon','504'),
(3, 'Comayagua','504'),
(4, 'Copan','504'),
(5, 'Cortés','504'),
(6, 'Choluteca','504'),
(7, 'El Paraiso','504'),
(8, 'Francisco Morazán','504'),
(9, 'Gracias a Dios','504'),
(10, 'Intibuca','504'),
(11, 'Islas de La Bahia','504'),
(12, 'La Paz','504'),
(13, 'Lempira','504'),
(14, 'Ocotepeque','504'),
(15, 'Olancho','504'),
(16, 'Santa Barbara','504'),
(17, 'Valle','504'),
(18, 'Yoro','504');

CREATE TABLE IF NOT EXISTS municipios(
id INTEGER PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
departamentoId INTEGER NOT NULL REFERENCES departamentos(id)
);


INSERT INTO municipios (id, nombre, departamentoId) VALUES
(1, 'La Ceiba', 1),
(2, 'El Porvenir', 1),
(3, 'Esparta', 1),
(4, 'Jutiapa', 1),
(5, 'La Masica', 1),
(6, 'San Francisco', 1),
(7, 'Tela', 1),
(8, 'Arizona', 1),
(9, 'Trujillo', 2),
(10, 'Balfate', 2),
(11, 'Iriona', 2),
(12, 'Limón', 2),
(13, 'Sabá', 2),
(14, 'Santa Fe', 2),
(15, 'Santa Rosa de Aguán', 2),
(16, 'Sonaguera', 2),
(17, 'Comayagua', 3),
(18, 'Ajuterique', 3),
(19, 'El Rosario', 3),
(20, 'Esquías', 3),
(21, 'Humuya', 3),
(22, 'La Libertad', 3),
(23, 'Lamaní', 3),
(24, 'La Trinidad', 3),
(25, 'Lejamaní', 3),
(26, 'Meámbar', 3),
(27, 'Minas de Oro', 3),
(28, 'Ojo de Agua', 3),
(29, 'San Jerónimo', 3),
(30, 'San José de Comayagua', 3),
(31, 'San José del Potrero', 3),
(32, 'San Luis', 3),
(33, 'San Sebastián', 3),
(34, 'Siguatepeque', 3),
(35, 'Villa de San Antonio', 3),
(36, 'Lajass', 3),
(37, 'Taulabe', 3),
(38, 'Santa Rosa de Copán', 4),
(39, 'Cabañas', 4),
(40, 'Concepción', 4),
(41, 'Copán Ruinas', 4),
(42, 'Corquín', 4),
(43, 'Cucuyagua', 4),
(44, 'Dolores', 4),
(45, 'Dulce Nombre', 4),
(46, 'El Paraíso', 4),
(47, 'Florida', 4),
(48, 'La Jigua', 4),
(49, 'La Unión', 4),
(50, 'Nueva Arcadia', 4),
(51, 'San Agustín', 4),
(52, 'San Antonio', 4),
(53, 'San Jerónimo', 4),
(54, 'San José', 4),
(55, 'San Juan de Opoa', 4),
(56, 'San Nicolás', 4),
(57, 'San Pedro', 4),
(58, 'Santa Rita', 4),
(59, 'Trinidad de Copán', 4),
(60, 'Veracruz', 4),
(61, 'San Pedro Sula', 5),
(62, 'Choloma', 5),
(63, 'Omoa', 5),
(64, 'Pimienta', 5),
(65, 'Potrerillos', 5),
(66, 'Puerto Cortés', 5),
(67, 'San Antonio de Cortés', 5),
(68, 'San Francisco de Yojoa', 5),
(69, 'San Manuel', 5),
(70, 'Santa Cruz de Yojoa', 5),
(71, 'Villanueva', 5),
(72, 'La Lima', 5),
(73, 'Choluteca', 6),
(74, 'Apacilagua', 6),
(75, 'Concepción de María', 6),
(76, 'Duyure', 6),
(77, 'El Corpus', 6),
(78, 'El Triunfo', 6),
(79, 'Marcovia', 6),
(80, 'Morolica', 6),
(81, 'Namasigüe', 6),
(82, 'Orocuina', 6),
(83, 'Pespire', 6),
(84, 'San Antonio de Flores', 6),
(85, 'San Isidro', 6),
(86, 'San José', 6),
(87, 'San Marcos de Colón', 6),
(88, 'Santa Ana de Yusguare', 6),
(89, 'Yuscaran', 7),
(90, 'Aluca', 7),
(91, 'Danli', 7),
(92, 'El Paraiso', 7),
(93, 'Guinope', 7),
(94, 'Jacaleapa', 7),
(95, 'Liure', 7),
(96, 'Moroceli', 7),
(97, 'Tegucigalpa D.C.', 8),
(98, 'Cedros', 8),
(99, 'Lepaterique', 8),
(100, 'Ojojona', 8),
(101, 'Sabanagrande', 8),
(102, 'Santa Ana', 8),
(103, 'Santa Lucia', 8),
(104, 'Valle de Angeles', 8),
(105, 'Puerto Lempira', 9),
(106, 'Brus Laguna', 9),
(107, 'Villeda Morales', 9),
(108, 'La Esperanza', 10),
(109, 'Concepcion', 10),
(110, 'Intibuca', 10),
(111, 'Roatan', 11),
(112, 'Guanaja', 11),
(113, 'Jose Santos Guardiola', 11),
(114, 'Utila', 11),
(115, 'La Paz', 12),
(116, 'Marcala', 12),
(117, 'San Juan', 12),
(118, 'Yarula', 12),
(119, 'Gracias', 13),
(120, 'La union', 13),
(121, 'Lepaera', 13),
(122, 'Talgua', 13),
(123, 'Nueva Ocotepeque', 14),
(124, 'Concepcion', 14),
(125, 'San Marcos', 14),
(126, 'Sinuapa', 14),
(127, 'Juticalpa', 15),
(128, 'Campamento', 15),
(129, 'Catacamas', 15),
(130, 'Patuca', 15),
(131, 'Santa Barbara', 16),
(132, 'Gualala', 16),
(133, 'Ilama', 16),
(134, 'Quimistan', 16),
(135, 'Nacaome', 17),
(136, 'Amapala', 17),
(137, 'Langue', 17),
(138, 'San Lorenza', 17),
(139, 'Yoro', 18),
(140, 'Arenal', 18),
(141, 'Olanchito', 18),
(142, 'Yorito', 18),
(143, 'Tocoa', 2),
(144, 'Bonito Oriental', 2);


---USUARIO
CREATE TABLE IF NOT EXISTS tipoUsuario(
  id INTEGER PRIMARY KEY,
  descripcion VARCHAR(100)
);

INSERT INTO tipoUsuario(id,descripcion) VALUES 
(1,'empresa'),
(2,'cliente'),
(3,'empleado');

CREATE TABLE IF NOT EXISTS usuarios(
 id SERIAL PRIMARY KEY,
 nombre        VARCHAR(200)   ,
 email         VARCHAR(30)  UNIQUE  ,
 municipioId INTEGER NOT NULL REFERENCES municipios(id) ,
 direccion     VARCHAR(200) ,
 tipo INTEGER NOT NULL REFERENCES tipoUsuario(id),
 estadoHabilitacion BOOLEAN DEFAULT FALSE,
 creacion TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS imagenPerfil(
id SERIAL PRIMARY KEY,
perfilImagen BYTEA,
contentType VARCHAR(30),
usuarioId INTEGER NOT NULL REFERENCES usuarios(id)
);

CREATE TABLE IF NOT EXISTS deptoEmpresa(
id SERIAL PRIMARY KEY,
descripcion VARCHAR(30),
empresaId INTEGER NOT NULL REFERENCES usuarios(id),
);

CREATE TABLE IF NOT EXISTS empleados(
 id SERIAL PRIMARY KEY,
 identidad VARCHAR(200) UNIQUE,
 nombre        VARCHAR(200) ,
 telefono      VARCHAR(30) ,
 email         VARCHAR(30)UNIQUE,
 direccion     VARCHAR(200) ,
 activo BOOLEAN DEFAULT TRUE,
 salarioBase MONEY,
 municipioId INTEGER NOT NULL REFERENCES municipios(id) ,
 tipo INTEGER NOT NULL REFERENCES tipoUsuario(id),
 deptoId INTEGER NOT NULL REFERENCES deptoEmpresa(id),
 estadoHabilitacion BOOLEAN DEFAULT FALSE,
 creacion TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS imagenEmpleado(
id SERIAL PRIMARY KEY,
perfilImagen BYTEA,
contentType VARCHAR(30),
empleadoId INTEGER NOT NULL REFERENCES empleados(id)
);


CREATE TABLE IF NOT EXISTS InOutEmpleado(
id SERIAL PRIMARY KEY,
entrada TIMESTAMP DEFAULT NOW(),
salida TIMESTAMP,
activo BOOLEAN DEFAULT TRUE,
empleadoId INTEGER NOT NULL REFERENCES empleados(id)
);
