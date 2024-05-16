-- INSERT CATEGORIAS
INSERT INTO `biblioteca3`.`categoria` (`nombre`, `descripcion`) VALUES ('Aventuras', 'Los libros de aventuras nos sumergen en emocionantes travesías llenas de acción, exploración y valentía. Desde búsquedas de tesoros hasta viajes épicos, este género nos permite vivir experiencias extraordinarias a través de las páginas.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Fantasia', 'Los libros de fantasía nos transportan a mundos mágicos llenos de criaturas asombrosas, hechizos y aventuras épicas. Desde dragones hasta elfos, este género despierta nuestra imaginación.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Ciencia ficcion', 'La ciencia ficción nos lleva a futuros distópicos, viajes espaciales y tecnologías avanzadas. Explora mundos alternativos y dilemas éticos en esta fascinante categoría.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Romance', 'Los libros de romance nos sumergen en historias de amor apasionadas y complicadas. Desde encuentros fortuitos hasta amores prohibidos, este género nos hace suspirar.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Misterio', 'Los libros de misterio nos mantienen en vilo mientras seguimos pistas y resolvemos enigmas. Desde detectives privados hasta conspiraciones, este género nos atrapa.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Historica', 'Los libros históricos nos transportan a épocas pasadas, desde la antigua Roma hasta la Segunda Guerra Mundial. Descubre eventos y personajes que han marcado la historia.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Terror', 'Los libros de terror nos hacen temblar con sus criaturas sobrenaturales, casas embrujadas y giros inesperados. Prepárate para noches de insomnio.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Autoayuda', 'Los libros de autoayuda nos brindan consejos prácticos para mejorar nuestra vida, desde la gestión del tiempo hasta la autoestima. Encuentra inspiración y crecimiento personal.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Biografia', 'Los libros de biografía nos cuentan la vida de personas reales, desde líderes históricos hasta artistas famosos. Descubre sus logros y desafíos.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Humor', 'Los libros de humor nos hacen reír con anécdotas, chistes y situaciones cómicas. Desde sátira hasta comedia absurda, este género alegra nuestros días.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Crecimiento personal', 'Los libros de crecimiento personal nos guían hacia una vida más plena y significativa. Aprende sobre mindfulness, desarrollo profesional y relaciones.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Fantasia epica', 'Los libros de fantasía épica nos sumergen en mundos vastos y épicos. Desde guerreros legendarios hasta profecías, este género nos lleva a aventuras inolvidables.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Novela historica', 'Las novelas históricas nos recrean eventos y personajes del pasado con detalles vívidos. Desde reinas hasta guerreros, este género nos transporta en el tiempo.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Distopia', 'Las distopías nos presentan sociedades sombrías y opresivas. Desde rebeliones hasta luchas por la libertad, este género nos hace reflexionar sobre nuestro mundo.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Literatura clasica', 'La literatura clásica incluye obras atemporales de autores como Shakespeare, Jane Austen y Charles Dickens. Sumérgete en la prosa elegante y los personajes inolvidables.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Thriller', 'Los thrillers nos mantienen al borde del asiento con giros sorprendentes y persecuciones trepidantes. Desde agentes secretos hasta asesinos en serie, este género es pura adrenalina.');
INSERT INTO biblioteca3.categoria (nombre, descripcion) VALUES ('Suspense', 'Los libros de suspense mantienen a los lectores en vilo con tramas misteriosas, giros inesperados y situaciones peligrosas. Desde thrillers psicológicos hasta conspiraciones, este género te mantendrá pegado a las páginas.');

-- INSERT LIBROS

-- Aventuras
INSERT INTO `biblioteca3`.`libro` (`isbn`, `titulo`, `autor`, `precio`, `nombre_categoria`) VALUES ('978-84-943356-7-8', 'El misterio del antiguo pergamino', 'Gómez Rodríguez, Elena', 26, 'Misterio');
-- Ciencia ficción
INSERT INTO `biblioteca3`.`libro` (`isbn`, `titulo`, `autor`, `precio`, `nombre_categoria`) VALUES ('978-84-943356-8-1', 'Viaje a las estrellas', 'Martín Sánchez, Luis', 28, 'Ciencia ficcion');
-- Romance
INSERT INTO `biblioteca3`.`libro` (`isbn`, `titulo`, `autor`, `precio`, `nombre_categoria`) VALUES ('978-84-943356-9-8', 'Bajo la luna de París', 'Fernández Pérez, María', 24, 'Romance');
-- Historia
INSERT INTO `biblioteca3`.`libro` (`isbn`, `titulo`, `autor`, `precio`, `nombre_categoria`) VALUES ('978-84-943356-1-2', 'Los secretos del pasado', 'García Torres, Javier', 30, 'Historica');
-- Fantasía
INSERT INTO `biblioteca3`.`libro` (`isbn`, `titulo`, `autor`, `precio`, `nombre_categoria`) VALUES ('978-84-943356-2-9', 'El reino de las hadas', 'López Martínez, Ana', 25, 'Fantasia');
-- Suspense
INSERT INTO `biblioteca3`.`libro` (`isbn`, `titulo`, `autor`, `precio`, `nombre_categoria`) VALUES ('978-84-943356-3-6', 'El juego del gato y el ratón', 'Pérez García, Juan', 28, 'Suspense');
-- Biografía
INSERT INTO `biblioteca3`.`libro` (`isbn`, `titulo`, `autor`, `precio`, `nombre_categoria`) VALUES ('978-84-943356-4-3', 'Vida de un genio olvidado', 'Rodríguez Fernández, David', 26, 'Biografia');
-- Poesía
INSERT INTO `biblioteca3`.`libro` (`isbn`, `titulo`, `autor`, `precio`, `nombre_categoria`) VALUES ('978-84-943356-5-0', 'Versos al viento', 'Sánchez Gómez, Marta', 23, 'Poesia');
-- Misterio
INSERT INTO `biblioteca3`.`libro` (`isbn`, `titulo`, `autor`, `precio`, `nombre_categoria`) VALUES ('978-84-943356-6-7', 'El enigma de la casa abandonada', 'Martínez López, Antonio', 29, 'Misterio');
-- Humor
INSERT INTO `biblioteca3`.`libro` (`isbn`, `titulo`, `autor`, `precio`, `nombre_categoria`) VALUES ('978-84-943356-0-5', 'Risas en el parque', 'González Sánchez, Laura', 21, 'Humor');

