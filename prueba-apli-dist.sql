PGDMP         )                x            dblpkdjatdbnld     12.3 (Ubuntu 12.3-1.pgdg16.04+1)    12.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262 	   100566219    dblpkdjatdbnld    DATABASE     �   CREATE DATABASE dblpkdjatdbnld WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE dblpkdjatdbnld;
                gtlxmyuxifwcgb    false                       0    0    DATABASE dblpkdjatdbnld    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE dblpkdjatdbnld FROM PUBLIC;
                   gtlxmyuxifwcgb    false    3863                       0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO gtlxmyuxifwcgb;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   gtlxmyuxifwcgb    false    3                       0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO gtlxmyuxifwcgb;
                   postgres    false    638            �            1259 	   100566291    Cargo    TABLE     a   CREATE TABLE public."Cargo" (
    codigo_c integer NOT NULL,
    nombre character varying(50)
);
    DROP TABLE public."Cargo";
       public         heap    gtlxmyuxifwcgb    false            �            1259 	   100566289    Cargo_codigo_c_seq    SEQUENCE     �   CREATE SEQUENCE public."Cargo_codigo_c_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Cargo_codigo_c_seq";
       public          gtlxmyuxifwcgb    false    205                       0    0    Cargo_codigo_c_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Cargo_codigo_c_seq" OWNED BY public."Cargo".codigo_c;
          public          gtlxmyuxifwcgb    false    204            �            1259 	   100566282    Empleado    TABLE        CREATE TABLE public."Empleado" (
    codigo_e integer NOT NULL,
    codigo_cargo integer,
    codigo_estado_civil integer,
    cedula character varying(10),
    nombre character varying(50),
    apellido character varying(50),
    fecha_nacimiento date
);
    DROP TABLE public."Empleado";
       public         heap    gtlxmyuxifwcgb    false            �            1259 	   100566280    Empleado_codigo_e_seq    SEQUENCE     �   CREATE SEQUENCE public."Empleado_codigo_e_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Empleado_codigo_e_seq";
       public          gtlxmyuxifwcgb    false    203                       0    0    Empleado_codigo_e_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Empleado_codigo_e_seq" OWNED BY public."Empleado".codigo_e;
          public          gtlxmyuxifwcgb    false    202            �            1259 	   100566299    Estado_civil    TABLE     h   CREATE TABLE public."Estado_civil" (
    codigo_e integer NOT NULL,
    nombre character varying(50)
);
 "   DROP TABLE public."Estado_civil";
       public         heap    gtlxmyuxifwcgb    false            �            1259 	   100566297    Estado_civil_codigo_e_seq    SEQUENCE     �   CREATE SEQUENCE public."Estado_civil_codigo_e_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Estado_civil_codigo_e_seq";
       public          gtlxmyuxifwcgb    false    207                       0    0    Estado_civil_codigo_e_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Estado_civil_codigo_e_seq" OWNED BY public."Estado_civil".codigo_e;
          public          gtlxmyuxifwcgb    false    206            �           2604 	   100566294    Cargo codigo_c    DEFAULT     t   ALTER TABLE ONLY public."Cargo" ALTER COLUMN codigo_c SET DEFAULT nextval('public."Cargo_codigo_c_seq"'::regclass);
 ?   ALTER TABLE public."Cargo" ALTER COLUMN codigo_c DROP DEFAULT;
       public          gtlxmyuxifwcgb    false    205    204    205            �           2604 	   100566285    Empleado codigo_e    DEFAULT     z   ALTER TABLE ONLY public."Empleado" ALTER COLUMN codigo_e SET DEFAULT nextval('public."Empleado_codigo_e_seq"'::regclass);
 B   ALTER TABLE public."Empleado" ALTER COLUMN codigo_e DROP DEFAULT;
       public          gtlxmyuxifwcgb    false    202    203    203            �           2604 	   100566302    Estado_civil codigo_e    DEFAULT     �   ALTER TABLE ONLY public."Estado_civil" ALTER COLUMN codigo_e SET DEFAULT nextval('public."Estado_civil_codigo_e_seq"'::regclass);
 F   ALTER TABLE public."Estado_civil" ALTER COLUMN codigo_e DROP DEFAULT;
       public          gtlxmyuxifwcgb    false    207    206    207                      0 	   100566291    Cargo 
   TABLE DATA           3   COPY public."Cargo" (codigo_c, nombre) FROM stdin;
    public          gtlxmyuxifwcgb    false    205   �!                 0 	   100566282    Empleado 
   TABLE DATA           }   COPY public."Empleado" (codigo_e, codigo_cargo, codigo_estado_civil, cedula, nombre, apellido, fecha_nacimiento) FROM stdin;
    public          gtlxmyuxifwcgb    false    203   �!                 0 	   100566299    Estado_civil 
   TABLE DATA           :   COPY public."Estado_civil" (codigo_e, nombre) FROM stdin;
    public          gtlxmyuxifwcgb    false    207   '"                  0    0    Cargo_codigo_c_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Cargo_codigo_c_seq"', 1, false);
          public          gtlxmyuxifwcgb    false    204                       0    0    Empleado_codigo_e_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Empleado_codigo_e_seq"', 1, false);
          public          gtlxmyuxifwcgb    false    202                        0    0    Estado_civil_codigo_e_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Estado_civil_codigo_e_seq"', 1, false);
          public          gtlxmyuxifwcgb    false    206            �           2606 	   100566296    Cargo Cargo_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Cargo"
    ADD CONSTRAINT "Cargo_pkey" PRIMARY KEY (codigo_c);
 >   ALTER TABLE ONLY public."Cargo" DROP CONSTRAINT "Cargo_pkey";
       public            gtlxmyuxifwcgb    false    205            �           2606 	   100566287    Empleado Empleado_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Empleado"
    ADD CONSTRAINT "Empleado_pkey" PRIMARY KEY (codigo_e);
 D   ALTER TABLE ONLY public."Empleado" DROP CONSTRAINT "Empleado_pkey";
       public            gtlxmyuxifwcgb    false    203            �           2606 	   100566304    Estado_civil Estado_civil_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Estado_civil"
    ADD CONSTRAINT "Estado_civil_pkey" PRIMARY KEY (codigo_e);
 L   ALTER TABLE ONLY public."Estado_civil" DROP CONSTRAINT "Estado_civil_pkey";
       public            gtlxmyuxifwcgb    false    207            �           2606 	   100566358    Empleado codigo_cargo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Empleado"
    ADD CONSTRAINT codigo_cargo FOREIGN KEY (codigo_cargo) REFERENCES public."Cargo"(codigo_c) NOT VALID;
 A   ALTER TABLE ONLY public."Empleado" DROP CONSTRAINT codigo_cargo;
       public          gtlxmyuxifwcgb    false    203    205    3721            �           2606 	   100566353    Empleado codigo_estado_civil    FK CONSTRAINT     �   ALTER TABLE ONLY public."Empleado"
    ADD CONSTRAINT codigo_estado_civil FOREIGN KEY (codigo_estado_civil) REFERENCES public."Estado_civil"(codigo_e) NOT VALID;
 H   ALTER TABLE ONLY public."Empleado" DROP CONSTRAINT codigo_estado_civil;
       public          gtlxmyuxifwcgb    false    3723    203    207                  x�3�tL�������� ��         6   x�3�4As#3C#s3C΀Ԕ�|N�Ԣ�ļ��*NCKK]]3�=...             x�3���)I-������ #%�     