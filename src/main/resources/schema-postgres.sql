PGDMP         &                x           pos    12.3    12.3     =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            @           1262    16519    pos    DATABASE     �   CREATE DATABASE pos WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Polish_Poland.1250' LC_CTYPE = 'Polish_Poland.1250';
    DROP DATABASE pos;
                postgres    false            �            1259    16520    category    TABLE     Z   CREATE TABLE public.category (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16523    employee    TABLE     �   CREATE TABLE public.employee (
    id bigint NOT NULL,
    email character varying(255),
    is_active boolean NOT NULL,
    name character varying(255)
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    16529    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    16531    history    TABLE     �   CREATE TABLE public.history (
    id bigint NOT NULL,
    h_data timestamp without time zone,
    h_description character varying(255),
    h_user character varying(255),
    z_id bigint
);
    DROP TABLE public.history;
       public         heap    postgres    false            �            1259    16537    history_id_seq    SEQUENCE     w   CREATE SEQUENCE public.history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.history_id_seq;
       public          postgres    false    205            A           0    0    history_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.history_id_seq OWNED BY public.history.id;
          public          postgres    false    206            �            1259    16539    roles    TABLE     ]   CREATE TABLE public.roles (
    role_id integer NOT NULL,
    role character varying(255)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16542 	   user_role    TABLE     ^   CREATE TABLE public.user_role (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            �            1259    16545    users    TABLE        CREATE TABLE public.users (
    user_id integer NOT NULL,
    active boolean,
    email character varying(255),
    phone character varying(255),
    name character varying(255),
    password character varying(255),
    user_name character varying(255)
);
    DROP TABLE public.users; //aaaaaaaaaaaa
       public         heap    postgres    false            �            1259    16551 
   zgloszenie    TABLE       CREATE TABLE public.zgloszenie (
    id bigint NOT NULL,
    archive boolean DEFAULT false,
    c_data date NOT NULL,
    del boolean DEFAULT false,
    description character varying(255),
    email character varying(255),
    end_description character varying(255),
    is_end boolean DEFAULT false,
    is_proceed boolean DEFAULT false,
    name character varying(255),
    phone character varying(11),
    selected_user character varying(255),
    serial_number character varying(255),
    type character varying(255)
);
    DROP TABLE public.zgloszenie;
       public         heap    postgres    false            �            1259    16561    zgloszenie_histories    TABLE     r   CREATE TABLE public.zgloszenie_histories (
    zgloszenie_id bigint NOT NULL,
    histories_id bigint NOT NULL
);
 (   DROP TABLE public.zgloszenie_histories;
       public         heap    postgres    false            �            1259    16564    zgloszenie_id_seq    SEQUENCE     z   CREATE SEQUENCE public.zgloszenie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.zgloszenie_id_seq;
       public          postgres    false    210            B           0    0    zgloszenie_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.zgloszenie_id_seq OWNED BY public.zgloszenie.id;
          public          postgres    false    212            �
           2604    16566 
   history id    DEFAULT     h   ALTER TABLE ONLY public.history ALTER COLUMN id SET DEFAULT nextval('public.history_id_seq'::regclass);
 9   ALTER TABLE public.history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205            �
           2604    16567 
   zgloszenie id    DEFAULT     n   ALTER TABLE ONLY public.zgloszenie ALTER COLUMN id SET DEFAULT nextval('public.zgloszenie_id_seq'::regclass);
 <   ALTER TABLE public.zgloszenie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    210            �
           2606    16569    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    202            �
           2606    16571    employee employee_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    203            �
           2606    16573    history history_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.history DROP CONSTRAINT history_pkey;
       public            postgres    false    205            �
           2606    16575    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    207            �
           2606    16577 1   zgloszenie_histories uk_4c2cupmrd61yefb6irukw0av4 
   CONSTRAINT     t   ALTER TABLE ONLY public.zgloszenie_histories
    ADD CONSTRAINT uk_4c2cupmrd61yefb6irukw0av4 UNIQUE (histories_id);
 [   ALTER TABLE ONLY public.zgloszenie_histories DROP CONSTRAINT uk_4c2cupmrd61yefb6irukw0av4;
       public            postgres    false    211            �
           2606    16579    user_role user_role_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_id, role_id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    208    208            �
           2606    16581    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    209            �
           2606    16583    zgloszenie zgloszenie_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.zgloszenie
    ADD CONSTRAINT zgloszenie_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.zgloszenie DROP CONSTRAINT zgloszenie_pkey;
       public            postgres    false    210            �
           2606    16584 0   zgloszenie_histories fk4a9kxh83d2167q4juh0n6u32i 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.zgloszenie_histories
    ADD CONSTRAINT fk4a9kxh83d2167q4juh0n6u32i FOREIGN KEY (zgloszenie_id) REFERENCES public.zgloszenie(id);
 Z   ALTER TABLE ONLY public.zgloszenie_histories DROP CONSTRAINT fk4a9kxh83d2167q4juh0n6u32i;
       public          postgres    false    210    211    2742            �
           2606    16589 0   zgloszenie_histories fkixomrkx8vdd94relothp6s7aq 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.zgloszenie_histories
    ADD CONSTRAINT fkixomrkx8vdd94relothp6s7aq FOREIGN KEY (histories_id) REFERENCES public.history(id);
 Z   ALTER TABLE ONLY public.zgloszenie_histories DROP CONSTRAINT fkixomrkx8vdd94relothp6s7aq;
       public          postgres    false    2734    211    205            �
           2606    16594 %   user_role fkj345gk1bovqvfame88rcx7yyx 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkj345gk1bovqvfame88rcx7yyx FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fkj345gk1bovqvfame88rcx7yyx;
       public          postgres    false    2740    209    208            �
           2606    16599 %   user_role fkt7e7djp752sqn6w22i6ocqy6q 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkt7e7djp752sqn6w22i6ocqy6q FOREIGN KEY (role_id) REFERENCES public.roles(role_id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fkt7e7djp752sqn6w22i6ocqy6q;
       public          postgres    false    207    208    2736           
