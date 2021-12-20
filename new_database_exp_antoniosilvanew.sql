--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Debian 12.9-1.pgdg110+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO antonio_silva;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO antonio_silva;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO antonio_silva;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO antonio_silva;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO antonio_silva;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO antonio_silva;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO antonio_silva;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO antonio_silva;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO antonio_silva;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO antonio_silva;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO antonio_silva;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO antonio_silva;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO antonio_silva;

--
-- Name: orders_order; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.orders_order (
    id bigint NOT NULL,
    "time" time without time zone NOT NULL,
    restaurant_id bigint,
    status_id bigint,
    user_id bigint NOT NULL
);


ALTER TABLE public.orders_order OWNER TO antonio_silva;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_order_id_seq OWNER TO antonio_silva;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders_order.id;


--
-- Name: orders_productslist; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.orders_productslist (
    id bigint NOT NULL,
    quantity integer NOT NULL,
    notes character varying(20),
    order_id bigint,
    product_id bigint NOT NULL
);


ALTER TABLE public.orders_productslist OWNER TO antonio_silva;

--
-- Name: orders_products_list_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.orders_products_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_products_list_id_seq OWNER TO antonio_silva;

--
-- Name: orders_products_list_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.orders_products_list_id_seq OWNED BY public.orders_productslist.id;


--
-- Name: orders_status; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.orders_status (
    id bigint NOT NULL,
    description character varying(20) NOT NULL
);


ALTER TABLE public.orders_status OWNER TO antonio_silva;

--
-- Name: orders_status_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.orders_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_status_id_seq OWNER TO antonio_silva;

--
-- Name: orders_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.orders_status_id_seq OWNED BY public.orders_status.id;


--
-- Name: products_product; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.products_product (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(100) NOT NULL,
    price numeric(6,2) NOT NULL,
    image_url text NOT NULL
);


ALTER TABLE public.products_product OWNER TO antonio_silva;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO antonio_silva;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products_product.id;


--
-- Name: ristorante_address; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.ristorante_address (
    id bigint NOT NULL,
    street character varying(80) NOT NULL,
    city character varying(80) NOT NULL,
    postal_abbr character varying(2) NOT NULL,
    zipcode character varying(10) NOT NULL,
    latitude character varying(50) NOT NULL,
    longitude character varying(50) NOT NULL
);


ALTER TABLE public.ristorante_address OWNER TO antonio_silva;

--
-- Name: ristorante_address_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.ristorante_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ristorante_address_id_seq OWNER TO antonio_silva;

--
-- Name: ristorante_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.ristorante_address_id_seq OWNED BY public.ristorante_address.id;


--
-- Name: ristorante_restaurant; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.ristorante_restaurant (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    schedule_open time without time zone NOT NULL,
    schedule_close time without time zone NOT NULL,
    phone_number character varying(15) NOT NULL,
    address_id bigint,
    description character varying(150) NOT NULL,
    image_url text NOT NULL
);


ALTER TABLE public.ristorante_restaurant OWNER TO antonio_silva;

--
-- Name: ristorante_restaurant_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.ristorante_restaurant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ristorante_restaurant_id_seq OWNER TO antonio_silva;

--
-- Name: ristorante_restaurant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.ristorante_restaurant_id_seq OWNED BY public.ristorante_restaurant.id;


--
-- Name: store_address; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.store_address (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    int_number integer,
    ext_number integer
);


ALTER TABLE public.store_address OWNER TO antonio_silva;

--
-- Name: store_address_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.store_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_address_id_seq OWNER TO antonio_silva;

--
-- Name: store_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.store_address_id_seq OWNED BY public.store_address.id;


--
-- Name: store_employee; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.store_employee (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    age integer NOT NULL,
    last_grade character varying(100) NOT NULL,
    branch_id bigint NOT NULL,
    home_address_id bigint NOT NULL
);


ALTER TABLE public.store_employee OWNER TO antonio_silva;

--
-- Name: store_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.store_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_employee_id_seq OWNER TO antonio_silva;

--
-- Name: store_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.store_employee_id_seq OWNED BY public.store_employee.id;


--
-- Name: store_employee_job; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.store_employee_job (
    id bigint NOT NULL,
    employee_id bigint NOT NULL,
    job_id bigint NOT NULL
);


ALTER TABLE public.store_employee_job OWNER TO antonio_silva;

--
-- Name: store_employee_job_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.store_employee_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_employee_job_id_seq OWNER TO antonio_silva;

--
-- Name: store_employee_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.store_employee_job_id_seq OWNED BY public.store_employee_job.id;


