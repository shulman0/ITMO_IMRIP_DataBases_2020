toc.dat                                                                                             0000600 0004000 0002000 00000025575 13655734734 0014476 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       4            
        x            AdvertAgency    11.5    12.2 !    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16681    AdvertAgency    DATABASE     l   CREATE DATABASE "AdvertAgency" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE "AdvertAgency";
                vladiknaska    false                     2615    16682    AdvertAgencySchema    SCHEMA     $   CREATE SCHEMA "AdvertAgencySchema";
 "   DROP SCHEMA "AdvertAgencySchema";
                vladiknaska    false         Z           1247    16698    status    TYPE     l   CREATE TYPE "AdvertAgencySchema".status AS ENUM (
    'approved',
    'denied',
    'paid',
    'closed'
);
 '   DROP TYPE "AdvertAgencySchema".status;

-- Customer table describes basic information about customer
       AdvertAgencySchema          vladiknaska    false    7         �            1259    16683    Customer    TABLE     �   CREATE TABLE "AdvertAgencySchema"."Customer" (
    id integer NOT NULL,
    full_name character(256) NOT NULL,
    phone_number character(30),
    email character(256)
);
 ,   DROP TABLE "AdvertAgencySchema"."Customer";

-- Material table describes material properties
       AdvertAgencySchema            vladiknaska    false    7         �            1259    16707    Material    TABLE     �   CREATE TABLE "AdvertAgencySchema"."Material" (
    id integer NOT NULL,
    name character(256) NOT NULL,
    measure character(128),
    price_per_item money
);
 ,   DROP TABLE "AdvertAgencySchema"."Material";

-- MaterialPerOrder describes materials, which included in one particular order
       AdvertAgencySchema            vladiknaska    false    7         �            1259    16722    MaterialPerOrder    TABLE     �   CREATE TABLE "AdvertAgencySchema"."MaterialPerOrder" (
    id integer NOT NULL,
    material_id integer NOT NULL,
    amount double precision DEFAULT 1
);
 4   DROP TABLE "AdvertAgencySchema"."MaterialPerOrder";

-- Order table consists of order details
       AdvertAgencySchema            vladiknaska    false    7         �            1259    16688    Order    TABLE     �   CREATE TABLE "AdvertAgencySchema"."Order" (
    id integer NOT NULL,
    order_content_id integer NOT NULL,
    customer_id integer NOT NULL,
    paid_at date,
    status character(128)
);
 )   DROP TABLE "AdvertAgencySchema"."Order";

-- OrderContent contains info about items in order
       AdvertAgencySchema            vladiknaska    false    7         �            1259    16713    OrderContent    TABLE     �   CREATE TABLE "AdvertAgencySchema"."OrderContent" (
    id integer NOT NULL,
    service_id integer NOT NULL,
    amount double precision DEFAULT 1,
    materials_id integer NOT NULL,
    performer_id integer NOT NULL,
    comments character(1024)
);
 0   DROP TABLE "AdvertAgencySchema"."OrderContent";

-- Performer table describes basic info about order performer
       AdvertAgencySchema            vladiknaska    false    7         �            1259    16733 	   Performer    TABLE     �   CREATE TABLE "AdvertAgencySchema"."Performer" (
    id integer NOT NULL,
    full_name character(256) NOT NULL,
    phone_number character(30)
);
 -   DROP TABLE "AdvertAgencySchema"."Performer";

