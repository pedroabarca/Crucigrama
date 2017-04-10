--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.4
-- Dumped by pg_dump version 9.4.4
-- Started on 2015-12-07 20:49:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2025 (class 0 OID 40994)
-- Dependencies: 172
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO categoria (id_categoria, nombre_categoria) VALUES (1, 'general');
INSERT INTO categoria (id_categoria, nombre_categoria) VALUES (2, 'deportes');
INSERT INTO categoria (id_categoria, nombre_categoria) VALUES (3, 'historia');
INSERT INTO categoria (id_categoria, nombre_categoria) VALUES (4, 'geografia');
INSERT INTO categoria (id_categoria, nombre_categoria) VALUES (5, 'musica');


--
-- TOC entry 2045 (class 0 OID 0)
-- Dependencies: 173
-- Name: categorias_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categorias_id_categoria_seq', 5, true);


--
-- TOC entry 2030 (class 0 OID 81955)
-- Dependencies: 177
-- Data for Name: jugador; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2046 (class 0 OID 0)
-- Dependencies: 176
-- Name: jugador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('jugador_id_seq', 1, false);


--
-- TOC entry 2028 (class 0 OID 41022)
-- Dependencies: 175
-- Data for Name: palabra; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO palabra (id_palabra, palabra, pista, id_categoria) VALUES (1, 'mono', 'primates no humanos o simios', 1);
INSERT INTO palabra (id_palabra, palabra, pista, id_categoria) VALUES (2, 'martillo', 'Herramienta para golpear,compuesta de una cabeza,por lo común de hierro,y un mango', 1);
INSERT INTO palabra (id_palabra, palabra, pista, id_categoria) VALUES (3, 'diptongo', 'Unión de dos vocales', 1);
INSERT INTO palabra (id_palabra, palabra, pista, id_categoria) VALUES (4, 'ajedez', 'Juego entre dos personas, cada una de las cuales dispone de 16 piezas', 1);
INSERT INTO palabra (id_palabra, palabra, pista, id_categoria) VALUES (5, 'simil', 'Comparación o semejanza entre dos elementos', 1);
INSERT INTO palabra (id_palabra, palabra, pista, id_categoria) VALUES (6, 'híper', 'pref. que significa superioridad o exceso', 1);
INSERT INTO palabra (id_palabra, palabra, pista, id_categoria) VALUES (7, 'femur', 'Hueso del muslo, el más largo del cuerpo', 1);
INSERT INTO palabra (id_palabra, palabra, pista, id_categoria) VALUES (8, 'celula', 'Unidad microscópica esencial de los seres vivos', 1);
INSERT INTO palabra (id_palabra, palabra, pista, id_categoria) VALUES (9, 'nebulosa', 'adj. Que tiene niebla o está cubierto por ella', 1);


--
-- TOC entry 2047 (class 0 OID 0)
-- Dependencies: 174
-- Name: palabras_id_palabra_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('palabras_id_palabra_seq', 9, true);


--
-- TOC entry 2032 (class 0 OID 81966)
-- Dependencies: 179
-- Data for Name: tiempo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2048 (class 0 OID 0)
-- Dependencies: 178
-- Name: tiempo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tiempo_id_seq', 1, false);


SET default_tablespace = '';

--
-- TOC entry 1911 (class 2606 OID 81963)
-- Name: jugador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY jugador
    ADD CONSTRAINT jugador_pkey PRIMARY KEY (id);


--
-- TOC entry 1909 (class 2606 OID 41030)
-- Name: palabras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY palabra
    ADD CONSTRAINT palabras_pkey PRIMARY KEY (id_palabra);


--
-- TOC entry 1907 (class 2606 OID 41019)
-- Name: pk_id_categoria; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT pk_id_categoria PRIMARY KEY (id_categoria);


--
-- TOC entry 1913 (class 2606 OID 81971)
-- Name: tiempo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tiempo
    ADD CONSTRAINT tiempo_pkey PRIMARY KEY (id);


--
-- TOC entry 1915 (class 2606 OID 81977)
-- Name: id_categoria_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tiempo
    ADD CONSTRAINT id_categoria_fk FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);


--
-- TOC entry 1914 (class 2606 OID 41031)
-- Name: palabras_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY palabra
    ADD CONSTRAINT palabras_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);


-- Completed on 2015-12-07 20:49:33

--
-- PostgreSQL database dump complete
--