--
-- Name: store_job; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.store_job (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.store_job OWNER TO antonio_silva;

--
-- Name: store_job_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.store_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_job_id_seq OWNER TO antonio_silva;

--
-- Name: store_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.store_job_id_seq OWNED BY public.store_job.id;


--
-- Name: store_store; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.store_store (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    address text NOT NULL,
    owner character varying(255) NOT NULL
);


ALTER TABLE public.store_store OWNER TO antonio_silva;

--
-- Name: store_store_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.store_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_store_id_seq OWNER TO antonio_silva;

--
-- Name: store_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.store_store_id_seq OWNED BY public.store_store.id;


--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO antonio_silva;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO antonio_silva;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id bigint,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO antonio_silva;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO antonio_silva;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(255) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(255) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.users_user OWNER TO antonio_silva;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO antonio_silva;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO antonio_silva;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO antonio_silva;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO antonio_silva;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO antonio_silva;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: orders_order id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_order ALTER COLUMN id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: orders_productslist id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_productslist ALTER COLUMN id SET DEFAULT nextval('public.orders_products_list_id_seq'::regclass);


--
-- Name: orders_status id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_status ALTER COLUMN id SET DEFAULT nextval('public.orders_status_id_seq'::regclass);


--
-- Name: products_product id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.products_product ALTER COLUMN id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: ristorante_address id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.ristorante_address ALTER COLUMN id SET DEFAULT nextval('public.ristorante_address_id_seq'::regclass);


--
-- Name: ristorante_restaurant id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.ristorante_restaurant ALTER COLUMN id SET DEFAULT nextval('public.ristorante_restaurant_id_seq'::regclass);


--
-- Name: store_address id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_address ALTER COLUMN id SET DEFAULT nextval('public.store_address_id_seq'::regclass);


--
-- Name: store_employee id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee ALTER COLUMN id SET DEFAULT nextval('public.store_employee_id_seq'::regclass);


--
-- Name: store_employee_job id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee_job ALTER COLUMN id SET DEFAULT nextval('public.store_employee_job_id_seq'::regclass);


--
-- Name: store_job id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_job ALTER COLUMN id SET DEFAULT nextval('public.store_job_id_seq'::regclass);


--
-- Name: store_store id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_store ALTER COLUMN id SET DEFAULT nextval('public.store_store_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add blacklisted token	7	add_blacklistedtoken
26	Can change blacklisted token	7	change_blacklistedtoken
27	Can delete blacklisted token	7	delete_blacklistedtoken
28	Can view blacklisted token	7	view_blacklistedtoken
29	Can add outstanding token	8	add_outstandingtoken
30	Can change outstanding token	8	change_outstandingtoken
31	Can delete outstanding token	8	delete_outstandingtoken
32	Can view outstanding token	8	view_outstandingtoken
33	Can add store	9	add_store
34	Can change store	9	change_store
35	Can delete store	9	delete_store
36	Can view store	9	view_store
37	Can add job	10	add_job
38	Can change job	10	change_job
39	Can delete job	10	delete_job
40	Can view job	10	view_job
41	Can add address	11	add_address
42	Can change address	11	change_address
43	Can delete address	11	delete_address
44	Can view address	11	view_address
45	Can add employee	12	add_employee
46	Can change employee	12	change_employee
47	Can delete employee	12	delete_employee
48	Can view employee	12	view_employee
49	Can add address	13	add_address
50	Can change address	13	change_address
51	Can delete address	13	delete_address
52	Can view address	13	view_address
53	Can add restaurant	14	add_restaurant
54	Can change restaurant	14	change_restaurant
55	Can delete restaurant	14	delete_restaurant
56	Can view restaurant	14	view_restaurant
57	Can add product	15	add_product
58	Can change product	15	change_product
59	Can delete product	15	delete_product
60	Can view product	15	view_product
61	Can add order	16	add_order
62	Can change order	16	change_order
63	Can delete order	16	delete_order
64	Can view order	16	view_order
65	Can add products_list	17	add_products_list
66	Can change products_list	17	change_products_list
67	Can delete products_list	17	delete_products_list
68	Can view products_list	17	view_products_list
69	Can add status	18	add_status
70	Can change status	18	change_status
71	Can delete status	18	delete_status
72	Can view status	18	view_status
73	Can add productslist	19	add_productslist
74	Can change productslist	19	change_productslist
75	Can delete productslist	19	delete_productslist
76	Can view productslist	19	view_productslist
77	Can add user	20	add_user
78	Can change user	20	change_user
79	Can delete user	20	delete_user
80	Can view user	20	view_user
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	users	user
7	token_blacklist	blacklistedtoken
8	token_blacklist	outstandingtoken
9	store	store
10	store	job
11	store	address
12	store	employee
13	ristorante	address
14	ristorante	restaurant
15	products	product
16	orders	order
17	orders	products_list
18	orders	status
19	orders	productslist
20	auth	user
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
37	ristorante	0001_initial	2021-11-30 06:57:29.194017+00
38	ristorante	0002_rename_longitude_address_longitudee	2021-11-30 06:58:09.301472+00
39	ristorante	0003_rename_longitudee_address_longitude	2021-11-30 06:58:55.309569+00
40	ristorante	0004_auto_20211130_0659	2021-11-30 06:59:21.394702+00
41	contenttypes	0001_initial	2021-11-30 07:00:54.524167+00
42	admin	0001_initial	2021-11-30 07:00:54.529113+00
43	admin	0002_logentry_remove_auto_add	2021-11-30 07:00:54.531368+00
44	admin	0003_logentry_add_action_flag_choices	2021-11-30 07:00:54.533155+00
45	contenttypes	0002_remove_content_type_name	2021-11-30 07:00:54.535159+00
46	auth	0001_initial	2021-11-30 07:00:54.537073+00
47	auth	0002_alter_permission_name_max_length	2021-11-30 07:00:54.539171+00
48	auth	0003_alter_user_email_max_length	2021-11-30 07:00:54.541028+00
49	auth	0004_alter_user_username_opts	2021-11-30 07:00:54.542871+00
50	auth	0005_alter_user_last_login_null	2021-11-30 07:00:54.544888+00
51	auth	0006_require_contenttypes_0002	2021-11-30 07:00:54.546852+00
52	auth	0007_alter_validators_add_error_messages	2021-11-30 07:00:54.548722+00
53	auth	0008_alter_user_username_max_length	2021-11-30 07:00:54.550677+00
54	auth	0009_alter_user_last_name_max_length	2021-11-30 07:00:54.552878+00
55	auth	0010_alter_group_name_max_length	2021-11-30 07:00:54.555002+00
56	auth	0011_update_proxy_permissions	2021-11-30 07:00:54.55707+00
57	auth	0012_alter_user_first_name_max_length	2021-11-30 07:00:54.559025+00
58	sessions	0001_initial	2021-11-30 07:00:54.560964+00
59	token_blacklist	0001_initial	2021-11-30 07:00:54.563237+00
60	token_blacklist	0002_outstandingtoken_jti_hex	2021-11-30 07:00:54.565724+00
61	token_blacklist	0003_auto_20171017_2007	2021-11-30 07:00:54.567952+00
62	token_blacklist	0004_auto_20171017_2013	2021-11-30 07:00:54.572463+00
63	token_blacklist	0005_remove_outstandingtoken_jti	2021-11-30 07:00:54.574492+00
64	token_blacklist	0006_auto_20171017_2113	2021-11-30 07:00:54.576369+00
65	token_blacklist	0007_auto_20171017_2214	2021-11-30 07:00:54.578262+00
66	token_blacklist	0008_migrate_to_bigautofield	2021-11-30 07:00:54.580228+00
67	token_blacklist	0010_fix_migrate_to_bigautofield	2021-11-30 07:00:54.582331+00
68	token_blacklist	0011_linearizes_history	2021-11-30 07:00:54.584369+00
69	ristorante	0002_auto_20211130_0702	2021-11-30 07:02:43.932995+00
70	ristorante	0003_address_description	2021-11-30 07:28:38.446603+00
71	ristorante	0004_remove_address_description	2021-11-30 07:29:35.595838+00
72	ristorante	0005_restaurant_description	2021-11-30 07:29:58.722167+00
73	ristorante	0006_restaurant_image_url	2021-11-30 17:43:10.154093+00
74	ristorante	0007_alter_restaurant_description	2021-11-30 17:59:15.457878+00
75	products	0001_initial	2021-12-01 04:17:43.891582+00
76	products	0002_remove_product_weight	2021-12-01 04:18:08.28492+00
77	products	0003_auto_20211201_0418	2021-12-01 04:18:24.283634+00
78	products	0004_auto_20211201_0418	2021-12-01 04:18:56.5442+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: orders_order; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.orders_order (id, "time", restaurant_id, status_id, user_id) FROM stdin;
1	16:39:52	1	1	9
2	12:59:59	3	4	8
3	12:59:59	3	4	8
4	12:59:59	3	4	8
5	01:59:59	5	3	6
6	01:59:59	5	3	6
7	01:59:59	5	3	6
8	01:59:59	5	3	6
9	01:59:59	5	3	6
10	01:59:59	5	3	6
11	14:21:38	2	2	7
12	14:21:38	2	2	7
\.


--
-- Data for Name: orders_productslist; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.orders_productslist (id, quantity, notes, order_id, product_id) FROM stdin;
1	1	NO ONION	1	1
2	1	FULL	1	6
3	1	EXTRA PICKLES	1	8
4	1	NO TOMATOES	1	12
5	1	PRUEBA	2	13
6	2	PRUEBA1	2	10
7	3	PRUEBA2	2	13
8	1	PRUEBA314	3	4
9	10	PRUEBA3109	3	9
\.


--
-- Data for Name: orders_status; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.orders_status (id, description) FROM stdin;
1	PENDING
2	READY
4	CANCELED
3	DELIVERED
\.


--
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.products_product (id, name, description, price, image_url) FROM stdin;
2	Impossible Whopper	Features a flame-grilled patty made from plants topped with tomatoes,lettuce, mayo, ketchup	7.29	https://i.ibb.co/dpyBNQm/84743a96a55cb36ef603c512d5b97c9141c40a33-1333x1333.webp
3	Bacon King	Our Bacon King Sandwich features two ¼ lb* savory flame-grilled beef patties	6.00	https://i.ibb.co/727Bd5j/image.png
4	Double Whopper	Our Double Whopper Sandwich is a pairing of two ¼ lb* savory flame-grilled beef patties	5.29	https://i.ibb.co/1TZcKHP/image.png
5	Triple Whopper With Cheese	Our Triple Whopper Sandwich features three ¼ lb* savory flame-grilled beef patties	7.29	https://i.ibb.co/16gxMTZ/image.png
6	Texas Double Whopper	Texas Double Whopper 1,150 Cal Entree only	5.29	https://i.ibb.co/QP1gWyJ/image.png
7	Whopper Jr	Our Whopper Jr. Sandwich features one savory flame-grilled beef patty topped with juicy tomatoes	2.19	https://i.ibb.co/2YjH5VX/image.png
8	Double Cheeseburger	Make room for our Double Cheeseburger, two signature flame-grilled beef patties	1.69	https://i.ibb.co/Wg6DZPJ/image.png
9	Bacon Double Cheeseburger	Make room for our Bacon Double Cheeseburger, two signature flame-grilled beef patties	2.29	https://i.ibb.co/cvDfHd5/image.png
10	Bacon Cheeseburger	You can’t go wrong with our Bacon Cheeseburger, a signature flame-grilled beef patty	1.49	https://i.ibb.co/SBfL0Tj/image.png
1	Whopper	Our Whopper Sandwich is a 1/4 lb of savory flame-grilled beef topped with juicy tomatoes.	4.19	https://i.ibb.co/dpyBNQm/84743a96a55cb36ef603c512d5b97c9141c40a33-1333x1333.webp
11	Cheeseburger	Cheeseburger is a signature flame-grilled beef patty topped with a layer of melted American cheese	1.00	https://i.ibb.co/58tyS7x/image.png
12	Hamburger	Hamburger is a signature flame-grilled beef patty topped with a simple layer of crinkle cut pickles	1.00	https://i.ibb.co/tDPwcSw/image.png
13	Rodeo Burger	Rodeo Burger 328 Cal Entree only	1.00	https://i.ibb.co/DMn73LY/image.png
\.


--
-- Data for Name: ristorante_address; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.ristorante_address (id, street, city, postal_abbr, zipcode, latitude, longitude) FROM stdin;
1	1201 S Anaheim Blvd	Anaheim	CA	92805	33.8178867927656	-117.90826558092522
2	5624 Vineland Rd	Orlando	FL	32819	28.48256969133771	-81.45736996673861
3	1919 Pico Blvd	Santa Monica	CA	90405	34.019826290170066	-118.46985849508971
4	7006 E Golf Links Rd	Tucson	AZ	85730	32.19202978409491	-110.84296500395314
5	47 N Sonoita Ave	Nogales	AZ	85621	31.336465924939713	-110.94375959943613
6	Av. Guerrero 1057, Cumuripa	Cd. Obregon, Sonora	MX	85140	27.493811627368018	-109.9509204275015
7	Periférico Ote. 1274, Perisur	Hermosillo, Sonora	MX	83290	29.036194198507236	-110.93876279485289
8	C. Antonio M. Anza 20, Roma Sur, Cuauhtémoc	CDMX, Ciudad de México	MX	06700	19.416886038690283	-99.15499080916561
9	José María Morelos 359, Centro	Monterrey, N.L.	MX	64000	25.673026035176715	-100.3135803426288
10	4102 N 19th Ave	Phoenix	AZ	85015	33.50388562403244	-112.09938445972105
\.


--
-- Data for Name: ristorante_restaurant; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.ristorante_restaurant (id, name, schedule_open, schedule_close, phone_number, address_id, description, image_url) FROM stdin;
1	Burger King Disneyland Anaheim	08:00:00	20:00:00	+1 714-781-4636	1	Burger King in Anaheim Hills, CA home of the WHOPPER® sandwich, is known for fast food burgers, breakfast, lunch and dinner.	https://i.ibb.co/z4D13sH/image.png
2	Burger King Disney World Resort Buena Vista	08:00:00	20:00:00	+1 407-939-5277	2	Tried to give me burnt sweet potato fries Asked for them to be replaced & they just dumped out the top third & added fresh ones on tp of the burnt one	https://i.ibb.co/BG82DCB/image.png
3	Burger King Santa Monica Pier	10:00:00	18:00:00	+1 310-458-8900	3	Gave me no napkins in the drive through. Veggie burger was like cardboard on the outside. Terrible overall	https://i.ibb.co/BPG3kzT/image.png
4	Burger King E Golf Links Rd	09:00:00	19:00:00	+1 520-295-9005	4	The side Caesar salad was surprisingly yummy! Try the double stacker with no sauce...it's d-lish!	https://i.ibb.co/mJVMxgk/image.png
5	Burger King Sonoita Ave	11:00:00	23:00:00	631 311 6000	5	The dumbest people ever work here. So annoying.Horrible service to go with the horrible food. The girl taking our order resembled Bon Qui Qui.	https://i.ibb.co/jfkV0n4/image.png
6	Burger King Guerrero	09:00:00	21:00:00	644 415 6709	6	This one is a terrible Burger King They overcooked my burger patty. It was like eating charcoal The service here and the people are rude!	https://i.ibb.co/Q9KBtz8/image.png
7	Burger King Hermosillo Senderos	08:00:00	21:00:00	55 5255 5241	7	Probando descripcion hermosillo Probando descripcion hermosillo Probando descripcion hermosillo Probando descripcion hermosillo 	https://10619-2.s.cdn12.com/rests/original/105_504751209.jpg
\.


--
-- Data for Name: store_address; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.store_address (id, name, state, int_number, ext_number) FROM stdin;
1	Florida	Florida	\N	12
3	Santa Fe	California	23	32
2	Tucson	Arizona	2	50502
4	Reforma	Mexico City	\N	43
\.


--
-- Data for Name: store_employee; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.store_employee (id, name, age, last_grade, branch_id, home_address_id) FROM stdin;
17	Mariano	28	High School	1	1
19	Hugo	21	Bachelor	3	3
18	Maria	32	Masters Degree	2	2
\.


--
-- Data for Name: store_employee_job; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.store_employee_job (id, employee_id, job_id) FROM stdin;
11	17	1
12	18	2
13	19	4
\.


--
-- Data for Name: store_job; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.store_job (id, name) FROM stdin;
1	Maintenance
2	Development
3	Monitoring
4	Design
5	Management
\.


--
-- Data for Name: store_store; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.store_store (id, name, address, owner) FROM stdin;
1	Liverpool	Correo Mayor #13	Salinas
2	Coppel	Tlalpan #1200	Slim
3	Sanborns	Insurgentes #40	Salins
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzg2MjEzNSwiaWF0IjoxNjM3Nzc1NzM1LCJqdGkiOiJiMzYwYzAwMzg2N2M0NmUzOWE0YjkzMzdmZTZkODg1YyIsInVzZXJfaWQiOjh9.TvmnEKYCFOU4HIo5EJEovod1acXhJIp6JynieQJ3rKE	2021-11-24 17:42:15.175284+00	2021-11-25 17:42:15+00	8	b360c003867c46e39a4b9337fe6d885c
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzg2NTMwMywiaWF0IjoxNjM3Nzc4OTAzLCJqdGkiOiI4ZDMzMmUzNTJmNjY0ZGFmODk5Nzk4M2YyZThiOWFhZSIsInVzZXJfaWQiOjh9.0lxxGJWFtJYsYlKflKnRKw_6uuO2-n5vGH7E7eGqLk8	2021-11-24 18:35:03.524642+00	2021-11-25 18:35:03+00	8	8d332e352f664daf8997983f2e8b9aae
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzg3NjcxNCwiaWF0IjoxNjM3NzkwMzE0LCJqdGkiOiI4NmI2NTRiMzhkZGQ0ZjEyOGRmYmUzNTk4MzgwZDk4NiIsInVzZXJfaWQiOjl9.k6H5Q5s4hh4uAhz8nAiq3QVZOpKSENvY19TdkRp9K_8	2021-11-24 21:45:14.060028+00	2021-11-25 21:45:14+00	9	86b654b38ddd4f128dfbe3598380d986
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk0NTI4OSwiaWF0IjoxNjM3ODU4ODg5LCJqdGkiOiJlN2M3ZTYwNjM1NGE0MWFiOGM1NWIxZTM2YTEzMDRjZiIsInVzZXJfaWQiOjl9.ub-OmCV-necdnqb5RTAtkrsze9U2Ee5xEpXe-pB6wE4	2021-11-25 16:48:09.283491+00	2021-11-26 16:48:09+00	9	e7c7e606354a41ab8c55b1e36a1304cf
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1MzcyMiwiaWF0IjoxNjM3ODY3MzIyLCJqdGkiOiJkMDY1ZDViZTAzMjc0MWJhOTdjMjQ3MWIzYzMxZjlhMiIsInVzZXJfaWQiOjl9.qNgyIlsbeeORx7_00IeNLOOw567TCh6G8AyufxjbDVQ	2021-11-25 19:08:42.116044+00	2021-11-26 19:08:42+00	9	d065d5be032741ba97c2471b3c31f9a2
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1MzkxOSwiaWF0IjoxNjM3ODY3NTE5LCJqdGkiOiI1NTdlMmIwZmFlMDE0Njk0YTBmODIxNTQyMGZlMDM2MSIsInVzZXJfaWQiOjl9.vRLhZU_QAD3IAD7qcYw4wZTAVtk9o-3WNsAixYaTB3A	2021-11-25 19:11:59.036505+00	2021-11-26 19:11:59+00	9	557e2b0fae014694a0f8215420fe0361
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NDA1MywiaWF0IjoxNjM3ODY3NjUzLCJqdGkiOiI2MmMwNTdiZjFmMTY0ZWEzYjAyOTBjNjA5OTYxMmM0NiIsInVzZXJfaWQiOjl9.MnQLaXCgzZP0jz26GO5isUSUVB-9w5kvBGe9zMR4_4M	2021-11-25 19:14:13.460349+00	2021-11-26 19:14:13+00	9	62c057bf1f164ea3b0290c6099612c46
8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NDE0OCwiaWF0IjoxNjM3ODY3NzQ4LCJqdGkiOiI0MDYxNTI1NDQ1NGY0YTY4ODU4ZTRhYWU1MjUzYzUzZiIsInVzZXJfaWQiOjl9.u5dJLLea7CsxZzxai_VCAJxV99aJhl-3PRMCoddTJrA	2021-11-25 19:15:48.524354+00	2021-11-26 19:15:48+00	9	40615254454f4a68858e4aae5253c53f
9	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NDI4NCwiaWF0IjoxNjM3ODY3ODg0LCJqdGkiOiI2YWNlY2U0NGZlYzE0Njg5YjJjZDAxM2RmODE0MTg2ZSIsInVzZXJfaWQiOjl9.w-DnJ8JEaixSpeMfYCBOakN9epqALBj8cM06043QkSo	2021-11-25 19:18:04.223806+00	2021-11-26 19:18:04+00	9	6acece44fec14689b2cd013df814186e
10	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NDI5MSwiaWF0IjoxNjM3ODY3ODkxLCJqdGkiOiJlNjkyMzFjODVhNTU0NDJkYmRkNTc0MGYxY2Y4YTlkYyIsInVzZXJfaWQiOjl9.F50O0sKoUocrkoM-hesChB6oGwm96VEn0qY_-P6XpQA	2021-11-25 19:18:11.547751+00	2021-11-26 19:18:11+00	9	e69231c85a55442dbdd5740f1cf8a9dc
11	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NDI5MiwiaWF0IjoxNjM3ODY3ODkyLCJqdGkiOiJkMGY4ZjYwYmJiN2I0NmFlYTBhNjY3YjNkMjRkOGFiMiIsInVzZXJfaWQiOjl9.pHQQdSCWOWcfNfshkABKbiXrwjg_CjFmFkAC4p2e4fk	2021-11-25 19:18:12.548243+00	2021-11-26 19:18:12+00	9	d0f8f60bbb7b46aea0a667b3d24d8ab2
12	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NDMzNCwiaWF0IjoxNjM3ODY3OTM0LCJqdGkiOiI1ZmIyZDk4OTU2YmQ0YjYzYTFjNjlkNDVjZjUzZThiNSIsInVzZXJfaWQiOjl9.8VDvRdUFx8oqfNShrFfI_QYVPF_UrvU4fZ6HPYJeWHo	2021-11-25 19:18:54.356124+00	2021-11-26 19:18:54+00	9	5fb2d98956bd4b63a1c69d45cf53e8b5
13	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NDM2OSwiaWF0IjoxNjM3ODY3OTY5LCJqdGkiOiIzOWEwNDQ4OTJjNGE0ODY1YmYzNDU1MWQzMzc1NDcyNiIsInVzZXJfaWQiOjl9.EiAhvwcFNCzCFIZnOlqI58vj9eY7J3r8SVfYN-i5V5g	2021-11-25 19:19:29.237978+00	2021-11-26 19:19:29+00	9	39a044892c4a4865bf34551d33754726
14	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NDYzNCwiaWF0IjoxNjM3ODY4MjM0LCJqdGkiOiJjM2QzMTNhM2NkYmI0MmRjYThlZDViMzM5NTk4Yzg0ZiIsInVzZXJfaWQiOjl9.Ti5hAaHh2UlcbSG0twMUyOna9r622L2lfEfyuRvray0	2021-11-25 19:23:54.645785+00	2021-11-26 19:23:54+00	9	c3d313a3cdbb42dca8ed5b339598c84f
15	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NDY3MSwiaWF0IjoxNjM3ODY4MjcxLCJqdGkiOiJhNDVkZjY5ZTdjMjI0MmMxOWVhNjlkZDE3OGM0Nzc5NSIsInVzZXJfaWQiOjl9.SwTVt2OTjb7QLQsq5cATqZMlMRu4IOWWR5RWpDbQB2g	2021-11-25 19:24:31.30135+00	2021-11-26 19:24:31+00	9	a45df69e7c2242c19ea69dd178c47795
16	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NDk1MSwiaWF0IjoxNjM3ODY4NTUxLCJqdGkiOiIyZmNmNjBmZWFhZGU0MDU0YmY1ZmFjNjg2MzlhMjgxNiIsInVzZXJfaWQiOjl9.P5aZfEFvcMoXXQfKR8ausPhPlqifS6u01OkzNi7z8U4	2021-11-25 19:29:11.471001+00	2021-11-26 19:29:11+00	9	2fcf60feaade4054bf5fac68639a2816
17	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTEzOCwiaWF0IjoxNjM3ODY4NzM4LCJqdGkiOiIxYWI4M2IxYzM4ZmI0NDNjYjdmOGU0YWY4NjYxYzczNCIsInVzZXJfaWQiOjl9.w-hOT2YZaUy3tVF6YUlZW55hiz7iTnLsCX9iMLNZea8	2021-11-25 19:32:18.191409+00	2021-11-26 19:32:18+00	9	1ab83b1c38fb443cb7f8e4af8661c734
18	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTQwMSwiaWF0IjoxNjM3ODY5MDAxLCJqdGkiOiJlYzVkMWIwMTJkOWM0MGQ3ODIzMTU3ZjQ0MGZlN2RhZSIsInVzZXJfaWQiOjl9.ryOEBxOHwPcMprL2F9j7vjzR6kTMb5uMuWF3QHhzyUM	2021-11-25 19:36:41.28433+00	2021-11-26 19:36:41+00	9	ec5d1b012d9c40d7823157f440fe7dae
19	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTQzNywiaWF0IjoxNjM3ODY5MDM3LCJqdGkiOiI3YjYxN2JkN2NkNDY0YjQ1ODk2MzBkZDZiZDY3NTdiOCIsInVzZXJfaWQiOjl9.YrFihgOvwdZDjr5PHc9pTdMV1QwjVuiYLoCmx7DcEvs	2021-11-25 19:37:17.342292+00	2021-11-26 19:37:17+00	9	7b617bd7cd464b4589630dd6bd6757b8
20	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTQ0OCwiaWF0IjoxNjM3ODY5MDQ4LCJqdGkiOiJlZmZkN2U2MDA3Y2Q0ZGJkODcyZjRlY2ZjNDM4YzMzYiIsInVzZXJfaWQiOjl9.pyPgAApthVimtNK97ZVJonU2_mFo1mGDonzj1SI03lw	2021-11-25 19:37:28.641383+00	2021-11-26 19:37:28+00	9	effd7e6007cd4dbd872f4ecfc438c33b
21	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTQ2NiwiaWF0IjoxNjM3ODY5MDY2LCJqdGkiOiI3YTQyZTUzY2EyM2I0NDIwOWVhZjZkMWQ5ZGJjMWI5NiIsInVzZXJfaWQiOjl9.orh9IJzN0JthtkeBARlydn2tZWE35t5dNqu5XHQOQww	2021-11-25 19:37:46.376234+00	2021-11-26 19:37:46+00	9	7a42e53ca23b44209eaf6d1d9dbc1b96
22	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTQ4NiwiaWF0IjoxNjM3ODY5MDg2LCJqdGkiOiIzNjQ4YWM3YjQ5ZjI0ZDM1YmExMmQzNjczNjY3N2NhNiIsInVzZXJfaWQiOjl9.-XGIsMycBXcFhCBcRuu8zWVbHwDWlI9_pF7B5HD1-3M	2021-11-25 19:38:06.057194+00	2021-11-26 19:38:06+00	9	3648ac7b49f24d35ba12d36736677ca6
23	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTU1NSwiaWF0IjoxNjM3ODY5MTU1LCJqdGkiOiI3ODExMjljNDEyNTc0ZWZhYjYyYThiNGJmMWFjMmFjNCIsInVzZXJfaWQiOjl9.JjaKkBkB5bLlUt1qnH7y-3AkxGfpI0CGsdHLVSSc4rk	2021-11-25 19:39:15.629141+00	2021-11-26 19:39:15+00	9	781129c412574efab62a8b4bf1ac2ac4
24	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTU2OCwiaWF0IjoxNjM3ODY5MTY4LCJqdGkiOiI3ZDc1MWUwODBlZmQ0ZTVhOWY1NWIwYWE5ZGZlNzcyZCIsInVzZXJfaWQiOjl9.g-vKFqzmb_1qE9zdm1VILvhf2INRHhkfXy76dL3DGIw	2021-11-25 19:39:28.91626+00	2021-11-26 19:39:28+00	9	7d751e080efd4e5a9f55b0aa9dfe772d
25	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTU3MiwiaWF0IjoxNjM3ODY5MTcyLCJqdGkiOiIxMzQxM2UwZjYzMjk0ZGVkODAyZjgzNWYzYzY3Yzk2ZSIsInVzZXJfaWQiOjl9.x1UFKqyBkFKJYbEV8D-FQL9oR7TyfVOnxTVcNi7D_EQ	2021-11-25 19:39:32.876345+00	2021-11-26 19:39:32+00	9	13413e0f63294ded802f835f3c67c96e
26	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTYwMSwiaWF0IjoxNjM3ODY5MjAxLCJqdGkiOiI0MzU2MWU4YjU5MmI0Mjg4OTc5MzU3MDkxZDE4OGNhZiIsInVzZXJfaWQiOjl9.JhoBBQnmu_IIufTiBZ4m73QkyZ88ho_sD1q_u6ToxOo	2021-11-25 19:40:01.102584+00	2021-11-26 19:40:01+00	9	43561e8b592b4288979357091d188caf
27	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTYxMywiaWF0IjoxNjM3ODY5MjEzLCJqdGkiOiJlMGVhNWU5ZGM1NDQ0NmZkOGRmODAyMWRiZTQ4MDJkOCIsInVzZXJfaWQiOjl9.a0tQZs1FMH0PjfjUk_bBoi33F5KOMvSlcqLxzwdyV7k	2021-11-25 19:40:13.093088+00	2021-11-26 19:40:13+00	9	e0ea5e9dc54446fd8df8021dbe4802d8
28	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NTg5OSwiaWF0IjoxNjM3ODY5NDk5LCJqdGkiOiI5ODIwYzFhZGYyOWQ0MDI2YWY1ZmE4OGZkMDU5NTNlOCIsInVzZXJfaWQiOjl9.EhmtXlt3mpaVuPIRHAlnDEfAjBGOpA818OqJaDpuomE	2021-11-25 19:44:59.185773+00	2021-11-26 19:44:59+00	9	9820c1adf29d4026af5fa88fd05953e8
29	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NjQ2MSwiaWF0IjoxNjM3ODcwMDYxLCJqdGkiOiI0NmI0ZmU2NDk2MWU0Zjc3OWE4ZThmOTI5YzdhZWVlOCIsInVzZXJfaWQiOjl9.6535k3mZj8Ih_3JPx6mxVHEMym7otvbYTiGq2-vZkeI	2021-11-25 19:54:21.918586+00	2021-11-26 19:54:21+00	9	46b4fe64961e4f779a8e8f929c7aeee8
30	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk1NjU4MSwiaWF0IjoxNjM3ODcwMTgxLCJqdGkiOiI1MWMyMmQwNmQyODk0NmFmOTJlYWQ3NjE3NzRiNzRmMCIsInVzZXJfaWQiOjl9.2_9NBAS3RH2R1jS_ssfWZ7UeSQeGEg1kbQXcCxCI4O4	2021-11-25 19:56:21.58502+00	2021-11-26 19:56:21+00	9	51c22d06d28946af92ead761774b74f0
31	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2MTY3NywiaWF0IjoxNjM3ODc1Mjc3LCJqdGkiOiI3ZDg1OWNkOTVhZDc0ZmMyYjA4MTkyYjkxOGZkMjRmOSIsInVzZXJfaWQiOjl9.fcywPdlpqZ3w_PuQl2uD424dmp1Qlr1ihtbBnbUIx0w	2021-11-25 21:21:17.783703+00	2021-11-26 21:21:17+00	9	7d859cd95ad74fc2b08192b918fd24f9
32	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NDI5OCwiaWF0IjoxNjM3ODc3ODk4LCJqdGkiOiJlMzhmNzFhOWU1Yzk0ODZlOTBhYWY5YmNkMjkyNGY5YSIsInVzZXJfaWQiOjl9.hNT9W9cv6SRLeccHzBR0_QqBEdpGREJ3TxJUC_sOIRk	2021-11-25 22:04:58.720847+00	2021-11-26 22:04:58+00	9	e38f71a9e5c9486e90aaf9bcd2924f9a
33	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NDQ1OSwiaWF0IjoxNjM3ODc4MDU5LCJqdGkiOiI5ZGVmNDk0OTE1MjE0ZTQ4YTRlOTEzMjYwMjMwODBmNiIsInVzZXJfaWQiOjl9.m1PTh_3IV4I1z0weCRCvxLdLWyCV5M461VLQ-rNKcF0	2021-11-25 22:07:39.219439+00	2021-11-26 22:07:39+00	9	9def494915214e48a4e91326023080f6
34	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NDUzNSwiaWF0IjoxNjM3ODc4MTM1LCJqdGkiOiI3ZTc0M2ZlOGM2ODQ0NGJiYjVhZDE5MmMyMTg4ODFjNSIsInVzZXJfaWQiOjl9.k3ePzvwBxHobYYOWYAt1WHa5zeFnnmrsB9T5jyuUk9g	2021-11-25 22:08:55.300655+00	2021-11-26 22:08:55+00	9	7e743fe8c68444bbb5ad192c218881c5
35	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NDg0NSwiaWF0IjoxNjM3ODc4NDQ1LCJqdGkiOiJlNTIyOTc3YzI1Njk0ZmE5YmNkMWZlYjQ2YzYwZjIxNyIsInVzZXJfaWQiOjl9.2FukzJmwcM43EqmU1rHArTcvsF2zgfufzZUfIriw08o	2021-11-25 22:14:05.74174+00	2021-11-26 22:14:05+00	9	e522977c25694fa9bcd1feb46c60f217
36	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NTc1OCwiaWF0IjoxNjM3ODc5MzU4LCJqdGkiOiJiODI0ODFlNWRmNDA0MmY1ODZhZmIyYzIwNmY1NWZhNiIsInVzZXJfaWQiOjl9.KJJwiUEy3kv9GyyPgPMDVFUSPuC-N2jsZd30PlAjcHg	2021-11-25 22:29:18.296444+00	2021-11-26 22:29:18+00	9	b82481e5df4042f586afb2c206f55fa6
37	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NTgxNywiaWF0IjoxNjM3ODc5NDE3LCJqdGkiOiI0Y2YxNGEwYThiNzM0ZTFiODYwNmZkZjAxNDE5NmE0OSIsInVzZXJfaWQiOjl9.Rao4JDwcP6M5OLEdKSaAXX7QJQdzekJD_Pd-Z1FIpBw	2021-11-25 22:30:17.164572+00	2021-11-26 22:30:17+00	9	4cf14a0a8b734e1b8606fdf014196a49
38	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NTgzOSwiaWF0IjoxNjM3ODc5NDM5LCJqdGkiOiJiNDg2MjE5YzA4Mjc0MmI2YjE0YzYwZDI0ZTkxYTYzOCIsInVzZXJfaWQiOjl9.Uw8QUGiCEE2n1QQ2Mpkf0xzmnM7H8rMeEk0tAyEMk90	2021-11-25 22:30:39.21427+00	2021-11-26 22:30:39+00	9	b486219c082742b6b14c60d24e91a638
39	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NTg5NSwiaWF0IjoxNjM3ODc5NDk1LCJqdGkiOiI5NDBiOWI4NTc1N2E0OTFhYTljZTNlYmRlM2M3NTU1YiIsInVzZXJfaWQiOjl9.l1rKFXbNopKlgpA--YydU90PJnwC6n5PwFNjOk76Th0	2021-11-25 22:31:35.146022+00	2021-11-26 22:31:35+00	9	940b9b85757a491aa9ce3ebde3c7555b
40	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NTkzNCwiaWF0IjoxNjM3ODc5NTM0LCJqdGkiOiIxOWUzMDg3ODUzYmQ0MzUwOWQ3MzJiMTE1YWU4MmIwNiIsInVzZXJfaWQiOjl9.ogGgQpcabQwoeD0-pfLbZ4qHSJMqn1Fbg03aSMI0BS8	2021-11-25 22:32:14.51599+00	2021-11-26 22:32:14+00	9	19e3087853bd43509d732b115ae82b06
41	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NjEyOSwiaWF0IjoxNjM3ODc5NzI5LCJqdGkiOiI2NDY2ZWJlMWQzZWY0OGMxYTY0NzhiZTk1YjFlMWJhNCIsInVzZXJfaWQiOjl9.RqnqOES2jGlQ5vcP_L1mZ4HRivnE-ISIp4FDd9ieBjg	2021-11-25 22:35:29.109157+00	2021-11-26 22:35:29+00	9	6466ebe1d3ef48c1a6478be95b1e1ba4
42	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NjMwMCwiaWF0IjoxNjM3ODc5OTAwLCJqdGkiOiJjMGRlNWYzN2YzOTI0MTYyOThhMmM3Nzg5MWU1Njg3OCIsInVzZXJfaWQiOjl9.5vm8YM0FKpOtHbQq7Tex674nASJGIbB-5q7UVBtuaCc	2021-11-25 22:38:20.634768+00	2021-11-26 22:38:20+00	9	c0de5f37f392416298a2c77891e56878
43	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NjMzMywiaWF0IjoxNjM3ODc5OTMzLCJqdGkiOiJlYzg2NGZiMjdjMTc0YjZmODcxNGQ0ODZhOTc1MDEwNiIsInVzZXJfaWQiOjl9.CMV7O9fOVy4xqtNpm4-EUqjEP8QXl8MYdx43ag782UU	2021-11-25 22:38:53.126545+00	2021-11-26 22:38:53+00	9	ec864fb27c174b6f8714d486a9750106
44	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NjQ0MSwiaWF0IjoxNjM3ODgwMDQxLCJqdGkiOiIzY2MzYmZiNjZkOTQ0YzM1OWJkODlkZTU2ZDUxYTNlNSIsInVzZXJfaWQiOjl9.ZJ_oR6SmlC7XuG2IUo9wAuw67BAjmCRZqsma0d-PrRw	2021-11-25 22:40:41.096104+00	2021-11-26 22:40:41+00	9	3cc3bfb66d944c359bd89de56d51a3e5
45	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NjY4MywiaWF0IjoxNjM3ODgwMjgzLCJqdGkiOiI1MzFhNjkxOTI1NDc0ZjU4OGFjM2EyNDE2ODdiNzE4MCIsInVzZXJfaWQiOjl9.Uyo2XXesyF2ewyPVZr_q-gfbMWBTcD5jPopuzhJCn6Y	2021-11-25 22:44:43.337853+00	2021-11-26 22:44:43+00	9	531a691925474f588ac3a241687b7180
46	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NjY5OCwiaWF0IjoxNjM3ODgwMjk4LCJqdGkiOiJkZWQxOWM2ZGNhNWI0NDZlODczNTIxMmFiMzIzYTQyNiIsInVzZXJfaWQiOjl9.i5xqrT_o6-2m8MEzwoHREgWryjRZT8P06TBiydUYtD8	2021-11-25 22:44:58.965193+00	2021-11-26 22:44:58+00	9	ded19c6dca5b446e8735212ab323a426
47	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2Njc4MywiaWF0IjoxNjM3ODgwMzgzLCJqdGkiOiJmZmU3NTRmMmE2NmY0OTYyOTg4MmUwNGY1NGQ4Yjk2YSIsInVzZXJfaWQiOjl9.Q-JjvcuNz_kNvZ5Lh2z0b7eUt2vFLrqvRWOvNw011Rg	2021-11-25 22:46:23.521611+00	2021-11-26 22:46:23+00	9	ffe754f2a66f49629882e04f54d8b96a
48	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2Njg5NywiaWF0IjoxNjM3ODgwNDk3LCJqdGkiOiJhZjQ1MmRhMWExMTc0YzIwYjE0NTUwOTA2YWIzYWVhZCIsInVzZXJfaWQiOjl9.YdkaG9AMfkDfMAaRsRK0lkKW3wkU5y0jiXjd_ZCPhnk	2021-11-25 22:48:17.367489+00	2021-11-26 22:48:17+00	9	af452da1a1174c20b14550906ab3aead
49	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2Njk0MywiaWF0IjoxNjM3ODgwNTQzLCJqdGkiOiJiNjVmY2M3NTE2ZWI0NmRiYWVhZTJjNjgxNWU1MmY3MSIsInVzZXJfaWQiOjl9.LpAjvsVteZZgwabiEtrJOBtc_IF9rB2RW1SA4jooClc	2021-11-25 22:49:03.506611+00	2021-11-26 22:49:03+00	9	b65fcc7516eb46dbaeae2c6815e52f71
50	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzAwNiwiaWF0IjoxNjM3ODgwNjA2LCJqdGkiOiIwZGRkZmIzYmY5N2I0OTljYTk2MmYyMDNhMDI4ZDQxNiIsInVzZXJfaWQiOjl9.9qF97VOr5VrPEkQ-TMKbfdO2PBehrx2OUIBk-jrSTRo	2021-11-25 22:50:06.469115+00	2021-11-26 22:50:06+00	9	0dddfb3bf97b499ca962f203a028d416
51	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzE0NSwiaWF0IjoxNjM3ODgwNzQ1LCJqdGkiOiI4OTg4MzQ5ZGVmZTY0NDU5YmNiNGFjM2Y3YTY1ZGEwMSIsInVzZXJfaWQiOjl9.tWNASAJFHsQh-rSIfqFMQADJG2NYI7dceSJLyyrQRrU	2021-11-25 22:52:25.214167+00	2021-11-26 22:52:25+00	9	8988349defe64459bcb4ac3f7a65da01
52	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzE1NywiaWF0IjoxNjM3ODgwNzU3LCJqdGkiOiI5MWJhNDI2OGYwMTI0MDJlYTNlMTQ1MTZjOTBiM2VmYyIsInVzZXJfaWQiOjl9.aJIH5U3qS4Vy5qcpeofsY-D7stZq_tuiF9IbH2lLEyM	2021-11-25 22:52:37.52592+00	2021-11-26 22:52:37+00	9	91ba4268f012402ea3e14516c90b3efc
53	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzE5MCwiaWF0IjoxNjM3ODgwNzkwLCJqdGkiOiJlY2IzZGNjNmE2NjU0MWExODY3Y2ZkMGY2M2YwZGM5MyIsInVzZXJfaWQiOjl9.vDPUVELAI84prtI4O_NfPSOFqj5rGPVz7bdFcnCdBGY	2021-11-25 22:53:10.506515+00	2021-11-26 22:53:10+00	9	ecb3dcc6a66541a1867cfd0f63f0dc93
54	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzIyOSwiaWF0IjoxNjM3ODgwODI5LCJqdGkiOiI5MWRhYTIxZmUyZTk0ZDY0YWIzM2JlOTE1OWYzY2MxNCIsInVzZXJfaWQiOjl9.ocXIzgQ0-S4xDkseFB4Zm5J6wIWj13624jgDA5VXy1k	2021-11-25 22:53:49.836059+00	2021-11-26 22:53:49+00	9	91daa21fe2e94d64ab33be9159f3cc14
55	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzI4MCwiaWF0IjoxNjM3ODgwODgwLCJqdGkiOiJiYmI4ZGI0MWVkMWM0YmYyYWU0YTFhZThjNjQxYzI3MyIsInVzZXJfaWQiOjl9.3-ij3JHm2CkAc2sSXDuvJiv82JIXydANIOEXET9xZLQ	2021-11-25 22:54:40.184906+00	2021-11-26 22:54:40+00	9	bbb8db41ed1c4bf2ae4a1ae8c641c273
56	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzM3MiwiaWF0IjoxNjM3ODgwOTcyLCJqdGkiOiJmNjgzM2NhZDI3YmE0MWE3YWU2NDc2NGY3N2E0OWIzOSIsInVzZXJfaWQiOjl9.c8gVuRA6L7wkxKwoHaVcGKmJzw39YumeGDXC2eD94-4	2021-11-25 22:56:12.611304+00	2021-11-26 22:56:12+00	9	f6833cad27ba41a7ae64764f77a49b39
57	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzM5OSwiaWF0IjoxNjM3ODgwOTk5LCJqdGkiOiJlNDRiMGQ5MjE0NTE0ZDUzYTY4M2IwOGFkZjQxYzc4NyIsInVzZXJfaWQiOjl9.mMgYcpPdUTFLDSmzytrwIEXFKhiKaZNSOlUA0OxqMNw	2021-11-25 22:56:39.850414+00	2021-11-26 22:56:39+00	9	e44b0d9214514d53a683b08adf41c787
58	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzQyOSwiaWF0IjoxNjM3ODgxMDI5LCJqdGkiOiJjODA3MjM3MGJkY2Q0NTZjOTNmZjE4NGJmMmQxYjNhOCIsInVzZXJfaWQiOjl9.KGAzilvQgPIe_730fhwLcn1OkCB7koyVddFOihCHY20	2021-11-25 22:57:09.439866+00	2021-11-26 22:57:09+00	9	c8072370bdcd456c93ff184bf2d1b3a8
59	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzQ0NCwiaWF0IjoxNjM3ODgxMDQ0LCJqdGkiOiI3YmVlMDQ1Njc2ZjY0ZGExYWYxOGIyMDhhYmE4ZTA3OCIsInVzZXJfaWQiOjl9.UM0nacgJVqz6K8oAxZSCEYNYQXDnejmG8i27FVSu5KA	2021-11-25 22:57:24.283401+00	2021-11-26 22:57:24+00	9	7bee045676f64da1af18b208aba8e078
60	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzQ0OSwiaWF0IjoxNjM3ODgxMDQ5LCJqdGkiOiJkMWY4MzNkNDQ5OTQ0OTViYjc1ZjBiNWQxNzlhZTRiYiIsInVzZXJfaWQiOjl9.jbbnCCO8FXrI5_mgR8vTF8Cngff2SMJXAvSInqnqbCI	2021-11-25 22:57:29.851824+00	2021-11-26 22:57:29+00	9	d1f833d44994495bb75f0b5d179ae4bb
61	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzU0NSwiaWF0IjoxNjM3ODgxMTQ1LCJqdGkiOiIyZjE3NDY3ZWExYTg0YjhjYmRkMjQ0ZTc2ZjAwNTRlNyIsInVzZXJfaWQiOjl9.wLigci3UrAuoOPxAWfd3pjwQn2I_99nS632BI4SPIJE	2021-11-25 22:59:05.716116+00	2021-11-26 22:59:05+00	9	2f17467ea1a84b8cbdd244e76f0054e7
62	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzY0OCwiaWF0IjoxNjM3ODgxMjQ4LCJqdGkiOiJhNTVkMzg4NzZmNjA0MTRjYjM0MjJiMWM0OWQ3MDMxZiIsInVzZXJfaWQiOjl9.78Ng5xjLoMIG2x896WXSZt1XV5-AnbBTlY7nmydIKR4	2021-11-25 23:00:48.239121+00	2021-11-26 23:00:48+00	9	a55d38876f60414cb3422b1c49d7031f
63	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzY5OSwiaWF0IjoxNjM3ODgxMjk5LCJqdGkiOiJjMzcxMTc4ZjA4ZmE0NGZjYWU1NzQwOGI3ZWRjMzcwYSIsInVzZXJfaWQiOjl9.v22u2b0G--x5kvBzZmPKLhZwcrzltXF_egp9R6sYEhU	2021-11-25 23:01:39.596791+00	2021-11-26 23:01:39+00	9	c371178f08fa44fcae57408b7edc370a
64	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzcxMSwiaWF0IjoxNjM3ODgxMzExLCJqdGkiOiIyNjFjZGZmN2UzNGQ0MDRkOTM1ZWNkOGZiZWFkMTcxMiIsInVzZXJfaWQiOjl9.DSRfkmrQGQBf4l2OujQIbK9CT-t2xiPzlJtu2PNzykU	2021-11-25 23:01:51.533387+00	2021-11-26 23:01:51+00	9	261cdff7e34d404d935ecd8fbead1712
65	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2NzcyMSwiaWF0IjoxNjM3ODgxMzIxLCJqdGkiOiIwOTM2Nzk2YzVlZGQ0NmY0YTgyNGRkZGY0NmQzY2ZmYSIsInVzZXJfaWQiOjl9.SJkOUrvvdDSmeI-uBjRaOln8cemGHhOevcOs1MdfrlM	2021-11-25 23:02:01.283427+00	2021-11-26 23:02:01+00	9	0936796c5edd46f4a824dddf46d3cffa
66	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2Nzc1MiwiaWF0IjoxNjM3ODgxMzUyLCJqdGkiOiI4YzNiYzgxMDJmMzc0M2I2Yjk4NzRlNjRmZDVmNTQ5OCIsInVzZXJfaWQiOjl9.sGQm8vwzH844czVI_Xc8t-_priDmPVTbIAhvcV-V66Y	2021-11-25 23:02:32.038128+00	2021-11-26 23:02:32+00	9	8c3bc8102f3743b6b9874e64fd5f5498
67	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2Nzk0NSwiaWF0IjoxNjM3ODgxNTQ1LCJqdGkiOiI5MzU2NTE1M2U4ZjY0NDc4OTBhM2FmMDg2NWMxODQyMSIsInVzZXJfaWQiOjl9.lVkmIs_l5sZVyAXLYg7n7TwS6ENCY1XsZvjfMnZt0pg	2021-11-25 23:05:45.205838+00	2021-11-26 23:05:45+00	9	93565153e8f6447890a3af0865c18421
68	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2Nzk3MiwiaWF0IjoxNjM3ODgxNTcyLCJqdGkiOiI1ZjBmNDhiNmFhZTE0MDZkOTFiZDAxMDU0NTdmNDI3YiIsInVzZXJfaWQiOjl9.eHd4gFzBmlKIz3TZTPDXxG2ERCN_X38RmtuFWWIFOpU	2021-11-25 23:06:12.629608+00	2021-11-26 23:06:12+00	9	5f0f48b6aae1406d91bd0105457f427b
69	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2Nzk5NCwiaWF0IjoxNjM3ODgxNTk0LCJqdGkiOiI5ZWUzODY1NTljYTg0ZGY2OWU5MzI4ZmRlMDhjYTczMSIsInVzZXJfaWQiOjl9.QSvVJuVmxuKid7ructaztQ0Dk83kUewjze6XQPhOu-0	2021-11-25 23:06:34.795163+00	2021-11-26 23:06:34+00	9	9ee386559ca84df69e9328fde08ca731
70	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2ODEzOSwiaWF0IjoxNjM3ODgxNzM5LCJqdGkiOiI1MGU3YmYxMDRmMzI0MTI3OTliMGIyMWM1MGI4N2UzYyIsInVzZXJfaWQiOjl9.yRMzs9NQPIE0alkohrtDUWgezlXBo1u3T3ScWTvXOys	2021-11-25 23:08:59.996722+00	2021-11-26 23:08:59+00	9	50e7bf104f32412799b0b21c50b87e3c
71	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2ODE3OCwiaWF0IjoxNjM3ODgxNzc4LCJqdGkiOiIzNDNhNDFmMWUwODc0MDhkOGQxNmM3Y2Q2NjhhZGY4MiIsInVzZXJfaWQiOjl9.n-JH_Prc53dkykl2eDmm57VVAvmvlCPGVf9bUeu4wv0	2021-11-25 23:09:38.091272+00	2021-11-26 23:09:38+00	9	343a41f1e087408d8d16c7cd668adf82
72	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2ODI0NiwiaWF0IjoxNjM3ODgxODQ2LCJqdGkiOiI4NDRjNTI2NzlhNzM0MTUwYjlhNmQ3ZWZkMDUzMWQ3MyIsInVzZXJfaWQiOjl9.PTYOfC7i9tlvwgNZ0CtVcE6xqDitAoLKzM4RGK251Kg	2021-11-25 23:10:46.90531+00	2021-11-26 23:10:46+00	9	844c52679a734150b9a6d7efd0531d73
73	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2ODU4NSwiaWF0IjoxNjM3ODgyMTg1LCJqdGkiOiIyM2ZlMmE0ZTQ0YjA0ODhmOGU2MDMwN2NmZDY4YjFhOSIsInVzZXJfaWQiOjl9.aSarOXxdtdWhEoK6bQ3N4ZRGzIHLp5F0RUv_tfIWkYk	2021-11-25 23:16:25.257212+00	2021-11-26 23:16:25+00	9	23fe2a4e44b0488f8e60307cfd68b1a9
74	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2ODY3MiwiaWF0IjoxNjM3ODgyMjcyLCJqdGkiOiI3ODdlNzhkYjI2Y2U0ZWY4YmQxODdhYzk0OTJkOWVjOCIsInVzZXJfaWQiOjl9.JkWAHAlWi-Rut2MFtcmqPRjCnHfLqcu3ZQuojvWG5G0	2021-11-25 23:17:52.738291+00	2021-11-26 23:17:52+00	9	787e78db26ce4ef8bd187ac9492d9ec8
75	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2ODc1NCwiaWF0IjoxNjM3ODgyMzU0LCJqdGkiOiJhMjE3NWZiNGFmMzk0ZDkzOGY4NzQ5MjU5YWNlNTM1MyIsInVzZXJfaWQiOjl9.nUUrAZj35_nuUSBRP-chh-5FVlU1vU7FCuWAqg6mNrw	2021-11-25 23:19:14.278271+00	2021-11-26 23:19:14+00	9	a2175fb4af394d938f8749259ace5353
76	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2ODg2OSwiaWF0IjoxNjM3ODgyNDY5LCJqdGkiOiJhNGE5NDE2ZTJhNzM0YTU3YTA3YzlkYTNjNWJlMDQ0ZiIsInVzZXJfaWQiOjl9.-SdfSU0CfbXO7Fw2RoClV-cMhlsxffTrXj9YNQyKv98	2021-11-25 23:21:09.571963+00	2021-11-26 23:21:09+00	9	a4a9416e2a734a57a07c9da3c5be044f
77	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk2OTM0MSwiaWF0IjoxNjM3ODgyOTQxLCJqdGkiOiJmNTVmZjM1NTg1MDU0NDhjOWI3MzRlMjU5N2I1YjQ3ZCIsInVzZXJfaWQiOjl9.mqPbkcX6pvKf_d0thgiIUN9isxYaBzKg3_wy1NVwsy4	2021-11-25 23:29:01.080378+00	2021-11-26 23:29:01+00	9	f55ff3558505448c9b734e2597b5b47d
78	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA0ODczMywiaWF0IjoxNjM3OTYyMzMzLCJqdGkiOiI4MGZhMTJkZDBkYzQ0ZDhkYmFmMmEzN2Y3ZDU5ZWNjMyIsInVzZXJfaWQiOjl9.kjDn7NU8zExhZn79eASq5u8zHLYpUUiFHZ4tANbwN0s	2021-11-26 21:32:13.590085+00	2021-11-27 21:32:13+00	9	80fa12dd0dc44d8dbaf2a37f7d59ecc3
79	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA0ODc4NywiaWF0IjoxNjM3OTYyMzg3LCJqdGkiOiIwYWVhNDdiNzllMzQ0MWViOWY2YTZlZTQ4NjdlMGIzNyIsInVzZXJfaWQiOjl9.4dY9Xa6dfAdsOLMCWfMgpNfimV1_0wfFRS5vrf0it-c	2021-11-26 21:33:07.046704+00	2021-11-27 21:33:07+00	9	0aea47b79e3441eb9f6a6ee4867e0b37
80	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA0OTAwNiwiaWF0IjoxNjM3OTYyNjA2LCJqdGkiOiI1MGE0NWViZmFiMzA0Y2EwYmRmZTVmOGEwZGFmMDc5YiIsInVzZXJfaWQiOjl9.d1P2MSEiE8qdIAoyIUVpRBk9smQ5pSOZiV5xWpR3xbY	2021-11-26 21:36:46.519814+00	2021-11-27 21:36:46+00	9	50a45ebfab304ca0bdfe5f8a0daf079b
81	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA1MDA1NywiaWF0IjoxNjM3OTYzNjU3LCJqdGkiOiJjZjRiNzNiYWNlNmE0NzY5YThlNzkwM2ZmMWQ0M2VkNSIsInVzZXJfaWQiOjl9.qbnsm6lJTaTazwIds8JC5DdkVkkzO9Ro9_4OnjS0Hk8	2021-11-26 21:54:17.096697+00	2021-11-27 21:54:17+00	9	cf4b73bace6a4769a8e7903ff1d43ed5
82	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA1MDE0MiwiaWF0IjoxNjM3OTYzNzQyLCJqdGkiOiI4YjUxMWUyZmQ3M2M0YTU5YmU4NDEwMTk1ODBkNTRjZiIsInVzZXJfaWQiOjl9.vaKVYA3bKYGx8Q0goTP2sj7s_1wlCZOpasDhQQ87Skg	2021-11-26 21:55:42.105943+00	2021-11-27 21:55:42+00	9	8b511e2fd73c4a59be841019580d54cf
83	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA1MDM1MiwiaWF0IjoxNjM3OTYzOTUyLCJqdGkiOiJmYjA3ZTQ0OTQ2NmY0ODc0YmRhNzZlNGIzMzhlZmRiNiIsInVzZXJfaWQiOjl9.k5q35J4NRWrAc5MjAKEEICPTPOprDqv_9o4UQRSysLc	2021-11-26 21:59:12.095209+00	2021-11-27 21:59:12+00	9	fb07e449466f4874bda76e4b338efdb6
84	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA1MjAzOSwiaWF0IjoxNjM3OTY1NjM5LCJqdGkiOiJlZTBjMWYwOGFmMmY0MTNkODVmYTljNzA0Zjk4NTBkMiIsInVzZXJfaWQiOjl9.A2CDNbCRifuQnadk5NK03g-jwr6G_L9dKO9YoozBPtc	2021-11-26 22:27:19.150704+00	2021-11-27 22:27:19+00	9	ee0c1f08af2f413d85fa9c704f9850d2
85	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA1NDQzMCwiaWF0IjoxNjM3OTY4MDMwLCJqdGkiOiI3OGY4OTE4OWFlYmE0MWRkODVlOGZkNTlhMzdmZjFiOCIsInVzZXJfaWQiOjl9.be0mQEibuFbeWyV06FyXijG73-DAtm_8ZEAnxqSa4Z8	2021-11-26 23:07:10.8709+00	2021-11-27 23:07:10+00	9	78f89189aeba41dd85e8fd59a37ff1b8
86	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA1NTY3MywiaWF0IjoxNjM3OTY5MjczLCJqdGkiOiIwMWY3MzM0OTllOGE0ZGQwODcyZDE0YmVhZGIwYzhlMSIsInVzZXJfaWQiOjl9.FjhM_Kne3kTmhjS0HGZQu97yzkO2VZ9E-Ch2HPUDQog	2021-11-26 23:27:53.743417+00	2021-11-27 23:27:53+00	9	01f733499e8a4dd0872d14beadb0c8e1
87	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA1NTcyMiwiaWF0IjoxNjM3OTY5MzIyLCJqdGkiOiIzY2RjNTE0Y2YyZDI0OGQxYjlmODVkODdkNDMwNTMwMSIsInVzZXJfaWQiOjl9.cJr5NPg_zVwDmDXS4vshaou1qPbji_7GXVEKaTRBucQ	2021-11-26 23:28:42.086038+00	2021-11-27 23:28:42+00	9	3cdc514cf2d248d1b9f85d87d4305301
88	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA1NTcyNCwiaWF0IjoxNjM3OTY5MzI0LCJqdGkiOiI1YmZiOWU3YmI1NDc0ZDJlODI5NGE3NmY2MzFhZjQ4ZCIsInVzZXJfaWQiOjl9.78GTzqpH9RvK99kzmVKstZTQ6DQaDZ5mpOoZkRAv76k	2021-11-26 23:28:44.971251+00	2021-11-27 23:28:44+00	9	5bfb9e7bb5474d2e8294a76f631af48d
89	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA1NTcyNywiaWF0IjoxNjM3OTY5MzI3LCJqdGkiOiJlM2EwMzE2ZTExYjY0Nzk4OGVjM2RmZTk2NDI5MWQ3MiIsInVzZXJfaWQiOjl9.hzUjjN0_RLKzUq_riuwZKg85-nRX6MogfcTfi2HfQ0w	2021-11-26 23:28:47.190923+00	2021-11-27 23:28:47+00	9	e3a0316e11b647988ec3dfe964291d72
90	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODA1NTcyOCwiaWF0IjoxNjM3OTY5MzI4LCJqdGkiOiJmMGY4OGZkNzEyMmU0YTU3OGFmMThiYzQwMmVhM2E1MyIsInVzZXJfaWQiOjl9.-03LtT1GECmLfYSyI6lc6Gt36St2vStkCX-IGaikE4E	2021-11-26 23:28:48.546911+00	2021-11-27 23:28:48+00	9	f0f88fd7122e4a578af18bc402ea3a53
91	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODI4ODQzOCwiaWF0IjoxNjM4MjAyMDM4LCJqdGkiOiJkZmI3ZjEzOThmNTQ0YmQ1YmI1N2E0NTAxNjZiZjAzOCIsInVzZXJfaWQiOjl9.Udeb2lgfG85EEfby_WrUdLbipMxHyCf2ObVUhlXVPmQ	2021-11-29 16:07:18.854304+00	2021-11-30 16:07:18+00	9	dfb7f1398f544bd5bb57a450166bf038
92	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODI5MTAwNSwiaWF0IjoxNjM4MjA0NjA1LCJqdGkiOiI5ZGY2ZjJkMGFhNWI0YjQxOWY2NzM4NzU4ODRkMTc3ZCIsInVzZXJfaWQiOjl9.OIhS3cQiJy3Z5ym6c-WAJgqkNjitRhM2sl8mIVo_4iU	2021-11-29 16:50:05.529485+00	2021-11-30 16:50:05+00	9	9df6f2d0aa5b4b419f673875884d177d
93	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODI5MTc3MywiaWF0IjoxNjM4MjA1MzczLCJqdGkiOiI1YWNjZDkzN2RhYjQ0ZTIxYTRkODYyZmVjMzMwYjIzMiIsInVzZXJfaWQiOjl9.U8W_2pUrttkV7k795L50yeH8UZFphqN69q1RxkJTuGs	2021-11-29 17:02:53.569446+00	2021-11-30 17:02:53+00	9	5accd937dab44e21a4d862fec330b232
94	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODI5MTc3OSwiaWF0IjoxNjM4MjA1Mzc5LCJqdGkiOiJiOTU0ODk3NjBlZWM0YzgwODYyMDBiYzU2YWVlNDJiMSIsInVzZXJfaWQiOjl9.3dhzKFiCDTpbmDeVyctDom46OOhfBNyorMxGDfvobsg	2021-11-29 17:02:59.022506+00	2021-11-30 17:02:59+00	9	b95489760eec4c8086200bc56aee42b1
95	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODI5MjQxMywiaWF0IjoxNjM4MjA2MDEzLCJqdGkiOiJlYTk1NzgwOGY1ZmI0MjY0YjU4MTNhZjhhOTAwYjRmZSIsInVzZXJfaWQiOjl9.GgpbU0qrxDEmpmm3PnDJwjCpjSzsExRqEvOm7ulMY6Y	2021-11-29 17:13:33.105618+00	2021-11-30 17:13:33+00	9	ea957808f5fb4264b5813af8a900b4fe
96	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODI5MjYwOSwiaWF0IjoxNjM4MjA2MjA5LCJqdGkiOiIwZDVmNjUwNjQwMjQ0MmU5YTcxZDA0ZDdhYWJiMmJlMCIsInVzZXJfaWQiOjExfQ.8YqHvlKO5rZ4hZMsSjoHjbRXDQe3jPfam0QwvgnPdZY	2021-11-29 17:16:49.671834+00	2021-11-30 17:16:49+00	11	0d5f6506402442e9a71d04d7aabb2be0
97	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODI5MjY3NCwiaWF0IjoxNjM4MjA2Mjc0LCJqdGkiOiIxYzY1ODU3N2Q5YmI0ZWY4OTgzOTlmMDg3YTY4NWFiZCIsInVzZXJfaWQiOjEyfQ.2uvkpkMO2slCMve8Q8OfB8CmshR1lBg1yFIV2VAA2oo	2021-11-29 17:17:54.360619+00	2021-11-30 17:17:54+00	12	1c658577d9bb4ef898399f087a685abd
98	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODI5NDIzNiwiaWF0IjoxNjM4MjA3ODM2LCJqdGkiOiJjZjc2MGQ3NjFjNjM0NjEzOTcxNmE0YTlhNGU2ZGNjMiIsInVzZXJfaWQiOjEyfQ.nXa09cHQrFV_jtw5frG894K5MyT6O2_Kd5qwpLhFoY0	2021-11-29 17:43:56.426894+00	2021-11-30 17:43:56+00	12	cf760d761c6346139716a4a9a4e6dcc2
99	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODMwMzE0NywiaWF0IjoxNjM4MjE2NzQ3LCJqdGkiOiJlYmFlODUxMGZmMGM0MDNmOWFlNDkxOTZlNjI1M2U2ZSIsInVzZXJfaWQiOjEzfQ.yfYXVwIQpdkv1TgyfyYISdABT8ARhOYq-35A1mhOCF4	2021-11-29 20:12:27.610984+00	2021-11-30 20:12:27+00	13	ebae8510ff0c403f9ae49196e6253e6e
100	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODM0Mjk0OSwiaWF0IjoxNjM4MjU2NTQ5LCJqdGkiOiI1ODE4MDc4NzJmODY0NjA0ODY5OTRhN2VhNmY4OWViZCIsInVzZXJfaWQiOjE0fQ.mkdc1geqNfAkk628CgC00N6W4Ocq7U8guVBpQEXSDag	2021-11-30 07:15:49.435375+00	2021-12-01 07:15:49+00	14	581807872f86460486994a7ea6f89ebd
101	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODM3NjkyMiwiaWF0IjoxNjM4MjkwNTIyLCJqdGkiOiIzMzQyNTc4YjQ4YTg0NmEyYTAyNDAwZTY4MzkzM2RlMyIsInVzZXJfaWQiOjE0fQ.u9lnwBzD0VThFqp2cgrotT7BYVF0H9Bw_e0PVJy-p_k	2021-11-30 16:42:02.908949+00	2021-12-01 16:42:02+00	14	3342578b48a846a2a02400e683933de3
102	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODM4NTg4NSwiaWF0IjoxNjM4Mjk5NDg1LCJqdGkiOiJhMWIyNTk2Y2E0ZDk0ZjdmOTIxM2MzMTJhZjVhMTk5ZCIsInVzZXJfaWQiOjE0fQ.yMhyfE_BzDAHkKFDL5jckMKM25JavB6gPgZy0P9mKDY	2021-11-30 19:11:25.520417+00	2021-12-01 19:11:25+00	14	a1b2596ca4d94f7f9213c312af5a199d
103	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQxMDg0OSwiaWF0IjoxNjM4MzI0NDQ5LCJqdGkiOiI1MTk1MjQyMWM2NDA0NTYzYWMzZmUyMjYzZjUyMjM3NCIsInVzZXJfaWQiOjE0fQ.GOF9xOy9SEKCNyJvOohWpVSj_OJhnax71U7S1xdbFfc	2021-12-01 02:07:29.812997+00	2021-12-02 02:07:29+00	14	51952421c6404563ac3fe2263f522374
104	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQxMDkyNiwiaWF0IjoxNjM4MzI0NTI2LCJqdGkiOiI1NjgwYjUxMTg4MGE0OWZjYWZkOGM2ODYwZjg1ZTlkMiIsInVzZXJfaWQiOjE0fQ.lQAjrVYvunyDg7LVmNWLjaDMfSxCiU5mwVNJA1zAR8c	2021-12-01 02:08:46.51614+00	2021-12-02 02:08:46+00	14	5680b511880a49fcafd8c6860f85e9d2
105	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQxMTEzMywiaWF0IjoxNjM4MzI0NzMzLCJqdGkiOiIyNzYwNGMyOTZjMTc0MmYxYjIyNzk3ZmI3YThhOGRiOSIsInVzZXJfaWQiOjE0fQ.0YhSEutBY6HLCLyA1EOVQCxXd2O_IVXBHMyGGBlGJjQ	2021-12-01 02:12:13.57926+00	2021-12-02 02:12:13+00	14	27604c296c1742f1b22797fb7a8a8db9
106	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQxMTI2NCwiaWF0IjoxNjM4MzI0ODY0LCJqdGkiOiI2YTk5ZDg5NzNkMWE0M2RkODA4YmIzMGM3YmRmYTc4NiIsInVzZXJfaWQiOjE0fQ.ARy7NFy-r9RkKBWgEZDbJgV4ObunXrn-i7uv6hzqsOA	2021-12-01 02:14:24.934172+00	2021-12-02 02:14:24+00	14	6a99d8973d1a43dd808bb30c7bdfa786
107	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQxMTgyOSwiaWF0IjoxNjM4MzI1NDI5LCJqdGkiOiJmODQzODQ3ZjFmNDE0NjQxOGMxODNhNmM5Nzg0YzU2NCIsInVzZXJfaWQiOjE0fQ.JZ1-rRICRyXMP8e7aPAsxRKWixDhcx3teO1bbAtwVuM	2021-12-01 02:23:49.687139+00	2021-12-02 02:23:49+00	14	f843847f1f4146418c183a6c9784c564
108	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQxMjAzMiwiaWF0IjoxNjM4MzI1NjMyLCJqdGkiOiIxMGM5N2Q4MjI3MTU0ZWM3YmIxZjVhN2RkM2VlNzI0NiIsInVzZXJfaWQiOjE0fQ.wT0BJ_tk1ujp6EwGXv51PwiEvWqKWpCdjEXD3Ppakj8	2021-12-01 02:27:12.171278+00	2021-12-02 02:27:12+00	14	10c97d8227154ec7bb1f5a7dd3ee7246
109	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQxMjA3OSwiaWF0IjoxNjM4MzI1Njc5LCJqdGkiOiJlNjFkYTZjMzIwYTk0MTk0OWQwZGI3ZTY4MGNmZjQzNCIsInVzZXJfaWQiOjE0fQ.b7TW3TdMEjZExlFQh4_xmLz9WsJ6-YAMRtC5PNQCmKk	2021-12-01 02:27:59.325892+00	2021-12-02 02:27:59+00	14	e61da6c320a941949d0db7e680cff434
110	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQxMjIyNCwiaWF0IjoxNjM4MzI1ODI0LCJqdGkiOiIwOWJlY2FmNWU4YTE0ZmFlYjI4ZGQzZTIzMGYxNTdmNyIsInVzZXJfaWQiOjE0fQ.0MohzvUWzXyXNIF3-WFN4u1oZBl9A1Gg1oJ0n4kov6k	2021-12-01 02:30:24.336338+00	2021-12-02 02:30:24+00	14	09becaf5e8a14faeb28dd3e230f157f7
111	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQxOTM5NSwiaWF0IjoxNjM4MzMyOTk1LCJqdGkiOiIyNmYzYmI5ODIxOTg0Mjg1YTdkMjMyOTc4NDE4NTcyZSIsInVzZXJfaWQiOjl9.H-oQq1-GytAypcsdobIxsL8vgF0nYFnxriK8QmOPW60	2021-12-01 04:29:55.248053+00	2021-12-02 04:29:55+00	9	26f3bb9821984285a7d232978418572e
112	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQxOTgyOSwiaWF0IjoxNjM4MzMzNDI5LCJqdGkiOiJhNzhiZWU3MWQ0MDE0OTM2YjEwZjM2ZjRlMmUyMzEyNyIsInVzZXJfaWQiOjE0fQ.m33VaFLruthGsLOeKdS4Gcn4Apvl1bsNweTf-rKpAyA	2021-12-01 04:37:09.634424+00	2021-12-02 04:37:09+00	14	a78bee71d4014936b10f36f4e2e23127
113	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQxOTg5NSwiaWF0IjoxNjM4MzMzNDk1LCJqdGkiOiIzY2EwZmFmYjBkMDE0Mzk0ODczZmU5YmQxNGViNjM3ZCIsInVzZXJfaWQiOjE0fQ.oGDRDloQpD_N56tzyN9F3xlXdvfL6G78v_LT87nIvtU	2021-12-01 04:38:15.267928+00	2021-12-02 04:38:15+00	14	3ca0fafb0d014394873fe9bd14eb637d
114	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQ3MjI4NCwiaWF0IjoxNjM4Mzg1ODg0LCJqdGkiOiJiNWJlMjNkMDRjNGI0NzRlOGI2ZmQ0OWU1NWQwNTQwZiIsInVzZXJfaWQiOjE1fQ.eVOmxka7HaI9HamTw6NxmAy1C0EnJYJeOnUNe-jPDAg	2021-12-01 19:11:24.070752+00	2021-12-02 19:11:24+00	15	b5be23d04c4b474e8b6fd49e55d0540f
115	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQ3MjQwNiwiaWF0IjoxNjM4Mzg2MDA2LCJqdGkiOiIxOTEyZGQyOGMwOTc0YmZkODUzODIzZjY0MTNkZWZmOSIsInVzZXJfaWQiOjE1fQ.WcDyNOCiZwNofRbd40dxymKkPYOaUYwcZPt7jHTNW2c	2021-12-01 19:13:26.016021+00	2021-12-02 19:13:26+00	15	1912dd28c0974bfd853823f6413deff9
116	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQ3MjQxNCwiaWF0IjoxNjM4Mzg2MDE0LCJqdGkiOiI4YjUwYzY0ZWRjMGY0MDJlODY4MTUyOTBiOGMzMmM4OSIsInVzZXJfaWQiOjE1fQ.FbN7UaIqpvxr1RUSCCLJsjJUGZUItRiXvuYMCIutCEY	2021-12-01 19:13:34.311422+00	2021-12-02 19:13:34+00	15	8b50c64edc0f402e86815290b8c32c89
117	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQ4MjI3NCwiaWF0IjoxNjM4Mzk1ODc0LCJqdGkiOiJlMGRlYTRmNjJiNmY0YWIwYTFjNDQ2NWRjZjNiMTdkMiIsInVzZXJfaWQiOjE1fQ.frEKi_h46E8UgCJ___GIf9ffITO7KNyiB4sLGT2JhUs	2021-12-01 21:57:54.639986+00	2021-12-02 21:57:54+00	15	e0dea4f62b6f4ab0a1c4465dcf3b17d2
118	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQ4NDM1MSwiaWF0IjoxNjM4Mzk3OTUxLCJqdGkiOiJmZjI3NTY2ZTk2MjA0MjljYmE1OTE3MjJmYmFlNmQzYSIsInVzZXJfaWQiOjE2fQ.FxDDWMZRDwhYuuU9NPT7fHq4dqEFLnqRTtCqyPS6b8k	2021-12-01 22:32:31.925658+00	2021-12-02 22:32:31+00	16	ff27566e9620429cba591722fbae6d3a
119	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQ4NjkxMSwiaWF0IjoxNjM4NDAwNTExLCJqdGkiOiI2MjhlZmYwYjA0MGY0MThjOGVjNjhmYzQ1NGM0ZGViOCIsInVzZXJfaWQiOjE1fQ.Wy0cQJhGyMe88FH8mSIBOLdFvU7LK-NV6ZBul4h6NH0	2021-12-01 23:15:11.478246+00	2021-12-02 23:15:11+00	15	628eff0b040f418c8ec68fc454c4deb8
120	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQ4NjkxOSwiaWF0IjoxNjM4NDAwNTE5LCJqdGkiOiJjMTA3MzE3MTRkMTQ0NGIxOWQ4ODY5NjdlYjJlMDQ4OSIsInVzZXJfaWQiOjE1fQ.d3ivRIpcmVVr2WNhB6bZTm2HPHhfYRl53jwHEcKrYrI	2021-12-01 23:15:19.623092+00	2021-12-02 23:15:19+00	15	c10731714d1444b19d886967eb2e0489
121	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQ4NjkyNiwiaWF0IjoxNjM4NDAwNTI2LCJqdGkiOiI2ODhlZTE2YTJkN2E0NzZjODlmOGMzYWMzMzg4NWE3NCIsInVzZXJfaWQiOjE0fQ.BdNGRLzf_PPZJeJvDo5U0ldlKWvsl7g00aNvb5lvbyo	2021-12-01 23:15:26.714281+00	2021-12-02 23:15:26+00	14	688ee16a2d7a476c89f8c3ac33885a74
122	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODQ4ODY2OCwiaWF0IjoxNjM4NDAyMjY4LCJqdGkiOiI5Mjc0Y2QyZTJhNzI0ZTI3YjMxZjAxNThiZmIwNTY1YiIsInVzZXJfaWQiOjE0fQ.8hRklJRepduwyERlf1L1ux5BqHfNXoXmHvDlAISGDKU	2021-12-01 23:44:28.499185+00	2021-12-02 23:44:28+00	14	9274cd2e2a724e27b31f0158bfb0565b
123	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODUwMDgyNiwiaWF0IjoxNjM4NDE0NDI2LCJqdGkiOiJjNjM5Y2UzODliMjI0NGJlODM0ZDEwZjA2YzIzMGMwYiIsInVzZXJfaWQiOjE0fQ.VnDFkSkGSqhGIYSq7U0EfR4SJjI9pfgIfvvRut5_c3M	2021-12-02 03:07:06.177757+00	2021-12-03 03:07:06+00	14	c639ce389b2244be834d10f06c230c0b
124	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODUwNDU2OCwiaWF0IjoxNjM4NDE4MTY4LCJqdGkiOiIyZDhhNDJkNTg1MTk0MzViOWU3NWVhODY3MmIxNDQ0OSIsInVzZXJfaWQiOjE0fQ.kqR_UF9AV-cGXbTskdWSeFkdZjzO6TR6Gai1NhsPN1s	2021-12-02 04:09:28.993029+00	2021-12-03 04:09:28+00	14	2d8a42d58519435b9e75ea8672b14449
125	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODUwOTI3MSwiaWF0IjoxNjM4NDIyODcxLCJqdGkiOiI2OGQ0MGMzNmUyN2Y0ZDgxYmMwMjA0YmU4ZWEzM2U3NSIsInVzZXJfaWQiOjE0fQ.VruOUTMiqjxTNS2n4EIcuFlaudQuFAK1iekUhuAGnBE	2021-12-02 05:27:51.856726+00	2021-12-03 05:27:51+00	14	68d40c36e27f4d81bc0204be8ea33e75
126	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODUwOTYzMCwiaWF0IjoxNjM4NDIzMjMwLCJqdGkiOiIyYTE3MTBiMDg4ZDU0ODhlYjY2NjlkNTU4M2Y0MjRmNSIsInVzZXJfaWQiOjE0fQ.DkQVUgdoQ8eTZStyrymn_IcEzDxomdZttybccd0dZYY	2021-12-02 05:33:50.530282+00	2021-12-03 05:33:50+00	14	2a1710b088d5488eb6669d5583f424f5
127	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODUxMzA5MywiaWF0IjoxNjM4NDI2NjkzLCJqdGkiOiJhMjU2YTY1NmUyZjQ0Zjg2OWFiNjNhM2YwZWNiZjI4OSIsInVzZXJfaWQiOjE0fQ.tnRaD8QG8zIqBv4mENByA9mPj612Xu3YF1ItKPxYHRc	2021-12-02 06:31:33.951478+00	2021-12-03 06:31:33+00	14	a256a656e2f44f869ab63a3f0ecbf289
128	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1MTg3OSwiaWF0IjoxNjM4NDY1NDc5LCJqdGkiOiIzNDI4OTNkYTEwOTE0MTU4OWRmMzliYzMxZDA0NGEzMCIsInVzZXJfaWQiOjE3fQ.1ku8dw6DZZ7irXo-SzqhbH7oVvNhTlWU2OWa3-C_yTM	2021-12-02 17:17:59.84763+00	2021-12-03 17:17:59+00	17	342893da109141589df39bc31d044a30
129	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1MjE4MCwiaWF0IjoxNjM4NDY1NzgwLCJqdGkiOiI4YmJmMTU5MWFmNjA0NDczYWUwNWVkYmJlZGExMDIwZCIsInVzZXJfaWQiOjE0fQ.FeGU2MG3qUOh8Old0-r_g2B37ltRChUzITGI4kUZnQU	2021-12-02 17:23:00.073926+00	2021-12-03 17:23:00+00	14	8bbf1591af604473ae05edbbeda1020d
130	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1MjYzOCwiaWF0IjoxNjM4NDY2MjM4LCJqdGkiOiI4OTJiYTYzZjMzMWE0YTljODM2NzhkNzJkY2EyNzlmMSIsInVzZXJfaWQiOjE3fQ.ZD9kcQIOMkzqOoOetpte-3XixpT1MvOPA6KQu-3HLqk	2021-12-02 17:30:38.095987+00	2021-12-03 17:30:38+00	17	892ba63f331a4a9c83678d72dca279f1
131	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1MjY5MSwiaWF0IjoxNjM4NDY2MjkxLCJqdGkiOiI1ODQ2MjNhMWMwZjI0ZDA2YTljMDBiNDdiYjcyNWU1OSIsInVzZXJfaWQiOjE3fQ.LGEizG3WhwumZH7YhELo_p8s_DgRFh7qnB_UdlJEAqs	2021-12-02 17:31:31.9511+00	2021-12-03 17:31:31+00	17	584623a1c0f24d06a9c00b47bb725e59
132	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1MzE5NiwiaWF0IjoxNjM4NDY2Nzk2LCJqdGkiOiJkNjczZjkxODE3YTg0NDQxOWVlMTE3NTAwOWVkMGM1NiIsInVzZXJfaWQiOjE3fQ.xIcJ1-_ogUJjFTQfL57Z6YtMYLMyxiKZMhciT3KmMl4	2021-12-02 17:39:56.75776+00	2021-12-03 17:39:56+00	17	d673f91817a844419ee1175009ed0c56
133	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1MzIzMSwiaWF0IjoxNjM4NDY2ODMxLCJqdGkiOiIxNjVkNDU1MWUwMTY0YTdlYTQ5ZGQ2MTRlMDgwNmZhNSIsInVzZXJfaWQiOjE3fQ.ZLMlOaIO1vfB6ct7YeGSGXcinwUwmZRFDVYKfSR6AZk	2021-12-02 17:40:31.435914+00	2021-12-03 17:40:31+00	17	165d4551e0164a7ea49dd614e0806fa5
134	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1MzI2NCwiaWF0IjoxNjM4NDY2ODY0LCJqdGkiOiIzZDZhMWI5ZTg3M2Y0MjU4OTAzN2Y4OGFmMDAzN2JhOSIsInVzZXJfaWQiOjE3fQ.jLWc_wXLxP6GfUUYNtJcBkhN_Ybtt7jx4XYwVD1fmfA	2021-12-02 17:41:04.419165+00	2021-12-03 17:41:04+00	17	3d6a1b9e873f42589037f88af0037ba9
135	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1NDgyMiwiaWF0IjoxNjM4NDY4NDIyLCJqdGkiOiIzODg5NTIyOWNiMjI0NzY5OTBiMzBhZjI5YTk3NzkxMSIsInVzZXJfaWQiOjE3fQ.pH9Y8I8XYFWUnjgqlH-nhGAyzK92QrL0xhJgx0wH7YM	2021-12-02 18:07:02.264803+00	2021-12-03 18:07:02+00	17	38895229cb22476990b30af29a977911
136	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1NTQzNywiaWF0IjoxNjM4NDY5MDM3LCJqdGkiOiJlMjQ3N2VkNjE1OTE0NzY0OTFmYmIxYWQwOGQ3ODg1YiIsInVzZXJfaWQiOjE3fQ.XULVJdksIugBF8hTrM-4c-Wl7xx9V7d0GhLOj672yDI	2021-12-02 18:17:17.014634+00	2021-12-03 18:17:17+00	17	e2477ed61591476491fbb1ad08d7885b
137	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1NTU0MywiaWF0IjoxNjM4NDY5MTQzLCJqdGkiOiI3NmIwMDA3ZWFkZjk0MzU0OTgzZjYwYjI0YTA2OWE5YSIsInVzZXJfaWQiOjE3fQ.LDiAoDyUAbGSH9JibxE0E1LlQOg9Q5QcoRdZkAZs29Y	2021-12-02 18:19:03.827139+00	2021-12-03 18:19:03+00	17	76b0007eadf94354983f60b24a069a9a
138	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1NTcyMSwiaWF0IjoxNjM4NDY5MzIxLCJqdGkiOiJiNGFjMTMwMjcxNTU0NTlmOTNkNmFjYzY4MTRjM2JiYyIsInVzZXJfaWQiOjE3fQ.LAV9DrbkrZX2u_slDv4cui1e16n1lT1DXSBNnTqvD60	2021-12-02 18:22:01.894902+00	2021-12-03 18:22:01+00	17	b4ac13027155459f93d6acc6814c3bbc
139	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1NTc3NSwiaWF0IjoxNjM4NDY5Mzc1LCJqdGkiOiI1NDJhOGY5MzMyY2I0MmJjYjRkZTE2YmVlYTFjNzBjNCIsInVzZXJfaWQiOjE3fQ.Yry-7b-ryx9n_8M6N5jcGLYHsNDisY8VNL1I9lfn4Kg	2021-12-02 18:22:55.974497+00	2021-12-03 18:22:55+00	17	542a8f9332cb42bcb4de16beea1c70c4
140	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1NTk4MiwiaWF0IjoxNjM4NDY5NTgyLCJqdGkiOiI4MDJjYzEwNjY2MmI0Y2QzODExOWRhODc2ZDlkMTgzMSIsInVzZXJfaWQiOjE3fQ.FZ5wdLnCiFYPwGwkv12wTGoCgyO7bwwJrHz1q6HfCYg	2021-12-02 18:26:22.013805+00	2021-12-03 18:26:22+00	17	802cc106662b4cd38119da876d9d1831
141	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1NjIxNiwiaWF0IjoxNjM4NDY5ODE2LCJqdGkiOiJiOTk5MzViNmM4NjE0MDMwYTlkZTllYzc3ZjI1N2E2OSIsInVzZXJfaWQiOjE3fQ.bsB0IZxnKqOyb02uLZcAR16L6pG9p-jerByduVHOhtY	2021-12-02 18:30:16.705049+00	2021-12-03 18:30:16+00	17	b99935b6c8614030a9de9ec77f257a69
142	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1NjQ2MiwiaWF0IjoxNjM4NDcwMDYyLCJqdGkiOiJlMzg4MTI5NDVkZmQ0NmZmYWZiMmZlOGE1MGQ4ZGQ5MiIsInVzZXJfaWQiOjE3fQ.F5qpyOJQ4qI3R8PcxIe4ciFWhavDfzgyQoKV-1xegWI	2021-12-02 18:34:22.170342+00	2021-12-03 18:34:22+00	17	e38812945dfd46ffafb2fe8a50d8dd92
143	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1NjQ5MywiaWF0IjoxNjM4NDcwMDkzLCJqdGkiOiJkODNhMDA4YWM2ZmM0Mjc1OWJmMDg4Y2QwNzAyNGVmNiIsInVzZXJfaWQiOjE3fQ.fUtlxCwpdSpPnLzxgPysj0WWztnSCw4uZU5WfU59DKE	2021-12-02 18:34:53.49473+00	2021-12-03 18:34:53+00	17	d83a008ac6fc42759bf088cd07024ef6
144	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1Njc0OCwiaWF0IjoxNjM4NDcwMzQ4LCJqdGkiOiJkZjM1NDY1ODkzYjA0MTljYmM4ZmUyYTc2OGJiYzYyNiIsInVzZXJfaWQiOjE3fQ.cBeGPac1JsCOkmpd7IhFyVpykBqGUZHbWuG05MXMn0o	2021-12-02 18:39:08.928076+00	2021-12-03 18:39:08+00	17	df35465893b0419cbc8fe2a768bbc626
145	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODU1Njk2MCwiaWF0IjoxNjM4NDcwNTYwLCJqdGkiOiIzNTkzNmRmZGM1MTQ0MjQ5YmQ5MTc2ZTM3NDRhY2NhMSIsInVzZXJfaWQiOjE3fQ.Yf4lcxA4lahGkjoTK9qdyogy0FEoKOXfuUQJ3Ct_aCc	2021-12-02 18:42:40.736812+00	2021-12-03 18:42:40+00	17	35936dfdc5144249bd9176e3744acca1
146	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODYzNjc5OSwiaWF0IjoxNjM4NTUwMzk5LCJqdGkiOiI2Yjg5MTI0MmUyNDI0MWNhOGQ3MWNlM2FlZDFiZDFhNCIsInVzZXJfaWQiOjE3fQ._FfOsnZNWBQpfnqI2Pn9R4w6O52z5E3Fyzff7Y-z-aY	2021-12-03 16:53:19.946192+00	2021-12-04 16:53:19+00	17	6b891242e24241ca8d71ce3aed1bd1a4
147	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODYzNzQzNywiaWF0IjoxNjM4NTUxMDM3LCJqdGkiOiJjMmFjNThkYWZmZTc0YTI2YjY1NTI5ZDQzN2FkMDE4MCIsInVzZXJfaWQiOjE3fQ.GHjPo9FKmUa7j8SgPgkumAf6LpDj6Q3ue7uUKUbZJ9E	2021-12-03 17:03:57.174742+00	2021-12-04 17:03:57+00	17	c2ac58daffe74a26b65529d437ad0180
148	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODYzNzgzOCwiaWF0IjoxNjM4NTUxNDM4LCJqdGkiOiJhY2VkNTlkZjQ3MjQ0YjJhYjg3ZWVkNjg4YzRkYjIwNCIsInVzZXJfaWQiOjE0fQ.oo7QwqvJZskj2OMu5-FWcOecrVUmZugAhVhRlm_2mrk	2021-12-03 17:10:38.1318+00	2021-12-04 17:10:38+00	14	aced59df47244b2ab87eed688c4db204
149	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODYzODkxMywiaWF0IjoxNjM4NTUyNTEzLCJqdGkiOiI0NjlmZjE3MDVlOWI0YjZhOTk1ODVkMDlhZDg0YjQ2YSIsInVzZXJfaWQiOjE3fQ.Y85HeXq-6HoJpEoMhIwhT4VFnTwL1AJAKFhySFMx-k8	2021-12-03 17:28:33.130942+00	2021-12-04 17:28:33+00	17	469ff1705e9b4b6a99585d09ad84b46a
150	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0MDczMiwiaWF0IjoxNjM4NTU0MzMyLCJqdGkiOiI2ZmMyZDZjMGFlMGE0M2MxOTE3MGVkOWM2MmZjYjYxYiIsInVzZXJfaWQiOjE3fQ.Q2CU1htsyKYeKmem2seblK31TZ6-tKlefzo3NajOb34	2021-12-03 17:58:52.813813+00	2021-12-04 17:58:52+00	17	6fc2d6c0ae0a43c19170ed9c62fcb61b
151	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0MDc2NSwiaWF0IjoxNjM4NTU0MzY1LCJqdGkiOiJkNjJjMTUyY2FmZTc0MWZkYjcyZTc3NTViMTFlYjNkYiIsInVzZXJfaWQiOjE3fQ.SSRFI8yYbFZGMe8XJ-4LJ4dq9_La8iDkQI77k6uNxls	2021-12-03 17:59:25.180144+00	2021-12-04 17:59:25+00	17	d62c152cafe741fdb72e7755b11eb3db
152	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0Mjk4NywiaWF0IjoxNjM4NTU2NTg3LCJqdGkiOiI3ZTcxOTc4MWJiNDM0MmZmYTdkMzJjMDg2NDM4OGZhOCIsInVzZXJfaWQiOjE3fQ.1XRUDUtfRBu8EHkNu_Ikf6ztTn1SmN3HIHi2AD0RHuI	2021-12-03 18:36:27.919849+00	2021-12-04 18:36:27+00	17	7e719781bb4342ffa7d32c0864388fa8
153	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0MzY5MiwiaWF0IjoxNjM4NTU3MjkyLCJqdGkiOiI2MzQ4YmEwM2Q0ZGU0NzNiYTE3MGIxY2UxOWZiMDlkNyIsInVzZXJfaWQiOjE3fQ.qU5hWHEKL45vF3QDVWlC1yk9b8yKI0I3g6fP42hR7Dw	2021-12-03 18:48:12.015558+00	2021-12-04 18:48:12+00	17	6348ba03d4de473ba170b1ce19fb09d7
154	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NDIwOCwiaWF0IjoxNjM4NTU3ODA4LCJqdGkiOiIyYmVlNDc0MTU0MzE0MzMxYmE4ODljMjU1NjI5MjNlMyIsInVzZXJfaWQiOjE3fQ.mt4bYVPROHf_0a5QCoMdqHOP-WwVJQA1lcrdMMC8wCA	2021-12-03 18:56:48.169248+00	2021-12-04 18:56:48+00	17	2bee474154314331ba889c25562923e3
155	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NDQ4MSwiaWF0IjoxNjM4NTU4MDgxLCJqdGkiOiJhMTBmYTM5YTRkMDg0Y2E1YjkzNzUxNjg0ODljMTQ3NyIsInVzZXJfaWQiOjE3fQ.eTXQ0pKHYX0O-O6zzY_b5-hdk3AV2dlj3MSbYKCqs5I	2021-12-03 19:01:21.395181+00	2021-12-04 19:01:21+00	17	a10fa39a4d084ca5b9375168489c1477
156	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NDczNCwiaWF0IjoxNjM4NTU4MzM0LCJqdGkiOiJiMDI4ZDcxYWUzMzM0YjQ3YTFhZTdiMWQxYTg0NjljNSIsInVzZXJfaWQiOjE3fQ.WtD7TN77Vz5ElJOFlbLbkeYjkgPTTrRSf2Gi6eGCXiY	2021-12-03 19:05:34.220567+00	2021-12-04 19:05:34+00	17	b028d71ae3334b47a1ae7b1d1a8469c5
157	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NDg1NywiaWF0IjoxNjM4NTU4NDU3LCJqdGkiOiJmYmJkMGNlNDVhNmE0YTlkODdiZWY3OGJjOTllM2FmNiIsInVzZXJfaWQiOjE3fQ.SREyBRsEDC2esAXXbfG3fvf_bM984L-nBkjyOmphQUA	2021-12-03 19:07:37.5821+00	2021-12-04 19:07:37+00	17	fbbd0ce45a6a4a9d87bef78bc99e3af6
158	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NDk2OCwiaWF0IjoxNjM4NTU4NTY4LCJqdGkiOiI5NWE3ZWFhOTkwZDY0ZWQ5ODVjYjM5MGM2YjI2NzFmMiIsInVzZXJfaWQiOjE3fQ.QHrw2NrT3xQ2fM_sOusSqkWVhpcD-U-7MXGzwMxURtg	2021-12-03 19:09:28.671558+00	2021-12-04 19:09:28+00	17	95a7eaa990d64ed985cb390c6b2671f2
159	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NTEzNCwiaWF0IjoxNjM4NTU4NzM0LCJqdGkiOiI5ZDZjY2FjNjQ3NjA0ZTIxYTgwY2E2YzliZWFkYmVlNyIsInVzZXJfaWQiOjE3fQ.-h6FVUnuVgIyh-FZCaGStXRwrryjues9z3xU6Mb2mPA	2021-12-03 19:12:14.53736+00	2021-12-04 19:12:14+00	17	9d6ccac647604e21a80ca6c9beadbee7
160	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NTI2NSwiaWF0IjoxNjM4NTU4ODY1LCJqdGkiOiI4YjdiMTYzYjQ0NjE0ZTNhYmUxMzIxMzA1NzI4ZTJkNCIsInVzZXJfaWQiOjE3fQ.Hp5BaOfk7ojoC9qITNNka5J8K6L0e3XVkBsmcQ01wRs	2021-12-03 19:14:25.458182+00	2021-12-04 19:14:25+00	17	8b7b163b44614e3abe1321305728e2d4
161	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NTM0MCwiaWF0IjoxNjM4NTU4OTQwLCJqdGkiOiI2ZDYwMDg1ODljNjM0YTY2YjhhNWU3YTBjMDA1ZDJhZiIsInVzZXJfaWQiOjE3fQ.tTOjzISeC3H0BZFpVkCZ_48gyStAoI2Z4X5nU3jjR-U	2021-12-03 19:15:40.216557+00	2021-12-04 19:15:40+00	17	6d6008589c634a66b8a5e7a0c005d2af
162	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NTYzMywiaWF0IjoxNjM4NTU5MjMzLCJqdGkiOiI2MGVlZTIzODNhNWI0MWMyYTg5NWUyMDk1NGY5OTc2NyIsInVzZXJfaWQiOjE3fQ.Cgf0rGLndixKVU7ux_BOMDJ_9FycCBKKgKCXz_kc7JQ	2021-12-03 19:20:33.355482+00	2021-12-04 19:20:33+00	17	60eee2383a5b41c2a895e20954f99767
163	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NTY5MSwiaWF0IjoxNjM4NTU5MjkxLCJqdGkiOiI4NmQ3ZjVhZGM4ZWI0MzY2YjFmNzM2Mjc1ZDA3MDE5NyIsInVzZXJfaWQiOjE3fQ.qi313cKqp9dIvTd85Fz-jiW-pJpGeBLpfnluNG-9Nmg	2021-12-03 19:21:31.298668+00	2021-12-04 19:21:31+00	17	86d7f5adc8eb4366b1f736275d070197
164	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NTkxOCwiaWF0IjoxNjM4NTU5NTE4LCJqdGkiOiI4MjYyYmRkMjU2YzA0NjJiOWZkZmI2YmNmMDBhZTUxZCIsInVzZXJfaWQiOjE3fQ.GE7k2OCer4VmyjWs_JyEEt7dyG2kerEJTrXMxGJ84ts	2021-12-03 19:25:18.528538+00	2021-12-04 19:25:18+00	17	8262bdd256c0462b9fdfb6bcf00ae51d
165	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NjE4MywiaWF0IjoxNjM4NTU5NzgzLCJqdGkiOiI5YmU3NDAwNTg1Njk0MmM1ODBjNjE5YjJjNmMxNzQxZCIsInVzZXJfaWQiOjE3fQ.tImwef0722mdXnzgy_H8na-dqiGcoxSPSOE2QCsL22o	2021-12-03 19:29:43.848441+00	2021-12-04 19:29:43+00	17	9be74005856942c580c619b2c6c1741d
166	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NjI2MCwiaWF0IjoxNjM4NTU5ODYwLCJqdGkiOiJjNmM1NGU0NzZjMWI0MzUxYTc5NjQ5Yjc0MDA2NGUxZiIsInVzZXJfaWQiOjE3fQ.QQWwZ8zmr8qaWkeLLKBkiTraHcUTMiV8-oqgwTCETOQ	2021-12-03 19:31:00.833255+00	2021-12-04 19:31:00+00	17	c6c54e476c1b4351a79649b740064e1f
167	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NjMzMywiaWF0IjoxNjM4NTU5OTMzLCJqdGkiOiJmZDNlMDQ4Mjc1YzM0OTc2YjVkZjI5MjE2MjMwY2Q5NiIsInVzZXJfaWQiOjE3fQ.TlHBVpv0uYPOoT_6ywbe0amDCHEDArV8aXXaA9d5NIE	2021-12-03 19:32:13.764298+00	2021-12-04 19:32:13+00	17	fd3e048275c34976b5df29216230cd96
168	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NjQzMywiaWF0IjoxNjM4NTYwMDMzLCJqdGkiOiIzZmY4MDAwYzE2MDk0NmM3YjMwNzkzYmE0NGM2NTNkOSIsInVzZXJfaWQiOjE3fQ.WAYOFk0XcVjlX3qkq_TarEVup-40VkYdaeXp8xtksyQ	2021-12-03 19:33:53.442906+00	2021-12-04 19:33:53+00	17	3ff8000c160946c7b30793ba44c653d9
169	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NjQ5OSwiaWF0IjoxNjM4NTYwMDk5LCJqdGkiOiIwODA1ZTE2YWZlMzQ0ZDk0OTY1YzJlYTkzOWMwODQ2MCIsInVzZXJfaWQiOjE3fQ.facFTa4GjoVIf4FkjEiDwPHgUDdThDI95YSULteey20	2021-12-03 19:34:59.345882+00	2021-12-04 19:34:59+00	17	0805e16afe344d94965c2ea939c08460
170	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NjU3MSwiaWF0IjoxNjM4NTYwMTcxLCJqdGkiOiJhNTAwYzVlODBmNDY0NGYzODkwNmU3YjcwYzI5ZDIxMCIsInVzZXJfaWQiOjE3fQ.WrBRQCiYKq8pU44zHLPdOjDxOQlc2uXVyyrbg2U2r5k	2021-12-03 19:36:11.48132+00	2021-12-04 19:36:11+00	17	a500c5e80f4644f38906e7b70c29d210
171	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NjYyNiwiaWF0IjoxNjM4NTYwMjI2LCJqdGkiOiI3N2Q4ZTY2MDI5NzQ0OWVmOWM4NGJmNjczYzE0NWNmOCIsInVzZXJfaWQiOjE3fQ.5e35tllvtOcZnlbQ4akampY7dXTs5n1ICRW1LA5EKis	2021-12-03 19:37:06.372744+00	2021-12-04 19:37:06+00	17	77d8e660297449ef9c84bf673c145cf8
172	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NjcyOCwiaWF0IjoxNjM4NTYwMzI4LCJqdGkiOiJhNTM0MDYyMWY3YTI0ZTA5YmEyNDMzYWFmYzNlYjgzMiIsInVzZXJfaWQiOjE3fQ.NXVOt8nuLMy3hKZFwiTB6jGVkAB1axsjtw0H_pXQ0Nk	2021-12-03 19:38:48.968521+00	2021-12-04 19:38:48+00	17	a5340621f7a24e09ba2433aafc3eb832
173	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0Njg3NywiaWF0IjoxNjM4NTYwNDc3LCJqdGkiOiJmMTAyNGJhNWRkZWY0NmI5ODg0MzM0YTZhNmQzYjQ1YyIsInVzZXJfaWQiOjE3fQ.Q7keNumPppTXuvRA7AhBWnaF120uUguNHxwmnouNlKw	2021-12-03 19:41:17.211893+00	2021-12-04 19:41:17+00	17	f1024ba5ddef46b9884334a6a6d3b45c
174	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NzEwNSwiaWF0IjoxNjM4NTYwNzA1LCJqdGkiOiJjZjUwNDVjYWJlZGE0MzliOTYyOThjY2NlOGNlNWZmMiIsInVzZXJfaWQiOjE3fQ.9irfhWryXyISUZAhb8RwsJNdTwxK1vOQermx6ntYmwk	2021-12-03 19:45:05.431138+00	2021-12-04 19:45:05+00	17	cf5045cabeda439b96298ccce8ce5ff2
175	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NzE3NSwiaWF0IjoxNjM4NTYwNzc1LCJqdGkiOiIxZjVhNWY2NjM3MjE0YjIwOTU5NWQzMzBkMzQxNWVhZSIsInVzZXJfaWQiOjE3fQ.Fw1-AuCEXMBurHao_F7nvf1T2Ek36WNYFiU4_m5-Av0	2021-12-03 19:46:15.646985+00	2021-12-04 19:46:15+00	17	1f5a5f6637214b209595d330d3415eae
176	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NzM0MiwiaWF0IjoxNjM4NTYwOTQyLCJqdGkiOiI3ZTFjYjcyOWY3ZmU0NDAzYTdlZGIyYzNiMzdiMjgxYSIsInVzZXJfaWQiOjE3fQ.AA_hvBRyU4dOflizIDXiChLYG-u5jT3QxdaFlm6nQOM	2021-12-03 19:49:02.595862+00	2021-12-04 19:49:02+00	17	7e1cb729f7fe4403a7edb2c3b37b281a
177	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NzU3MCwiaWF0IjoxNjM4NTYxMTcwLCJqdGkiOiI5ZWMxNWEyYjU5Mzk0ZGZmYTQ0MjRkZmFiYjllOWVlOCIsInVzZXJfaWQiOjE3fQ.SwB4KRYkdTB8lzuXmzcGa1xIzfUWo5C3jQZHVwJ59Io	2021-12-03 19:52:50.773709+00	2021-12-04 19:52:50+00	17	9ec15a2b59394dffa4424dfabb9e9ee8
178	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NzY0MywiaWF0IjoxNjM4NTYxMjQzLCJqdGkiOiJiN2NhNzJiMGYyYmY0NjQ2YmRjOWQzMDM4OWY4ODMxZiIsInVzZXJfaWQiOjE3fQ.wdlFs1RQaYtzEfESEZJ_8wste4pvjCAUWizHz0TCbZA	2021-12-03 19:54:03.184141+00	2021-12-04 19:54:03+00	17	b7ca72b0f2bf4646bdc9d30389f8831f
179	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0NzY3MSwiaWF0IjoxNjM4NTYxMjcxLCJqdGkiOiIxZWI2MmVhMzNjYTY0NzM4YWY1MWQ1M2NkMTBjZmQyNiIsInVzZXJfaWQiOjE3fQ.PL8CcCMrx21QI3N2KOKM4YKiwhCiL1YHzunsFQT3ky8	2021-12-03 19:54:31.36387+00	2021-12-04 19:54:31+00	17	1eb62ea33ca64738af51d53cd10cfd26
180	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0Nzc5NCwiaWF0IjoxNjM4NTYxMzk0LCJqdGkiOiJhNTBmZWIwYzQyNzE0NzNiOTE2MWVhNjMyMjY0ODJjZiIsInVzZXJfaWQiOjE3fQ.AZosg6lOTaxso4Va5jfR7KznXlMOK9rF4Bmvz9OqB5A	2021-12-03 19:56:34.568141+00	2021-12-04 19:56:34+00	17	a50feb0c4271473b9161ea63226482cf
181	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0Nzg3MCwiaWF0IjoxNjM4NTYxNDcwLCJqdGkiOiIxMTAxYmMxNDUwZmY0MmMzOTQ3YTM1MGRiOTFiZDA1NSIsInVzZXJfaWQiOjE3fQ.XLfKC69e2MDCeKAjAU46Km__m5fnMuI2pUbOkRitEhw	2021-12-03 19:57:50.358681+00	2021-12-04 19:57:50+00	17	1101bc1450ff42c3947a350db91bd055
182	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0Nzk4OSwiaWF0IjoxNjM4NTYxNTg5LCJqdGkiOiIwMjdmZDg4NzFhM2E0MzRhODkwYjRlMmM4YWMxZjAxYyIsInVzZXJfaWQiOjE3fQ.csEot4qw3iPxT8NXt2DrmsgDDOnKiD3q3VT1PzGm0cA	2021-12-03 19:59:49.229461+00	2021-12-04 19:59:49+00	17	027fd8871a3a434a890b4e2c8ac1f01c
183	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0ODA4NywiaWF0IjoxNjM4NTYxNjg3LCJqdGkiOiI0MmJhZTJmNThhMzU0ZjBkYjRiYTAzY2VkOWJjM2MwOSIsInVzZXJfaWQiOjE3fQ.p8JemXr7vi_BcTa5P39Ra_mEqv5sq4YStuZ4Vq0Yg24	2021-12-03 20:01:27.705046+00	2021-12-04 20:01:27+00	17	42bae2f58a354f0db4ba03ced9bc3c09
184	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0ODE2MiwiaWF0IjoxNjM4NTYxNzYyLCJqdGkiOiI1ZTBkMDg4Njk3NGY0MDdjYjYxMTM3NDE5MDg3ZjE4MyIsInVzZXJfaWQiOjE3fQ.6JJKtOJ9XT2RrzBHHkbd6OMjtOmu_CA-4GpJ1nU-aJA	2021-12-03 20:02:42.220267+00	2021-12-04 20:02:42+00	17	5e0d0886974f407cb61137419087f183
185	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0ODIyNCwiaWF0IjoxNjM4NTYxODI0LCJqdGkiOiI1MDNjMzBkMDI4OTI0NTQxYmUzNWE4M2E4ZjJkZGJiNSIsInVzZXJfaWQiOjE3fQ.XNZ1ttpXrNCHehNcWl4VsnfS2ysttieTi65Gle42lM0	2021-12-03 20:03:44.334723+00	2021-12-04 20:03:44+00	17	503c30d028924541be35a83a8f2ddbb5
186	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0ODQzOCwiaWF0IjoxNjM4NTYyMDM4LCJqdGkiOiIyYTkzMTNlYjg1ZGM0MTlkOWNhMjllOGJlOTkxODM4OCIsInVzZXJfaWQiOjE3fQ._GT6wRDf0NGfmnkll9KkIXeUGNCqLpeuboazpbw9Vz0	2021-12-03 20:07:18.634499+00	2021-12-04 20:07:18+00	17	2a9313eb85dc419d9ca29e8be9918388
187	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0ODY2MCwiaWF0IjoxNjM4NTYyMjYwLCJqdGkiOiIzMjBjMzdlOTAzMWE0Mjk3YmFhY2IzZmNiYWQwYWY3ZSIsInVzZXJfaWQiOjE3fQ.g1I7cXmf50CnUkDJcVXopX_KE0L5sUecq582jR9Ucfk	2021-12-03 20:11:00.475956+00	2021-12-04 20:11:00+00	17	320c37e9031a4297baacb3fcbad0af7e
188	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0ODY3OCwiaWF0IjoxNjM4NTYyMjc4LCJqdGkiOiJkNGI5ZDc0YTVkMzQ0ZTg2YTMwMzlhZDViMTA4NjRkMiIsInVzZXJfaWQiOjE3fQ.J-WXvxtdhVjjoLaKtHvh8ZoRqJEepARvgZmLExJ2Tdc	2021-12-03 20:11:18.640456+00	2021-12-04 20:11:18+00	17	d4b9d74a5d344e86a3039ad5b10864d2
189	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0ODc2MiwiaWF0IjoxNjM4NTYyMzYyLCJqdGkiOiI2Nzg2YzZmN2E4ZTU0MDk0ODgxNTVmNzliYzc2YzhjZSIsInVzZXJfaWQiOjE3fQ.sQjTpnjTP6up6l1HQBjtTtZLV_3X0rcM-JdbzGxZFjw	2021-12-03 20:12:42.269312+00	2021-12-04 20:12:42+00	17	6786c6f7a8e5409488155f79bc76c8ce
190	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0ODg1MCwiaWF0IjoxNjM4NTYyNDUwLCJqdGkiOiIwMGM5ZGU3NmNlNDA0YzQwYWQxNjQ5YzgyZGVlYjVkMiIsInVzZXJfaWQiOjE3fQ.FO9xPPlGr7Vg_EnS361Ex-H-s-yvtjFh_mqQ0z2vKYU	2021-12-03 20:14:10.678279+00	2021-12-04 20:14:10+00	17	00c9de76ce404c40ad1649c82deeb5d2
191	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0ODk1NCwiaWF0IjoxNjM4NTYyNTU0LCJqdGkiOiIyZjdlNTVmOTllMzE0ZjQ1OTIwYzFkYWVhMTg2NTRkNCIsInVzZXJfaWQiOjE3fQ.U-cg0nXdUqMOnMEw8yQNx1LbYaYzl8TD8ZFnvkfgQ2A	2021-12-03 20:15:54.889533+00	2021-12-04 20:15:54+00	17	2f7e55f99e314f45920c1daea18654d4
192	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0OTA3NSwiaWF0IjoxNjM4NTYyNjc1LCJqdGkiOiIwNGJlZGEzN2U5Njc0YmFiOTViYmJjMDIxNTE4Mjg0MyIsInVzZXJfaWQiOjE3fQ.xoOEGg736_nF3wr8nJtP18BvtkfsMwZPAL4-1Yc8ZkI	2021-12-03 20:17:55.126261+00	2021-12-04 20:17:55+00	17	04beda37e9674bab95bbbc0215182843
193	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0OTE0NSwiaWF0IjoxNjM4NTYyNzQ1LCJqdGkiOiI2ZmQ3YmUzY2JkODI0YTRjYjk1NWQ1YTU5ODVjNTI3OSIsInVzZXJfaWQiOjE3fQ.h8bvLYIcNf8mTWrqmw8mcCH0Te8sR44-Fdwc2LN3OLQ	2021-12-03 20:19:05.059665+00	2021-12-04 20:19:05+00	17	6fd7be3cbd824a4cb955d5a5985c5279
194	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY0OTY3MCwiaWF0IjoxNjM4NTYzMjcwLCJqdGkiOiI5MmY3ODQ5YTQ5Mzg0Zjg2OGM2MDA0ODA1MWE4OWY0YyIsInVzZXJfaWQiOjE3fQ.sR3eP_7mSs8pAbhD4Bo4midfHdukHbM848fo83rFZqg	2021-12-03 20:27:50.180149+00	2021-12-04 20:27:50+00	17	92f7849a49384f868c60048051a89f4c
195	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY1MDA4NSwiaWF0IjoxNjM4NTYzNjg1LCJqdGkiOiJmM2Q0OTYwMGY0MzU0MjBjOWFlODgzYmRmNjFlNjZmNCIsInVzZXJfaWQiOjE3fQ.A0w9r0TmAHR5mTxvdp_nchmlkP1or14V65tKRRUu7FI	2021-12-03 20:34:45.686046+00	2021-12-04 20:34:45+00	17	f3d49600f435420c9ae883bdf61e66f4
196	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY1MDE2OCwiaWF0IjoxNjM4NTYzNzY4LCJqdGkiOiIyNmQ3YjNjMGMwODg0NTRjYjYxMzZmMWFmZTEyZDc1NCIsInVzZXJfaWQiOjE3fQ.N9qtZx9VaT7YzuY-fHiuQ6lFDcZbBRkHoUCSL1OGlNQ	2021-12-03 20:36:08.073129+00	2021-12-04 20:36:08+00	17	26d7b3c0c088454cb6136f1afe12d754
197	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY1MDI3NCwiaWF0IjoxNjM4NTYzODc0LCJqdGkiOiJjZjgwMDM1NGY2ZmU0Y2IzOTg2NjUyNzI5OTRhYjQ4MyIsInVzZXJfaWQiOjE3fQ.DuZSPvXuCBU8bh7zu8blElYaunA7wizW4PkRiFY9_IM	2021-12-03 20:37:54.009117+00	2021-12-04 20:37:54+00	17	cf800354f6fe4cb398665272994ab483
198	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzODY1MzA5OSwiaWF0IjoxNjM4NTY2Njk5LCJqdGkiOiI5OWU5ZjAwYzEyNTc0NzA2YTI1N2I1OTEwNTU0N2Q1YiIsInVzZXJfaWQiOjE3fQ.n0K7-YZwVige2FFLRlCpsGfhwAQAaIWvX3K1ACxmJb8	2021-12-03 21:24:59.668372+00	2021-12-04 21:24:59+00	17	99e9f00c12574706a257b59105547d5b
199	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzOTA3MzUyOCwiaWF0IjoxNjM4OTg3MTI4LCJqdGkiOiJhNjczMzE4MjAwODk0NzlmODI4NWY4ZDI0YjQwOWM1NiIsInVzZXJfaWQiOjE4fQ.fHwiOTNfsGXS0V0J-Ees_AZao5Xq3FlY3OlX4G6naL0	2021-12-08 18:12:08.597117+00	2021-12-09 18:12:08+00	18	a67331820089479f8285f8d24b409c56
200	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzOTI1NTYxOCwiaWF0IjoxNjM5MTY5MjE4LCJqdGkiOiJkZmVjMmUyZDQ1YzQ0YWY5OGZlZjZiM2Q4ZTNmOWZiNyIsInVzZXJfaWQiOjE0fQ.x2AzUjaiKQ_41QASHr4WHbu38kV24GcZUVM03IBW7dk	2021-12-10 20:46:58.26592+00	2021-12-11 20:46:58+00	14	dfec2e2d45c44af98fef6b3d8e3f9fb7
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$2hO2kqosRJ6pM1WKhJEydO$LhliLWrfqYqwXKtqgXriJpuO6WtwydGxREdPcYK9L7A=	\N	f				user2@mail.com	f	t	2021-11-19 21:56:09.212574+00
6	pbkdf2_sha256$260000$uzqh8Bpurs4ldJX2f64r76$xbq+3zUy/6WRa2GAyWvRENqcxme2KMcByQ2fNgL6bbc=	\N	f	username			user5@mail.com	f	t	2021-11-19 23:02:46.056837+00
7	pbkdf2_sha256$260000$xaJreYnUvOjXRKi7ordG1s$h49PlfqkTAdhczYfqIIQGgup5zOQDbSN1qNz2fjFB/s=	\N	f	user6			user6@mail.com	f	t	2021-11-19 23:41:07.919341+00
8	pbkdf2_sha256$260000$HaSX9I1l8aNGtxQhhKCTdC$dDpEfudQgAWn0p12rjgYesu2f33qWAIFIqtKGb4REhI=	\N	f	antonio_silva			antonio_silva@gmail.com	f	t	2021-11-24 17:24:36.654796+00
9	pbkdf2_sha256$260000$BddB2tqGZPsJ0Ah3tSQxN4$eps8PvTNPoMldSkDD4Fc251wBGT7yeHm+M4XlJtFJ9g=	\N	f	KooperWins	Jesus	Silva	KooperWins@gmail.com	f	t	2021-11-24 21:42:07.237674+00
10	pbkdf2_sha256$260000$OKTz8bgizInW7u8Yzy8JLU$AYKc0MMO0+yEPkgAiRaqwF1bhTWfYnph1OsoEI4oD18=	\N	f	nuevo123			nuevo123@gmail.com	f	t	2021-11-29 17:11:00.253652+00
11	pbkdf2_sha256$260000$H1NDUF1L803lv6zKLoIweU$vfGCcZ8jLmDAC3YGEUfb5TMFMG90qWdAfY1dzAdcEBg=	\N	f	hugoUser			hugoUser@gmail.com	f	t	2021-11-29 17:16:34.742266+00
12	pbkdf2_sha256$260000$Urt7gCw7Lkgv4TLkQtwY8U$ZE8hli1+TbwyiCd/RdDUJYcxTKOcpy88DzN5UuV9bTU=	\N	f	KooperWn			KooperWn@gmail.com	f	t	2021-11-29 17:17:50.245376+00
13	pbkdf2_sha256$260000$2NaQAVjUdJt3ae6YDkWLv2$HucEgBCVKde7MyB0/MolH+irI8yVV96d6+3QeRJJ8GY=	\N	f	Cuenta			Cuenta@mail.com	f	t	2021-11-29 20:12:22.685427+00
14	pbkdf2_sha256$260000$yH9syFv71rc691PJTTRN49$oD0yvpz0/V69nqSpLKJviGiP7rV345pM6Y5I8Im2gGk=	\N	f	Jesusantoniosilvaespinoza@yahoo.com			Jesusantoniosilvaespinoza@yahoo.com	f	t	2021-11-30 07:15:29.275815+00
15	pbkdf2_sha256$260000$TN0VwiuCUzU7A7NnYT0hvv$kiQ0yIn1BioxO9V6ijmzVBtYKhmIVdG3Qi3aRrVh6EI=	\N	f	tomsmith			tom@gmail.com	f	t	2021-12-01 19:10:51.325595+00
16	pbkdf2_sha256$260000$GGO9fK6FaViKorsHplCrkT$nKbjs4t5T0S4796iCOXlpYCr/Yda6jQF8HZgqWANGf8=	\N	f	cuentanueva			cuentanueva@yahoo.com	f	t	2021-12-01 22:32:21.817166+00
17	pbkdf2_sha256$260000$IEc4mljRPP0A5x5RkpjLEv$tlU1sXv5HGgkWSjm9HMlgp68zYj7liofOkYGO6A6n2s=	\N	f	yomerengues			corre@example.com	f	t	2021-12-02 17:17:52.700709+00
18	pbkdf2_sha256$260000$1OV1SAP3hqdvyMwX13539P$W4KBvBiQQIVH/dH3eb4HoADkP3+/K/PT6SLlJ0y6V4M=	\N	f	hugogsalas79			hugogsalas79@gmail.com	f	t	2021-12-08 18:12:06.430435+00
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 78, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 12, true);


--
-- Name: orders_products_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.orders_products_list_id_seq', 9, true);


--
-- Name: orders_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.orders_status_id_seq', 1, false);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.products_product_id_seq', 14, true);


