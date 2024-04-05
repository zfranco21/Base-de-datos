CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario INT NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    ubicacion VARCHAR(255) NOT NULL,
    id_restauranteFavorito INT,
    CONSTRAINT pk_usuarios PRIMARY KEY (id_usuario),
    CONSTRAINT fk_restauranteFavorito FOREIGN KEY (id_restauranteFavorito)
                REFERENCES restaurantes(id_restaurante)
);

CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido INT NOT NULL, 
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    id_usuario INT NOT NULL,
    CONSTRAINT pk_pedidos PRIMARY KEY (id_pedido),
    CONSTRAINT fk_usuario FOREIGN KEY (id_usuario)
                REFERENCES usuarios(id_usuario)
);

CREATE TABLE IF NOT EXISTS restaurantes (
    id_restaurante INT NOT NULL,
    id_menu INT,
    nombre VARCHAR(255) NOT NULL,
    contacto INT NOT NULL,
    calificacion INT NOT NULL,
    ubicacion VARCHAR(255) NOT NULL,
    CONSTRAINT pk_restaurantes PRIMARY KEY (id_restaurante),
    CONSTRAINT fk_menu FOREIGN KEY (id_menu) 
                REFERENCES elementos_menu(id_menu)
);

CREATE TABLE IF NOT EXISTS elementos_menu (
    id_menu INT NOT NULL,
    id_elemento_menu INT NOT NULL,
    plato VARCHAR(255) NOT NULL,
    precio MONEY NOT NULL,
    CONSTRAINT pk_elementos_menu PRIMARY KEY (id_elemento_menu),
    CONSTRAINT fk_menu FOREIGN KEY (id_menu)
                REFERENCES restaurantes(id_restaurante)
);
