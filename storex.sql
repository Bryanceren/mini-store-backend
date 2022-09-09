--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.3

-- Started on 2022-09-09 14:32:04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16618)
-- Name: Order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Order" (
    id integer NOT NULL,
    "userId" integer NOT NULL
);


ALTER TABLE public."Order" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16630)
-- Name: OrderDetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OrderDetail" (
    id integer NOT NULL,
    "orderId" integer NOT NULL,
    "productId" integer NOT NULL,
    "totalAmount" character varying(255) NOT NULL
);


ALTER TABLE public."OrderDetail" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16629)
-- Name: OrderDetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OrderDetail_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."OrderDetail_id_seq" OWNER TO postgres;

--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 218
-- Name: OrderDetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OrderDetail_id_seq" OWNED BY public."OrderDetail".id;


--
-- TOC entry 221 (class 1259 OID 16652)
-- Name: OrderDetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OrderDetails" (
    id integer NOT NULL,
    "orderId" integer,
    "productId" integer,
    "totalAmount" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."OrderDetails" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16617)
-- Name: Order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Order_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Order_id_seq" OWNER TO postgres;

--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 216
-- Name: Order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Order_id_seq" OWNED BY public."Order".id;


--
-- TOC entry 220 (class 1259 OID 16647)
-- Name: Orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Orders" (
    id integer NOT NULL,
    "userId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Orders" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16609)
-- Name: Product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price character varying(255) NOT NULL
);


ALTER TABLE public."Product" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16608)
-- Name: Product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Product_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Product_id_seq" OWNER TO postgres;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 214
-- Name: Product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Product_id_seq" OWNED BY public."Product".id;


--
-- TOC entry 222 (class 1259 OID 16662)
-- Name: Products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Products" (
    id integer NOT NULL,
    name character varying(255),
    price character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "productId" integer
);


ALTER TABLE public."Products" OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16588)
-- Name: Rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rol" (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public."Rol" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16587)
-- Name: Rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rol_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rol_id_seq" OWNER TO postgres;

--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 210
-- Name: Rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rol_id_seq" OWNED BY public."Rol".id;


--
-- TOC entry 223 (class 1259 OID 16674)
-- Name: Rols; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rols" (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "rolId" integer
);


ALTER TABLE public."Rols" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16534)
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16595)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    "rolId" integer NOT NULL
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16594)
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Users_id_seq" OWNER TO postgres;

--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 212
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- TOC entry 3207 (class 2604 OID 16621)
-- Name: Order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order" ALTER COLUMN id SET DEFAULT nextval('public."Order_id_seq"'::regclass);


--
-- TOC entry 3208 (class 2604 OID 16633)
-- Name: OrderDetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderDetail" ALTER COLUMN id SET DEFAULT nextval('public."OrderDetail_id_seq"'::regclass);


--
-- TOC entry 3206 (class 2604 OID 16612)
-- Name: Product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product" ALTER COLUMN id SET DEFAULT nextval('public."Product_id_seq"'::regclass);


--
-- TOC entry 3204 (class 2604 OID 16591)
-- Name: Rol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol" ALTER COLUMN id SET DEFAULT nextval('public."Rol_id_seq"'::regclass);


--
-- TOC entry 3205 (class 2604 OID 16598)
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- TOC entry 3383 (class 0 OID 16618)
-- Dependencies: 217
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Order" (id, "userId") FROM stdin;
\.


--
-- TOC entry 3385 (class 0 OID 16630)
-- Dependencies: 219
-- Data for Name: OrderDetail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OrderDetail" (id, "orderId", "productId", "totalAmount") FROM stdin;
\.


--
-- TOC entry 3387 (class 0 OID 16652)
-- Dependencies: 221
-- Data for Name: OrderDetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OrderDetails" (id, "orderId", "productId", "totalAmount", "createdAt", "updatedAt") FROM stdin;
\.


--
-- TOC entry 3386 (class 0 OID 16647)
-- Dependencies: 220
-- Data for Name: Orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Orders" (id, "userId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- TOC entry 3381 (class 0 OID 16609)
-- Dependencies: 215
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Product" (id, name, price) FROM stdin;
\.