--
-- Name: ristorante_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.ristorante_address_id_seq', 1, false);


--
-- Name: ristorante_restaurant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.ristorante_restaurant_id_seq', 1, false);


--
-- Name: store_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.store_address_id_seq', 4, true);


--
-- Name: store_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.store_employee_id_seq', 19, true);


--
-- Name: store_employee_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.store_employee_job_id_seq', 13, true);


--
-- Name: store_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.store_job_id_seq', 5, true);


--
-- Name: store_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.store_store_id_seq', 3, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 1, false);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 200, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: orders_order orders_order_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_pkey PRIMARY KEY (id);


--
-- Name: orders_productslist orders_products_list_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_productslist
    ADD CONSTRAINT orders_products_list_pkey PRIMARY KEY (id);


--
-- Name: orders_status orders_status_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_status
    ADD CONSTRAINT orders_status_pkey PRIMARY KEY (id);


--
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);


--
-- Name: ristorante_address ristorante_address_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.ristorante_address
    ADD CONSTRAINT ristorante_address_pkey PRIMARY KEY (id);


--
-- Name: ristorante_restaurant ristorante_restaurant_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.ristorante_restaurant
    ADD CONSTRAINT ristorante_restaurant_pkey PRIMARY KEY (id);


--
-- Name: store_address store_address_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_address
    ADD CONSTRAINT store_address_pkey PRIMARY KEY (id);