-- PriceList table is a price list for all services in advert agency
       AdvertAgencySchema            vladiknaska    false    7         �            1259    16728 	   PriceList    TABLE     �   CREATE TABLE "AdvertAgencySchema"."PriceList" (
    id integer NOT NULL,
    service_name character(256) NOT NULL,
    price_per_item money
);
 -   DROP TABLE "AdvertAgencySchema"."PriceList";
       AdvertAgencySchema            vladiknaska    false    7         �          0    16683    Customer 
   TABLE DATA           V   COPY "AdvertAgencySchema"."Customer" (id, full_name, phone_number, email) FROM stdin;
    AdvertAgencySchema          vladiknaska    false    197       3226.dat �          0    16707    Material 
   TABLE DATA           U   COPY "AdvertAgencySchema"."Material" (id, name, measure, price_per_item) FROM stdin;
    AdvertAgencySchema          vladiknaska    false    199       3228.dat �          0    16722    MaterialPerOrder 
   TABLE DATA           S   COPY "AdvertAgencySchema"."MaterialPerOrder" (id, material_id, amount) FROM stdin;
    AdvertAgencySchema          vladiknaska    false    201       3230.dat �          0    16688    Order 
   TABLE DATA           c   COPY "AdvertAgencySchema"."Order" (id, order_content_id, customer_id, paid_at, status) FROM stdin;
    AdvertAgencySchema          vladiknaska    false    198       3227.dat �          0    16713    OrderContent 
   TABLE DATA           t   COPY "AdvertAgencySchema"."OrderContent" (id, service_id, amount, materials_id, performer_id, comments) FROM stdin;
    AdvertAgencySchema          vladiknaska    false    200       3229.dat �          0    16733 	   Performer 
   TABLE DATA           P   COPY "AdvertAgencySchema"."Performer" (id, full_name, phone_number) FROM stdin;
    AdvertAgencySchema          vladiknaska    false    203       3232.dat �          0    16728 	   PriceList 
   TABLE DATA           U   COPY "AdvertAgencySchema"."PriceList" (id, service_name, price_per_item) FROM stdin;
    AdvertAgencySchema          vladiknaska    false    202       3231.dat            2606    16687    Customer Customer_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY "AdvertAgencySchema"."Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY "AdvertAgencySchema"."Customer" DROP CONSTRAINT "Customer_pkey";
       AdvertAgencySchema            vladiknaska    false    197                    2606    16727 &   MaterialPerOrder MaterialPerOrder_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY "AdvertAgencySchema"."MaterialPerOrder"
    ADD CONSTRAINT "MaterialPerOrder_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY "AdvertAgencySchema"."MaterialPerOrder" DROP CONSTRAINT "MaterialPerOrder_pkey";
       AdvertAgencySchema            vladiknaska    false    201                    2606    16712    Material Material_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY "AdvertAgencySchema"."Material"
    ADD CONSTRAINT "Material_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY "AdvertAgencySchema"."Material" DROP CONSTRAINT "Material_pkey";
       AdvertAgencySchema            vladiknaska    false    199                    2606    16721    OrderContent OrderContent_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent"
    ADD CONSTRAINT "OrderContent_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent" DROP CONSTRAINT "OrderContent_pkey";
       AdvertAgencySchema            vladiknaska    false    200                    2606    16692    Order Order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "AdvertAgencySchema"."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY "AdvertAgencySchema"."Order" DROP CONSTRAINT "Order_pkey";
       AdvertAgencySchema            vladiknaska    false    198                    2606    16737    Performer Performer_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY "AdvertAgencySchema"."Performer"
    ADD CONSTRAINT "Performer_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY "AdvertAgencySchema"."Performer" DROP CONSTRAINT "Performer_pkey";
       AdvertAgencySchema            vladiknaska    false    203                    2606    16732    PriceList PriceList_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY "AdvertAgencySchema"."PriceList"
    ADD CONSTRAINT "PriceList_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY "AdvertAgencySchema"."PriceList" DROP CONSTRAINT "PriceList_pkey";
       AdvertAgencySchema            vladiknaska    false    202                    2606    16764 -   MaterialPerOrder fk_materialperorder_material    FK CONSTRAINT     �   ALTER TABLE ONLY "AdvertAgencySchema"."MaterialPerOrder"
    ADD CONSTRAINT fk_materialperorder_material FOREIGN KEY (material_id) REFERENCES "AdvertAgencySchema"."Material"(id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 g   ALTER TABLE ONLY "AdvertAgencySchema"."MaterialPerOrder" DROP CONSTRAINT fk_materialperorder_material;
       AdvertAgencySchema          vladiknaska    false    201    3090    199                    2606    16759 -   OrderContent fk_ordercontent_materialperorder    FK CONSTRAINT     �   ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent"
    ADD CONSTRAINT fk_ordercontent_materialperorder FOREIGN KEY (materials_id) REFERENCES "AdvertAgencySchema"."MaterialPerOrder"(id) NOT VALID;
 g   ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent" DROP CONSTRAINT fk_ordercontent_materialperorder;
       AdvertAgencySchema          vladiknaska    false    3094    200    201                    2606    16754 &   OrderContent fk_ordercontent_performer    FK CONSTRAINT     �   ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent"
    ADD CONSTRAINT fk_ordercontent_performer FOREIGN KEY (performer_id) REFERENCES "AdvertAgencySchema"."Performer"(id) NOT VALID;
 `   ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent" DROP CONSTRAINT fk_ordercontent_performer;
       AdvertAgencySchema          vladiknaska    false    3098    200    203                    2606    16749 &   OrderContent fk_ordercontent_pricelist    FK CONSTRAINT     �   ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent"
    ADD CONSTRAINT fk_ordercontent_pricelist FOREIGN KEY (service_id) REFERENCES "AdvertAgencySchema"."PriceList"(id) NOT VALID;
 `   ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent" DROP CONSTRAINT fk_ordercontent_pricelist;
       AdvertAgencySchema          vladiknaska    false    202    200    3096                    2606    16739    Order fk_orders_customer    FK CONSTRAINT     �   ALTER TABLE ONLY "AdvertAgencySchema"."Order"
    ADD CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES "AdvertAgencySchema"."Customer"(id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 R   ALTER TABLE ONLY "AdvertAgencySchema"."Order" DROP CONSTRAINT fk_orders_customer;
       AdvertAgencySchema          vladiknaska    false    3086    198    197                    2606    16744    Order fk_orders_ordercontent    FK CONSTRAINT     �   ALTER TABLE ONLY "AdvertAgencySchema"."Order"
    ADD CONSTRAINT fk_orders_ordercontent FOREIGN KEY (order_content_id) REFERENCES "AdvertAgencySchema"."OrderContent"(id) NOT VALID;
 V   ALTER TABLE ONLY "AdvertAgencySchema"."Order" DROP CONSTRAINT fk_orders_ordercontent;
       AdvertAgencySchema          vladiknaska    false    3092    198    200                                                                                                                                           3226.dat                                                                                            0000600 0004000 0002000 00000005264 13655734734 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0	Ivanov Petr                                                                                                                                                                                                                                                     	424242                        	ivanov@ya.ru
1	Petrov Ivan                                                                                                                                                                                                                                                     	88005553535                   	petrov@ya.ru
2	Mamonova Anastasiya                                                                                                                                                                                                                                             	900                           	mam@gmail.com
3	Popova Katya                                                                                                                                                                                                                                                    	1234                          	popova@mail.ru
4	Filimonova Katya                                                                                                                                                                                                                                                	5555                          	fili@ya.ru
\.


                                                                                                                                                                                                                                                                                                                                            3228.dat                                                                                            0000600 0004000 0002000 00000003701 13655734734 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0	paper                                                                                                                                                                                                                                                           	pcs                                                                                                                             	$5.00
1	thick paper                                                                                                                                                                                                                                                     	pcs                                                                                                                             	$10.00
2	hd camera                                                                                                                                                                                                                                                       	frames per sec                                                                                                                  	$15,000.00
3	magazine paper                                                                                                                                                                                                                                                  	kg                                                                                                                              	$100.00
4	color prints                                                                                                                                                                                                                                                    	pcs                                                                                                                             	$500.00
\.


                                                               3230.dat                                                                                            0000600 0004000 0002000 00000000051 13655734734 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0	1	2
1	1	10
2	2	100
3	3	1
4	4	1000
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3227.dat                                                                                            0000600 0004000 0002000 00000001337 13655734734 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0	0	1	2018-01-01	approved
1	1	4	2020-05-01	closed
2	2	3	2019-02-01	denied
3	3	2	2017-07-01	approved
4	4	0	2016-10-01	approved
\.


                                                                                                                                                                                                                                                                                                 3229.dat                                                                                            0000600 0004000 0002000 00000012074 13655734734 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0	0	2	0	1	Performer has contacted with customer
1	2	1	2	1
2	3	2	0	0
3	1	3	1	3
4	4	4	4	4	For sale
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                    3232.dat                                                                                            0000600 0004000 0002000 00000002657 13655734734 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0	Tretyak Alina                                                                                                                                                                                                                                                   	67645
1	Vasin Oleg                                                                                                                                                                                                                                                      	30002
2	Loh Dmitriy                                                                                                                                                                                                                                                     	8907323
3	Tiktok Petr                                                                                                                                                                                                                                                     	892176231
4	Holod Liza                                                                                                                                                                                                                                                      	203942
\.


                                                                                 3231.dat                                                                                            0000600 0004000 0002000 00000002504 13655734734 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0	Banner                                                                                                                                                                                                                                                          	$1,000.00
1	Promotion                                                                                                                                                                                                                                                       	$4,200.00
2	Ad movie                                                                                                                                                                                                                                                        	$9,000.00
3	SMM                                                                                                                                                                                                                                                             	$1,000.00
4	Ad post                                                                                                                                                                                                                                                         	$500.00
\.


                                                                                                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000022600 13655734734 0015405 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 12.2

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

DROP DATABASE "AdvertAgency";
--
-- Name: AdvertAgency; Type: DATABASE; Schema: -; Owner: vladiknaska
--

CREATE DATABASE "AdvertAgency" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';


ALTER DATABASE "AdvertAgency" OWNER TO vladiknaska;

\connect "AdvertAgency"

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

--
-- Name: AdvertAgencySchema; Type: SCHEMA; Schema: -; Owner: vladiknaska
--

CREATE SCHEMA "AdvertAgencySchema";


ALTER SCHEMA "AdvertAgencySchema" OWNER TO vladiknaska;

--
-- Name: status; Type: TYPE; Schema: AdvertAgencySchema; Owner: vladiknaska
--

CREATE TYPE "AdvertAgencySchema".status AS ENUM (
    'approved',
    'denied',
    'paid',
    'closed'
);


ALTER TYPE "AdvertAgencySchema".status OWNER TO vladiknaska;

SET default_tablespace = '';

--
-- Name: Customer; Type: TABLE; Schema: AdvertAgencySchema; Owner: vladiknaska
--

CREATE TABLE "AdvertAgencySchema"."Customer" (
    id integer NOT NULL,
    full_name character(256) NOT NULL,
    phone_number character(30),
    email character(256)
);


ALTER TABLE "AdvertAgencySchema"."Customer" OWNER TO vladiknaska;

--
-- Name: Material; Type: TABLE; Schema: AdvertAgencySchema; Owner: vladiknaska
--

CREATE TABLE "AdvertAgencySchema"."Material" (
    id integer NOT NULL,
    name character(256) NOT NULL,
    measure character(128),
    price_per_item money
);


ALTER TABLE "AdvertAgencySchema"."Material" OWNER TO vladiknaska;

--
-- Name: MaterialPerOrder; Type: TABLE; Schema: AdvertAgencySchema; Owner: vladiknaska
--

CREATE TABLE "AdvertAgencySchema"."MaterialPerOrder" (
    id integer NOT NULL,
    material_id integer NOT NULL,
    amount double precision DEFAULT 1
);


ALTER TABLE "AdvertAgencySchema"."MaterialPerOrder" OWNER TO vladiknaska;

--
-- Name: Order; Type: TABLE; Schema: AdvertAgencySchema; Owner: vladiknaska
--

CREATE TABLE "AdvertAgencySchema"."Order" (
    id integer NOT NULL,
    order_content_id integer NOT NULL,
    customer_id integer NOT NULL,
    paid_at date,
    status character(128)
);


ALTER TABLE "AdvertAgencySchema"."Order" OWNER TO vladiknaska;

--
-- Name: OrderContent; Type: TABLE; Schema: AdvertAgencySchema; Owner: vladiknaska
--

CREATE TABLE "AdvertAgencySchema"."OrderContent" (
    id integer NOT NULL,
    service_id integer NOT NULL,
    amount double precision DEFAULT 1,
    materials_id integer NOT NULL,
    performer_id integer NOT NULL,
    comments character(1024)
);


ALTER TABLE "AdvertAgencySchema"."OrderContent" OWNER TO vladiknaska;

--
-- Name: Performer; Type: TABLE; Schema: AdvertAgencySchema; Owner: vladiknaska
--

CREATE TABLE "AdvertAgencySchema"."Performer" (
    id integer NOT NULL,
    full_name character(256) NOT NULL,
    phone_number character(30)
);


ALTER TABLE "AdvertAgencySchema"."Performer" OWNER TO vladiknaska;

--
-- Name: PriceList; Type: TABLE; Schema: AdvertAgencySchema; Owner: vladiknaska
--

CREATE TABLE "AdvertAgencySchema"."PriceList" (
    id integer NOT NULL,
    service_name character(256) NOT NULL,
    price_per_item money
);


ALTER TABLE "AdvertAgencySchema"."PriceList" OWNER TO vladiknaska;

--
-- Data for Name: Customer; Type: TABLE DATA; Schema: AdvertAgencySchema; Owner: vladiknaska
--

COPY "AdvertAgencySchema"."Customer" (id, full_name, phone_number, email) FROM stdin;
\.
COPY "AdvertAgencySchema"."Customer" (id, full_name, phone_number, email) FROM '$$PATH$$/3226.dat';

--
-- Data for Name: Material; Type: TABLE DATA; Schema: AdvertAgencySchema; Owner: vladiknaska
--

COPY "AdvertAgencySchema"."Material" (id, name, measure, price_per_item) FROM stdin;
\.
COPY "AdvertAgencySchema"."Material" (id, name, measure, price_per_item) FROM '$$PATH$$/3228.dat';

--
-- Data for Name: MaterialPerOrder; Type: TABLE DATA; Schema: AdvertAgencySchema; Owner: vladiknaska
--

COPY "AdvertAgencySchema"."MaterialPerOrder" (id, material_id, amount) FROM stdin;
\.
COPY "AdvertAgencySchema"."MaterialPerOrder" (id, material_id, amount) FROM '$$PATH$$/3230.dat';

--
-- Data for Name: Order; Type: TABLE DATA; Schema: AdvertAgencySchema; Owner: vladiknaska
--

COPY "AdvertAgencySchema"."Order" (id, order_content_id, customer_id, paid_at, status) FROM stdin;
\.
COPY "AdvertAgencySchema"."Order" (id, order_content_id, customer_id, paid_at, status) FROM '$$PATH$$/3227.dat';

--
-- Data for Name: OrderContent; Type: TABLE DATA; Schema: AdvertAgencySchema; Owner: vladiknaska
--

COPY "AdvertAgencySchema"."OrderContent" (id, service_id, amount, materials_id, performer_id, comments) FROM stdin;
\.
COPY "AdvertAgencySchema"."OrderContent" (id, service_id, amount, materials_id, performer_id, comments) FROM '$$PATH$$/3229.dat';

--
-- Data for Name: Performer; Type: TABLE DATA; Schema: AdvertAgencySchema; Owner: vladiknaska
--

COPY "AdvertAgencySchema"."Performer" (id, full_name, phone_number) FROM stdin;
\.
COPY "AdvertAgencySchema"."Performer" (id, full_name, phone_number) FROM '$$PATH$$/3232.dat';

--
-- Data for Name: PriceList; Type: TABLE DATA; Schema: AdvertAgencySchema; Owner: vladiknaska
--

COPY "AdvertAgencySchema"."PriceList" (id, service_name, price_per_item) FROM stdin;
\.
COPY "AdvertAgencySchema"."PriceList" (id, service_name, price_per_item) FROM '$$PATH$$/3231.dat';

--
-- Name: Customer Customer_pkey; Type: CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY (id);


--
-- Name: MaterialPerOrder MaterialPerOrder_pkey; Type: CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."MaterialPerOrder"
    ADD CONSTRAINT "MaterialPerOrder_pkey" PRIMARY KEY (id);


--
-- Name: Material Material_pkey; Type: CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."Material"
    ADD CONSTRAINT "Material_pkey" PRIMARY KEY (id);


--
-- Name: OrderContent OrderContent_pkey; Type: CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent"
    ADD CONSTRAINT "OrderContent_pkey" PRIMARY KEY (id);


--
-- Name: Order Order_pkey; Type: CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY (id);


--
-- Name: Performer Performer_pkey; Type: CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."Performer"
    ADD CONSTRAINT "Performer_pkey" PRIMARY KEY (id);


--
-- Name: PriceList PriceList_pkey; Type: CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."PriceList"
    ADD CONSTRAINT "PriceList_pkey" PRIMARY KEY (id);


--
-- Name: MaterialPerOrder fk_materialperorder_material; Type: FK CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."MaterialPerOrder"
    ADD CONSTRAINT fk_materialperorder_material FOREIGN KEY (material_id) REFERENCES "AdvertAgencySchema"."Material"(id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- Name: OrderContent fk_ordercontent_materialperorder; Type: FK CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent"
    ADD CONSTRAINT fk_ordercontent_materialperorder FOREIGN KEY (materials_id) REFERENCES "AdvertAgencySchema"."MaterialPerOrder"(id) NOT VALID;


--
-- Name: OrderContent fk_ordercontent_performer; Type: FK CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent"
    ADD CONSTRAINT fk_ordercontent_performer FOREIGN KEY (performer_id) REFERENCES "AdvertAgencySchema"."Performer"(id) NOT VALID;


--
-- Name: OrderContent fk_ordercontent_pricelist; Type: FK CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."OrderContent"
    ADD CONSTRAINT fk_ordercontent_pricelist FOREIGN KEY (service_id) REFERENCES "AdvertAgencySchema"."PriceList"(id) NOT VALID;


--
-- Name: Order fk_orders_customer; Type: FK CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."Order"
    ADD CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES "AdvertAgencySchema"."Customer"(id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- Name: Order fk_orders_ordercontent; Type: FK CONSTRAINT; Schema: AdvertAgencySchema; Owner: vladiknaska
--

ALTER TABLE ONLY "AdvertAgencySchema"."Order"
    ADD CONSTRAINT fk_orders_ordercontent FOREIGN KEY (order_content_id) REFERENCES "AdvertAgencySchema"."OrderContent"(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