--
-- TOC entry 3388 (class 0 OID 16662)
-- Dependencies: 222
-- Data for Name: Products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Products" (id, name, price, "createdAt", "updatedAt", "productId") FROM stdin;
\.


--
-- TOC entry 3377 (class 0 OID 16588)
-- Dependencies: 211
-- Data for Name: Rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rol" (id, name) FROM stdin;
1	user
\.


--
-- TOC entry 3389 (class 0 OID 16674)
-- Dependencies: 223
-- Data for Name: Rols; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rols" (id, name, "createdAt", "updatedAt", "rolId") FROM stdin;
\.


--
-- TOC entry 3375 (class 0 OID 16534)
-- Dependencies: 209
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
20220909185530-create-rol.js
20220908190420-create-rol-v2.js
20220909185749-create-users-v2.js
20220909190506-create-products-v2.js
20220909190525-create-orders-v2.js
20220909190545-create-order-detail-v2.js
\.


--
-- TOC entry 3379 (class 0 OID 16595)
-- Dependencies: 213
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" (id, email, password, "rolId") FROM stdin;
2	bryanceren01@gmail.com	$2b$10$8io5mQDnJFrFGR3rL2SrC.ZbfaUx2wn9vwCusmuYcGy12l5OsFbuC	1
3	bryanceren01@gmail.com	$2b$10$Rez7n8ZyQZQjAc98VXRmieiK61CjvgwrrwOl7UulfZ0FCBi/FPpRC	1
\.


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 218
-- Name: OrderDetail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OrderDetail_id_seq"', 1, false);


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 216
-- Name: Order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Order_id_seq"', 1, false);


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 214
-- Name: Product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Product_id_seq"', 1, false);


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 210
-- Name: Rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rol_id_seq"', 1, false);


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 212
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_id_seq"', 3, true);


--
-- TOC entry 3220 (class 2606 OID 16635)
-- Name: OrderDetail OrderDetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderDetail"
    ADD CONSTRAINT "OrderDetail_pkey" PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 16656)
-- Name: OrderDetails OrderDetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderDetails"
    ADD CONSTRAINT "OrderDetails_pkey" PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 16623)
-- Name: Order Order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16651)
-- Name: Orders Orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 16616)
-- Name: Product Product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16668)
-- Name: Products Products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY (id);


--
-- TOC entry 3212 (class 2606 OID 16593)
-- Name: Rol Rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol"
    ADD CONSTRAINT "Rol_pkey" PRIMARY KEY (id);


--
-- TOC entry 3228 (class 2606 OID 16678)
-- Name: Rols Rols_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rols"
    ADD CONSTRAINT "Rols_pkey" PRIMARY KEY (id);


--
-- TOC entry 3210 (class 2606 OID 16538)
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- TOC entry 3214 (class 2606 OID 16602)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- TOC entry 3231 (class 2606 OID 16636)
-- Name: OrderDetail OrderDetail_orderId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderDetail"
    ADD CONSTRAINT "OrderDetail_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public."Order"(id);


--
-- TOC entry 3232 (class 2606 OID 16641)
-- Name: OrderDetail OrderDetail_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderDetail"
    ADD CONSTRAINT "OrderDetail_productId_fkey" FOREIGN KEY ("productId") REFERENCES public."Product"(id);


--
-- TOC entry 3233 (class 2606 OID 16657)
-- Name: OrderDetails OrderDetails_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderDetails"
    ADD CONSTRAINT "OrderDetails_id_fkey" FOREIGN KEY (id) REFERENCES public."Orders"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3230 (class 2606 OID 16624)
-- Name: Order Order_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id);


--
-- TOC entry 3234 (class 2606 OID 16669)
-- Name: Products Products_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_productId_fkey" FOREIGN KEY ("productId") REFERENCES public."OrderDetails"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3235 (class 2606 OID 16679)
-- Name: Rols Rols_rolId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rols"
    ADD CONSTRAINT "Rols_rolId_fkey" FOREIGN KEY ("rolId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3229 (class 2606 OID 16603)
-- Name: Users Users_rolId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_rolId_fkey" FOREIGN KEY ("rolId") REFERENCES public."Rol"(id);


-- Completed on 2022-09-09 14:32:04

--
-- PostgreSQL database dump complete
--