--
-- Name: store_employee store_employee_home_address_id_key; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_home_address_id_key UNIQUE (home_address_id);


--
-- Name: store_employee_job store_employee_job_employee_id_job_id_ffaaf70c_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_employee_id_job_id_ffaaf70c_uniq UNIQUE (employee_id, job_id);


--
-- Name: store_employee_job store_employee_job_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_pkey PRIMARY KEY (id);


--
-- Name: store_employee store_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_pkey PRIMARY KEY (id);


--
-- Name: store_job store_job_name_key; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_job
    ADD CONSTRAINT store_job_name_key UNIQUE (name);


--
-- Name: store_job store_job_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_job
    ADD CONSTRAINT store_job_pkey PRIMARY KEY (id);


--
-- Name: store_store store_store_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_store
    ADD CONSTRAINT store_store_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: users_user users_user_email_243f6e77_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_243f6e77_uniq UNIQUE (email);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: orders_order_restaurant_id_a38fbfc0; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX orders_order_restaurant_id_a38fbfc0 ON public.orders_order USING btree (restaurant_id);


--
-- Name: orders_order_status_id_d80abc38; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX orders_order_status_id_d80abc38 ON public.orders_order USING btree (status_id);


--
-- Name: orders_order_user_id_e9b59eb1; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX orders_order_user_id_e9b59eb1 ON public.orders_order USING btree (user_id);


--
-- Name: orders_products_list_order_id_144636bf; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX orders_products_list_order_id_144636bf ON public.orders_productslist USING btree (order_id);


--
-- Name: orders_products_list_product_id_2928f735; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX orders_products_list_product_id_2928f735 ON public.orders_productslist USING btree (product_id);


--
-- Name: ristorante_restaurant_address_id_9f08bca3; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX ristorante_restaurant_address_id_9f08bca3 ON public.ristorante_restaurant USING btree (address_id);


--
-- Name: store_employee_branch_id_37106d11; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX store_employee_branch_id_37106d11 ON public.store_employee USING btree (branch_id);


--
-- Name: store_employee_job_employee_id_4ba6904a; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX store_employee_job_employee_id_4ba6904a ON public.store_employee_job USING btree (employee_id);


--
-- Name: store_employee_job_job_id_43f375b7; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX store_employee_job_job_id_43f375b7 ON public.store_employee_job USING btree (job_id);


--
-- Name: store_job_name_af58d936_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX store_job_name_af58d936_like ON public.store_job USING btree (name varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: users_user_email_243f6e77_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_order orders_order_restaurant_id_a38fbfc0_fk_ristorante_restaurant_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_restaurant_id_a38fbfc0_fk_ristorante_restaurant_id FOREIGN KEY (restaurant_id) REFERENCES public.ristorante_restaurant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_order orders_order_status_id_d80abc38_fk_orders_status_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_status_id_d80abc38_fk_orders_status_id FOREIGN KEY (status_id) REFERENCES public.orders_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_order orders_order_user_id_e9b59eb1_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_user_id_e9b59eb1_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_productslist orders_products_list_order_id_144636bf_fk_orders_order_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_productslist
    ADD CONSTRAINT orders_products_list_order_id_144636bf_fk_orders_order_id FOREIGN KEY (order_id) REFERENCES public.orders_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_productslist orders_products_list_product_id_2928f735_fk_products_product_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_productslist
    ADD CONSTRAINT orders_products_list_product_id_2928f735_fk_products_product_id FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ristorante_restaurant ristorante_restauran_address_id_9f08bca3_fk_ristorant; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.ristorante_restaurant
    ADD CONSTRAINT ristorante_restauran_address_id_9f08bca3_fk_ristorant FOREIGN KEY (address_id) REFERENCES public.ristorante_address(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee store_employee_branch_id_37106d11_fk_store_store_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_branch_id_37106d11_fk_store_store_id FOREIGN KEY (branch_id) REFERENCES public.store_store(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee store_employee_home_address_id_958bfaa2_fk_store_address_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_home_address_id_958bfaa2_fk_store_address_id FOREIGN KEY (home_address_id) REFERENCES public.store_address(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee_job store_employee_job_employee_id_4ba6904a_fk_store_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_employee_id_4ba6904a_fk_store_employee_id FOREIGN KEY (employee_id) REFERENCES public.store_employee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee_job store_employee_job_job_id_43f375b7_fk_store_job_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_job_id_43f375b7_fk_store_job_id FOREIGN KEY (job_id) REFERENCES public.store_job(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_users_use; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_users_use FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

