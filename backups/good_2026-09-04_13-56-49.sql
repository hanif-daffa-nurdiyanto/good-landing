--
-- PostgreSQL database dump
--

\restrict NYMOzREG1d5ZkWEDxiKxcNxUqupzPZXcJUyUcvNLiOH4rYYvtzqDdWxuGJQugZo

-- Dumped from database version 15.15 (Homebrew)
-- Dumped by pg_dump version 18.6 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

-- *not* creating schema, since initdb creates it


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: about; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.about (
    id integer NOT NULL,
    kicker_title character varying,
    kicker_copy character varying,
    about_story character varying,
    how_we_work_title character varying,
    image_strip_heading_top character varying,
    image_strip_heading_emphasis character varying,
    image_strip_heading_bottom character varying,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


--
-- Name: about_about_collage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.about_about_collage (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    image character varying,
    class_name character varying NOT NULL,
    image_upload_id integer
);


--
-- Name: about_about_strip; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.about_about_strip (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    alt character varying NOT NULL,
    image character varying,
    href character varying,
    object_position character varying,
    dark boolean,
    image_upload_id integer
);


--
-- Name: about_clients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.about_clients (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    item character varying NOT NULL
);


--
-- Name: about_how_we_work_paragraphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.about_how_we_work_paragraphs (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    paragraph character varying NOT NULL
);


--
-- Name: about_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.about_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: about_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.about_id_seq OWNED BY public.about.id;


--
-- Name: about_industries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.about_industries (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    item character varying NOT NULL
);


--
-- Name: about_press; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.about_press (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    item character varying NOT NULL
);


--
-- Name: about_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.about_services (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    item character varying NOT NULL
);


--
-- Name: contact; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact (
    id integer NOT NULL,
    kicker_title character varying,
    kicker_copy character varying,
    contact_heading character varying,
    contact_email character varying,
    contact_image character varying,
    contact_image_alt character varying,
    social_heading character varying,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone,
    contact_image_upload_id integer
);


--
-- Name: contact_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.contact_id_seq OWNED BY public.contact.id;


--
-- Name: contact_social_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact_social_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    label character varying NOT NULL,
    href character varying NOT NULL
);


--
-- Name: home; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home (
    id integer NOT NULL,
    hero_logo character varying,
    hero_heading character varying,
    hero_copy character varying,
    manifesto_title character varying,
    manifesto_video character varying,
    featured_title character varying,
    featured_link_label character varying,
    featured_link_href character varying,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone,
    hero_logo_upload_id integer,
    manifesto_video_upload_id integer
);


--
-- Name: home_featured_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_featured_projects (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    title character varying NOT NULL,
    description character varying NOT NULL,
    image character varying,
    href character varying NOT NULL,
    color character varying,
    status character varying,
    image_upload_id integer
);


--
-- Name: home_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_id_seq OWNED BY public.home.id;


--
-- Name: home_manifesto_paragraphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_manifesto_paragraphs (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    paragraph character varying NOT NULL
);


--
-- Name: home_marquee_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_marquee_projects (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    title character varying NOT NULL,
    description character varying NOT NULL,
    image character varying,
    href character varying NOT NULL,
    color character varying,
    status character varying,
    image_upload_id integer
);


--
-- Name: media; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.media (
    id integer NOT NULL,
    alt character varying NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    url character varying,
    thumbnail_u_r_l character varying,
    filename character varying,
    mime_type character varying,
    filesize numeric,
    width numeric,
    height numeric,
    focal_x numeric,
    focal_y numeric
);


--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: payload_kv; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_kv (
    id integer NOT NULL,
    key character varying NOT NULL,
    data jsonb NOT NULL
);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_kv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_kv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_kv_id_seq OWNED BY public.payload_kv.id;


--
-- Name: payload_locked_documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents (
    id integer NOT NULL,
    global_slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_id_seq OWNED BY public.payload_locked_documents.id;


--
-- Name: payload_locked_documents_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer,
    media_id integer
);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNED BY public.payload_locked_documents_rels.id;


--
-- Name: payload_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_migrations (
    id integer NOT NULL,
    name character varying,
    batch numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_migrations_id_seq OWNED BY public.payload_migrations.id;


--
-- Name: payload_preferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences (
    id integer NOT NULL,
    key character varying,
    value jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_id_seq OWNED BY public.payload_preferences.id;


--
-- Name: payload_preferences_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer
);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNED BY public.payload_preferences_rels.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    email character varying NOT NULL,
    reset_password_token character varying,
    reset_password_expiration timestamp(3) with time zone,
    salt character varying,
    hash character varying,
    login_attempts numeric DEFAULT 0,
    lock_until timestamp(3) with time zone
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_sessions (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    created_at timestamp(3) with time zone,
    expires_at timestamp(3) with time zone NOT NULL
);


--
-- Name: work; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.work (
    id integer NOT NULL,
    kicker_title character varying,
    kicker_copy character varying,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


--
-- Name: work_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.work_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: work_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.work_id_seq OWNED BY public.work.id;


--
-- Name: work_work_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.work_work_projects (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    title character varying NOT NULL,
    description character varying NOT NULL,
    image character varying,
    href character varying NOT NULL,
    color character varying,
    status character varying,
    image_upload_id integer
);


--
-- Name: about id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about ALTER COLUMN id SET DEFAULT nextval('public.about_id_seq'::regclass);


--
-- Name: contact id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact ALTER COLUMN id SET DEFAULT nextval('public.contact_id_seq'::regclass);


--
-- Name: home id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home ALTER COLUMN id SET DEFAULT nextval('public.home_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: payload_kv id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_kv ALTER COLUMN id SET DEFAULT nextval('public.payload_kv_id_seq'::regclass);


--
-- Name: payload_locked_documents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_id_seq'::regclass);


--
-- Name: payload_locked_documents_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_rels_id_seq'::regclass);


--
-- Name: payload_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations ALTER COLUMN id SET DEFAULT nextval('public.payload_migrations_id_seq'::regclass);


--
-- Name: payload_preferences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_id_seq'::regclass);


--
-- Name: payload_preferences_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_rels_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: work id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work ALTER COLUMN id SET DEFAULT nextval('public.work_id_seq'::regclass);


--
-- Data for Name: about; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.about (id, kicker_title, kicker_copy, about_story, how_we_work_title, image_strip_heading_top, image_strip_heading_emphasis, image_strip_heading_bottom, updated_at, created_at) FROM stdin;
1	Goodside	Selected identities for restaurants, venture firms, wellness products, climate tools, cultural places, and teams building what comes next.	We believe great brands can change the course of a business. Every meaningful business begins with someone who cares deeply about what they're building. Our role is to uncover what makes it worth believing in, then give that idea a distinct expression. Through strategy, identity, design, and art direction, we create brands with the character and craft to stand the test of time.	How we work	Where	great brands	begin	2026-09-04 09:37:11.215+07	2026-09-04 09:37:11.215+07
\.


--
-- Data for Name: about_about_collage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.about_about_collage (_order, _parent_id, id, image, class_name, image_upload_id) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794cad	https://www.goodside.studio/assets/sparrow1.png	left-[0%] top-[67.5%] w-[24.3%]	\N
2	1	6a9a2ed7bdbea0ff7f794cae	https://www.goodside.studio/assets/sparrow2.png	left-[0%] top-[22.5%] w-[31.4%]	\N
3	1	6a9a2ed7bdbea0ff7f794caf	https://www.goodside.studio/assets/sparrow3.png	left-[33.3%] top-[43.9%] w-[31.3%]	\N
4	1	6a9a2ed7bdbea0ff7f794cb0	https://www.goodside.studio/assets/sparrow4.png	left-[37%] top-[0%] w-[31.4%]	\N
5	1	6a9a2ed7bdbea0ff7f794cb1	https://www.goodside.studio/assets/sparrow5.png	left-[68.4%] top-[17.5%] w-[31.6%]	\N
\.


--
-- Data for Name: about_about_strip; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.about_about_strip (_order, _parent_id, id, alt, image, href, object_position, dark, image_upload_id) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794cdb	Kimball Modern case study	https://www.goodside.studio/assets/kimball_modern_branding_goodside_12.webp	/work/kimball-modern	\N	\N	\N
2	1	6a9a2ed7bdbea0ff7f794cdc	Bloomnet case study	https://www.goodside.studio/assets/Bloomnet_Cover.webp	/work/bloomnet	\N	\N	\N
3	1	6a9a2ed7bdbea0ff7f794cdd	Superorganism case study	https://www.goodside.studio/assets/superorganism_cover.webp	/work/superorganism	\N	\N	\N
4	1	6a9a2ed7bdbea0ff7f794cde	Spero Ventures case study	https://www.goodside.studio/assets/spero_goodside_branding_3.webp	/work/spero	\N	\N	\N
5	1	6a9a2ed7bdbea0ff7f794cdf	DirtyVine case study	https://www.goodside.studio/assets/Goodside_DirtyVine_Brand_Box%201.webp	/work/dirtyvine	\N	\N	\N
6	1	6a9a2ed7bdbea0ff7f794ce0	Memberful brand design by Goodside	https://www.goodside.studio/assets/memberful_cover.png	\N	\N	\N	\N
7	1	6a9a2ed7bdbea0ff7f794ce1	Minerva brand design by Goodside	https://www.goodside.studio/assets/minerva_cover.png	\N	\N	\N	\N
8	1	6a9a2ed7bdbea0ff7f794ce2	Carina packaging design by Goodside	https://www.goodside.studio/assets/carina-branding-packaing-design-jessica-strelioff-5.webp	\N	8% 50%	\N	\N
9	1	6a9a2ed7bdbea0ff7f794ce3	Henri & Helene case study	https://www.goodside.studio/assets/h_h_branding_goodside_menu.webp	/work/henri-helene	\N	\N	\N
10	1	6a9a2ed7bdbea0ff7f794ce4	Henri & Helene lace doily	https://www.goodside.studio/assets/h_h_branding_goodside_doily.webp	/work/henri-helene	\N	t	\N
11	1	6a9a2ed7bdbea0ff7f794ce5	The Mind Company case study	https://www.goodside.studio/assets/tmc_cover.png	/work/the-mind-company	\N	\N	\N
12	1	6a9a2ed7bdbea0ff7f794ce6	The Mind Company portrait	https://www.goodside.studio/assets/goodside_the_mind_company_photography_portrait_1.webp	/work/the-mind-company	\N	\N	\N
13	1	6a9a2ed7bdbea0ff7f794ce7	Desnudo case study	https://www.goodside.studio/assets/desnudo_standing_menu_coffee_brand.webp	/work/desnudo	\N	\N	\N
14	1	6a9a2ed7bdbea0ff7f794ce8	Ditto case study	https://www.goodside.studio/assets/goodside_ditto_branding_10.png	/work/ditto	30% 50%	\N	\N
15	1	6a9a2ed7bdbea0ff7f794ce9	Radial Health case study	https://www.goodside.studio/assets/radial_website.webp	/work/radial-health	\N	\N	\N
16	1	6a9a2ed7bdbea0ff7f794cea	Follow Architecture case study	https://www.goodside.studio/assets/follow_brand_business_cards.webp	/work/follow	\N	\N	\N
17	1	6a9a2ed7bdbea0ff7f794ceb	NDVR brand design by Goodside	https://www.goodside.studio/assets/ndvr_cover.webp	\N	\N	\N	\N
18	1	6a9a2ed7bdbea0ff7f794cec	Hotel Topanga brand design by Goodside	https://www.goodside.studio/assets/hotel_topanga_cover.webp	\N	\N	\N	\N
19	1	6a9a2ed7bdbea0ff7f794ced	HyperComply brand design by Goodside	https://www.goodside.studio/assets/hypercomply_cover.webp	\N	\N	\N	\N
20	1	6a9a2ed7bdbea0ff7f794cee	Storyworth case study	https://www.goodside.studio/assets/storyworth-brand-design-6.webp	/work/storyworth	\N	\N	\N
\.


--
-- Data for Name: about_clients; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.about_clients (_order, _parent_id, id, item) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794cc6	Cambium
2	1	6a9a2ed7bdbea0ff7f794cc7	Desnudo Coffee
3	1	6a9a2ed7bdbea0ff7f794cc8	Facebook
4	1	6a9a2ed7bdbea0ff7f794cc9	Fine Arts Museums of San Francisco
5	1	6a9a2ed7bdbea0ff7f794cca	Google
6	1	6a9a2ed7bdbea0ff7f794ccb	Instagram
7	1	6a9a2ed7bdbea0ff7f794ccc	Patagonia
8	1	6a9a2ed7bdbea0ff7f794ccd	Radial Health
9	1	6a9a2ed7bdbea0ff7f794cce	Resy
10	1	6a9a2ed7bdbea0ff7f794ccf	Semple Brown
11	1	6a9a2ed7bdbea0ff7f794cd0	StockX
12	1	6a9a2ed7bdbea0ff7f794cd1	Storyworth
13	1	6a9a2ed7bdbea0ff7f794cd2	The Mind Company
14	1	6a9a2ed7bdbea0ff7f794cd3	Zed
\.


--
-- Data for Name: about_how_we_work_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.about_how_we_work_paragraphs (_order, _parent_id, id, paragraph) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794cb2	We work closely with founders and teams at defining moments, from ambitious new ventures to thoughtful reinventions. The process is hands-on, direct, and built around finding the strongest expression of the business behind the brand.
2	1	6a9a2ed7bdbea0ff7f794cb3	Goodside is led by brand designer and creative director Jessica Strelioff, with a trusted network of specialists brought in as each project requires.
\.


--
-- Data for Name: about_industries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.about_industries (_order, _parent_id, id, item) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794cbd	Health & wellness
2	1	6a9a2ed7bdbea0ff7f794cbe	Climate & sustainability
3	1	6a9a2ed7bdbea0ff7f794cbf	Emerging technology
4	1	6a9a2ed7bdbea0ff7f794cc0	Hospitality, food, & beverage
5	1	6a9a2ed7bdbea0ff7f794cc1	Venture capital
6	1	6a9a2ed7bdbea0ff7f794cc2	Family, education & care
7	1	6a9a2ed7bdbea0ff7f794cc3	Consumer products
8	1	6a9a2ed7bdbea0ff7f794cc4	Architecture & design
9	1	6a9a2ed7bdbea0ff7f794cc5	Outdoors & recreation
\.


--
-- Data for Name: about_press; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.about_press (_order, _parent_id, id, item) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794cd4	Spero on Brand New
2	1	6a9a2ed7bdbea0ff7f794cd5	Goodside in Communication Arts Magazine
3	1	6a9a2ed7bdbea0ff7f794cd6	Bloomnet on Brand New
4	1	6a9a2ed7bdbea0ff7f794cd7	The Mind Company on Brand New
5	1	6a9a2ed7bdbea0ff7f794cd8	Goodside in Visual Journal
6	1	6a9a2ed7bdbea0ff7f794cd9	Goodside in Creative Boom
7	1	6a9a2ed7bdbea0ff7f794cda	Desnudo on The Dieline
\.


--
-- Data for Name: about_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.about_services (_order, _parent_id, id, item) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794cb4	Brand strategy
2	1	6a9a2ed7bdbea0ff7f794cb5	Naming
3	1	6a9a2ed7bdbea0ff7f794cb6	Brand identity
4	1	6a9a2ed7bdbea0ff7f794cb7	Art direction
5	1	6a9a2ed7bdbea0ff7f794cb8	Web design
6	1	6a9a2ed7bdbea0ff7f794cb9	Packaging design
7	1	6a9a2ed7bdbea0ff7f794cba	Signage design
8	1	6a9a2ed7bdbea0ff7f794cbb	Print design
9	1	6a9a2ed7bdbea0ff7f794cbc	Brand guidelines
\.


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contact (id, kicker_title, kicker_copy, contact_heading, contact_email, contact_image, contact_image_alt, social_heading, updated_at, created_at, contact_image_upload_id) FROM stdin;
1	Goodside	Selected identities for restaurants, venture firms, wellness products, climate tools, cultural places, and teams building what comes next.	For business inquiries, collaborations or hellos	hello@goodside.studio	https://www.goodside.studio/assets/goodside_dandelion.png	Goodside Dandelion	Follow along	2026-09-04 09:37:11.251+07	2026-09-04 09:37:11.251+07	\N
\.


--
-- Data for Name: contact_social_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contact_social_links (_order, _parent_id, id, label, href) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794cef	Instagram	https://www.instagram.com/goodside_studio/
2	1	6a9a2ed7bdbea0ff7f794cf0	LinkedIn	https://www.linkedin.com/company/goodsidestudio/
3	1	6a9a2ed7bdbea0ff7f794cf1	X	https://x.com/goodside_studio
4	1	6a9a2ed7bdbea0ff7f794cf2	Substack	https://substack.com/@goodsidestudio
\.


--
-- Data for Name: home; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home (id, hero_logo, hero_heading, hero_copy, manifesto_title, manifesto_video, featured_title, featured_link_label, featured_link_href, updated_at, created_at, hero_logo_upload_id, manifesto_video_upload_id) FROM stdin;
1	https://www.goodside.studio/assets/Goodside.svg	Where meaningful ideas become memorable brands	Goodside is an independent brand design studio creating identities for the products, places, and experiences people fall in love with.	Let's imagine what's possible	https://www.goodside.studio/assets/bloom_goodside.mp4	Featured Work	See more work	/work	2026-09-04 09:44:12.919+07	2026-09-04 09:37:11.157+07	\N	1
\.


--
-- Data for Name: home_featured_projects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_featured_projects (_order, _parent_id, id, title, description, image, href, color, status, image_upload_id) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794c9a	Henri & Helene	A neighborhood French bistro	https://www.goodside.studio/assets/h_h_branding_goodside_menu.webp	/work/henri-helene	bg-warm	\N	\N
2	1	6a9a2ed7bdbea0ff7f794c9b	Kimball Modern	An interior design studio rooted in warm modernism	https://www.goodside.studio/assets/kimball_modern_branding_goodside_12.webp	/work/kimball-modern	bg-warm	\N	\N
3	1	6a9a2ed7bdbea0ff7f794c9c	Spero	A venture firm for the purposeful	https://www.goodside.studio/assets/spero_goodside_branding_3.webp	/work/spero	bg-clay text-paper	\N	\N
4	1	6a9a2ed7bdbea0ff7f794c9d	The Mind Company	A destination for mental fitness made just for your mind	https://www.goodside.studio/assets/goodside_the_mind_company_posters_web.avif	/work/the-mind-company	bg-butter	\N	\N
\.


--
-- Data for Name: home_manifesto_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_manifesto_paragraphs (_order, _parent_id, id, paragraph) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794c98	The brands we remember have a way of making us see things differently. They turn everyday products into rituals, ordinary places into destinations, and new ideas into things people can't imagine living without.
2	1	6a9a2ed7bdbea0ff7f794c99	Through strategy, identity, design, and art direction, we get to the heart of what makes a business special and shape it into a brand that's unmistakably its own.\n****
\.


--
-- Data for Name: home_marquee_projects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_marquee_projects (_order, _parent_id, id, title, description, image, href, color, status, image_upload_id) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794c92	Henri & Helene	A neighborhood French bistro	https://www.goodside.studio/assets/h_h_branding_goodside_menu.webp	/work/henri-helene	bg-warm	\N	\N
2	1	6a9a2ed7bdbea0ff7f794c93	Dirtyvine	A new home for natural wine and botanical bevs	https://www.goodside.studio/assets/Goodside_DirtyVine_Brand_Box%201.webp	/work/dirtyvine	bg-moss text-paper	\N	\N
3	1	6a9a2ed7bdbea0ff7f794c94	The Mind Company	A destination for mental fitness made just for your mind	https://www.goodside.studio/assets/goodside_the_mind_company_posters_web.avif	/work/the-mind-company	bg-butter	\N	\N
4	1	6a9a2ed7bdbea0ff7f794c95	Spero	A venture firm for the purposeful	https://www.goodside.studio/assets/spero_goodside_branding_3.webp	/work/spero	bg-clay text-paper	\N	\N
5	1	6a9a2ed7bdbea0ff7f794c96	Bloomnet	The modern florist network	https://www.goodside.studio/assets/Bloomnet_Cover.webp	/work/bloomnet	bg-paper	\N	\N
6	1	6a9a2ed7bdbea0ff7f794c97	Kimball Modern	An interior design studio rooted in warm modernism	https://www.goodside.studio/assets/kimball_modern_branding_goodside_12.webp	/work/kimball-modern	bg-warm	\N	\N
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.media (id, alt, updated_at, created_at, url, thumbnail_u_r_l, filename, mime_type, filesize, width, height, focal_x, focal_y) FROM stdin;
1	video	2026-09-04 09:43:37.741+07	2026-09-04 09:43:37.741+07	/api/media/file/bloom_goodside.mp4	\N	bloom_goodside.mp4	video/mp4	1635320	\N	\N	\N	\N
\.


--
-- Data for Name: payload_kv; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_kv (id, key, data) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents (id, global_slug, updated_at, created_at) FROM stdin;
2	about	2026-09-04 10:08:05.921+07	2026-09-04 10:02:56.513+07
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents_rels (id, "order", parent_id, path, users_id, media_id) FROM stdin;
2	\N	2	user	1	\N
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_migrations (id, name, batch, updated_at, created_at) FROM stdin;
1	dev	-1	2026-09-04 10:57:40.664+07	2026-09-03 11:43:41.343+07
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences (id, key, value, updated_at, created_at) FROM stdin;
2	collection-pages	{"limit": 10, "editViewType": "default"}	2026-09-04 09:30:49.741+07	2026-09-04 09:30:45.449+07
3	collection-users	{}	2026-09-04 09:32:24.209+07	2026-09-04 09:32:24.208+07
5	global-contact	{"fields": {"_index-0": {"tabIndex": 1}}, "editViewType": "default"}	2026-09-04 09:41:58.957+07	2026-09-04 09:41:51.691+07
4	global-home	{"fields": {"_index-0": {"tabIndex": 2}, "featuredProjects": {"collapsed": ["6a9a2ed7bdbea0ff7f794c9a", "6a9a2ed7bdbea0ff7f794c9b", "6a9a2ed7bdbea0ff7f794c9c", "6a9a2ed7bdbea0ff7f794c9d"]}}, "editViewType": "default"}	2026-09-04 09:43:12.148+07	2026-09-04 09:36:53.186+07
1	collection-media	{"editViewType": "default"}	2026-09-04 09:43:23.081+07	2026-09-03 11:46:47.505+07
6	nav	{"groups": {"Globals": {"open": true}, "Collections": {"open": true}}}	2026-09-04 09:44:09.309+07	2026-09-04 09:44:04.814+07
7	global-work	{"fields": {"_index-0": {"tabIndex": 1}, "workProjects": {"collapsed": ["6a9a2ed7bdbea0ff7f794c9e", "6a9a2ed7bdbea0ff7f794c9f", "6a9a2ed7bdbea0ff7f794ca0", "6a9a2ed7bdbea0ff7f794ca1", "6a9a2ed7bdbea0ff7f794ca2", "6a9a2ed7bdbea0ff7f794ca3", "6a9a2ed7bdbea0ff7f794ca4", "6a9a2ed7bdbea0ff7f794ca5", "6a9a2ed7bdbea0ff7f794ca6", "6a9a2ed7bdbea0ff7f794ca7", "6a9a2ed7bdbea0ff7f794ca8", "6a9a2ed7bdbea0ff7f794ca9", "6a9a2ed7bdbea0ff7f794caa", "6a9a2ed7bdbea0ff7f794cab", "6a9a2ed7bdbea0ff7f794cac"]}}, "editViewType": "default"}	2026-09-04 10:02:36.943+07	2026-09-04 10:02:02.073+07
8	global-about	{"fields": {"press": {"collapsed": ["6a9a2ed7bdbea0ff7f794cd7"]}, "_index-0": {"tabIndex": 2}}, "editViewType": "default"}	2026-09-04 10:42:10.732+07	2026-09-04 10:02:48.223+07
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences_rels (id, "order", parent_id, path, users_id) FROM stdin;
4	\N	2	user	1
5	\N	3	user	1
15	\N	5	user	1
22	\N	4	user	1
23	\N	1	user	1
29	\N	6	user	1
36	\N	7	user	1
47	\N	8	user	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, updated_at, created_at, email, reset_password_token, reset_password_expiration, salt, hash, login_attempts, lock_until) FROM stdin;
1	2026-09-03 11:46:45.007+07	2026-09-03 11:46:45.005+07	test@lokal.com	\N	\N	fd3a95b9ca9a8319307b445740097681342fad9200dd0daeb67bfb82cb86ca91	49d93441a424357bcd294aef1d06b132c141b1a44f3110af28d22e64c120787c7507e34504e0bdd7d085ab1de783d3cb67823f763722feb8665f110ddcbca9122cfd03bb7bae62d996c759ba7a850084e8486453dc48f6d1e2cb32d8597fd9fbd3b5cb692746f0ded42da4e6c58c0f392a8391d89129b611fb1b59b449f2c393595c9187c90242a9dd31e2f825a19ea126e852068cc3af1c28322bbb854bf875808c739f8fe998553b67d1b2d6d329e4292049ead2336bc181e64241eebce72d6f9905038d47cd5999b9cb1567c2a83cfce41a34a7aaf3818d1b0d256cd0fe651073b5ac599b91a0d236a212ca6b31039bb2e5aba8d0c0ba04f8a362ae665baf4f2545976444c7c4bffc419d4b0595ed94d6457643a23579bf8b25d0335ce6a043a6699e61cb6fb251b8afb532ab0dcf7ed0233229f00f49a86cf2a394aa58b90ec496f548d7c9e74be9fa968792053491adf725b973c0f6772ebf20ece81d774d62394254ead1cfe9a957fca280f846271d109dd8c475a280493b1cb95b82045257b5fd9ea8a75f4ab13d0c145a9f723e75f6667f8045ff2a8d770b7f94811210164b85e2af912cbe1ef4b4ae4992d193b788467d37e7ceb3fd7f066eb37e63bc8022cfc78d005645da6050e8327d9c9839e48240766cfc2760d1165a3980cfba767c668ca516a8c7a71a478e4e49d08b76a44de7bee95cb06c114b1d70fee6	0	\N
\.


--
-- Data for Name: users_sessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_sessions (_order, _parent_id, id, created_at, expires_at) FROM stdin;
1	1	ec4d6de0-10aa-40d1-9b49-eca848915be4	2026-09-04 09:30:26.394+07	2026-09-04 11:30:26.394+07
\.


--
-- Data for Name: work; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.work (id, kicker_title, kicker_copy, updated_at, created_at) FROM stdin;
1	Goodside	Selected identities for restaurants, venture firms, wellness products, climate tools, cultural places, and teams building what comes next.	2026-09-04 09:37:11.184+07	2026-09-04 09:37:11.184+07
\.


--
-- Data for Name: work_work_projects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.work_work_projects (_order, _parent_id, id, title, description, image, href, color, status, image_upload_id) FROM stdin;
1	1	6a9a2ed7bdbea0ff7f794c9e	Henri & Helene	A neighborhood French bistro	https://www.goodside.studio/assets/h_h_branding_goodside_menu.webp	/work/henri-helene	bg-warm	\N	\N
2	1	6a9a2ed7bdbea0ff7f794c9f	Kimball Modern	An interior design studio rooted in warm modernism	https://www.goodside.studio/assets/kimball_modern_branding_goodside_12.webp	/work/kimball-modern	bg-warm	\N	\N
3	1	6a9a2ed7bdbea0ff7f794ca0	The Mind Company	A family of apps for mental fitness	https://www.goodside.studio/assets/goodside_the_mind_company_posters_web.avif	/work/the-mind-company	bg-butter	\N	\N
4	1	6a9a2ed7bdbea0ff7f794ca1	Dirtyvine	A new home for natural wine and botanical bevs	https://www.goodside.studio/assets/Goodside_DirtyVine_Brand_Box%201.webp	/work/dirtyvine	bg-moss text-paper	\N	\N
5	1	6a9a2ed7bdbea0ff7f794ca2	Spero Ventures	A venture firm for the purposeful	https://www.goodside.studio/assets/spero_still.webp	/work/spero	bg-clay text-paper	\N	\N
6	1	6a9a2ed7bdbea0ff7f794ca3	Radial Health	Healing the mental healthcare system from the inside out	https://www.goodside.studio/assets/radial_website.webp	#	bg-paper	\N	\N
7	1	6a9a2ed7bdbea0ff7f794ca4	Superorganism	The pursuit of wild ambition	https://www.goodside.studio/assets/superorganism_cover.webp	#	bg-moss text-paper	\N	\N
8	1	6a9a2ed7bdbea0ff7f794ca5	Bloomnet	The modern florist network	https://www.goodside.studio/assets/Bloomnet_Cover.webp	/work/bloomnet	bg-paper	\N	\N
9	1	6a9a2ed7bdbea0ff7f794ca6	Follow Architecture	A conversation between architecture and environment	https://www.goodside.studio/assets/follow_brand_logomark.webp	#	bg-warm	\N	\N
10	1	6a9a2ed7bdbea0ff7f794ca7	Ditto	Helping businesses meet global sustainability standards	https://www.goodside.studio/assets/ditto_cover.png	#	bg-butter	\N	\N
11	1	6a9a2ed7bdbea0ff7f794ca8	Desnudo Coffee	Changing lives, one farm at a time	https://www.goodside.studio/assets/desnudo_%20brand_design_apron.webp	#	bg-clay text-paper	\N	\N
12	1	6a9a2ed7bdbea0ff7f794ca9	Storyworth	Connecting people through stories	https://www.goodside.studio/assets/storyworth-brand-design-6.webp	#	bg-paper	\N	\N
13	1	6a9a2ed7bdbea0ff7f794caa	Puck	Where great teams find great teammates	https://www.goodside.studio/assets/puck-goodside-case-study-06.webp	#	bg-warm	\N	\N
14	1	6a9a2ed7bdbea0ff7f794cab	Kopperfield	The new era of home electrification	https://www.goodside.studio/assets/kopperfield_brand_identity_logo_goodside.webp	#	bg-moss text-paper	\N	\N
15	1	6a9a2ed7bdbea0ff7f794cac	Semple Brown	Enduring architecture that connects people, place, and experience	https://www.goodside.studio/assets/semple_brown_cover.webp	#	bg-paper	Coming Soon	\N
\.


--
-- Name: about_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.about_id_seq', 1, true);


--
-- Name: contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.contact_id_seq', 1, true);


--
-- Name: home_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_id_seq', 1, true);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.media_id_seq', 1, true);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_kv_id_seq', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 2, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 2, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 1, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 8, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 47, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: work_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.work_id_seq', 1, true);


--
-- Name: about_about_collage about_about_collage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_about_collage
    ADD CONSTRAINT about_about_collage_pkey PRIMARY KEY (id);


--
-- Name: about_about_strip about_about_strip_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_about_strip
    ADD CONSTRAINT about_about_strip_pkey PRIMARY KEY (id);


--
-- Name: about_clients about_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_clients
    ADD CONSTRAINT about_clients_pkey PRIMARY KEY (id);


--
-- Name: about_how_we_work_paragraphs about_how_we_work_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_how_we_work_paragraphs
    ADD CONSTRAINT about_how_we_work_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: about_industries about_industries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_industries
    ADD CONSTRAINT about_industries_pkey PRIMARY KEY (id);


--
-- Name: about about_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about
    ADD CONSTRAINT about_pkey PRIMARY KEY (id);


--
-- Name: about_press about_press_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_press
    ADD CONSTRAINT about_press_pkey PRIMARY KEY (id);


--
-- Name: about_services about_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_services
    ADD CONSTRAINT about_services_pkey PRIMARY KEY (id);


--
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- Name: contact_social_links contact_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_social_links
    ADD CONSTRAINT contact_social_links_pkey PRIMARY KEY (id);


--
-- Name: home_featured_projects home_featured_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_featured_projects
    ADD CONSTRAINT home_featured_projects_pkey PRIMARY KEY (id);


--
-- Name: home_manifesto_paragraphs home_manifesto_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_manifesto_paragraphs
    ADD CONSTRAINT home_manifesto_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: home_marquee_projects home_marquee_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_marquee_projects
    ADD CONSTRAINT home_marquee_projects_pkey PRIMARY KEY (id);


--
-- Name: home home_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: payload_kv payload_kv_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_kv
    ADD CONSTRAINT payload_kv_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents payload_locked_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents
    ADD CONSTRAINT payload_locked_documents_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_migrations payload_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations
    ADD CONSTRAINT payload_migrations_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences payload_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences
    ADD CONSTRAINT payload_preferences_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences_rels payload_preferences_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_sessions users_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_pkey PRIMARY KEY (id);


--
-- Name: work work_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_pkey PRIMARY KEY (id);


--
-- Name: work_work_projects work_work_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_work_projects
    ADD CONSTRAINT work_work_projects_pkey PRIMARY KEY (id);


--
-- Name: about_about_collage_image_upload_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_about_collage_image_upload_idx ON public.about_about_collage USING btree (image_upload_id);


--
-- Name: about_about_collage_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_about_collage_order_idx ON public.about_about_collage USING btree (_order);


--
-- Name: about_about_collage_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_about_collage_parent_id_idx ON public.about_about_collage USING btree (_parent_id);


--
-- Name: about_about_strip_image_upload_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_about_strip_image_upload_idx ON public.about_about_strip USING btree (image_upload_id);


--
-- Name: about_about_strip_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_about_strip_order_idx ON public.about_about_strip USING btree (_order);


--
-- Name: about_about_strip_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_about_strip_parent_id_idx ON public.about_about_strip USING btree (_parent_id);


--
-- Name: about_clients_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_clients_order_idx ON public.about_clients USING btree (_order);


--
-- Name: about_clients_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_clients_parent_id_idx ON public.about_clients USING btree (_parent_id);


--
-- Name: about_how_we_work_paragraphs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_how_we_work_paragraphs_order_idx ON public.about_how_we_work_paragraphs USING btree (_order);


--
-- Name: about_how_we_work_paragraphs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_how_we_work_paragraphs_parent_id_idx ON public.about_how_we_work_paragraphs USING btree (_parent_id);


--
-- Name: about_industries_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_industries_order_idx ON public.about_industries USING btree (_order);


--
-- Name: about_industries_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_industries_parent_id_idx ON public.about_industries USING btree (_parent_id);


--
-- Name: about_press_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_press_order_idx ON public.about_press USING btree (_order);


--
-- Name: about_press_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_press_parent_id_idx ON public.about_press USING btree (_parent_id);


--
-- Name: about_services_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_services_order_idx ON public.about_services USING btree (_order);


--
-- Name: about_services_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX about_services_parent_id_idx ON public.about_services USING btree (_parent_id);


--
-- Name: contact_contact_image_upload_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contact_contact_image_upload_idx ON public.contact USING btree (contact_image_upload_id);


--
-- Name: contact_social_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contact_social_links_order_idx ON public.contact_social_links USING btree (_order);


--
-- Name: contact_social_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX contact_social_links_parent_id_idx ON public.contact_social_links USING btree (_parent_id);


--
-- Name: home_featured_projects_image_upload_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_featured_projects_image_upload_idx ON public.home_featured_projects USING btree (image_upload_id);


--
-- Name: home_featured_projects_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_featured_projects_order_idx ON public.home_featured_projects USING btree (_order);


--
-- Name: home_featured_projects_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_featured_projects_parent_id_idx ON public.home_featured_projects USING btree (_parent_id);


--
-- Name: home_hero_logo_upload_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_hero_logo_upload_idx ON public.home USING btree (hero_logo_upload_id);


--
-- Name: home_manifesto_paragraphs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_manifesto_paragraphs_order_idx ON public.home_manifesto_paragraphs USING btree (_order);


--
-- Name: home_manifesto_paragraphs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_manifesto_paragraphs_parent_id_idx ON public.home_manifesto_paragraphs USING btree (_parent_id);


--
-- Name: home_manifesto_video_upload_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_manifesto_video_upload_idx ON public.home USING btree (manifesto_video_upload_id);


--
-- Name: home_marquee_projects_image_upload_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_marquee_projects_image_upload_idx ON public.home_marquee_projects USING btree (image_upload_id);


--
-- Name: home_marquee_projects_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_marquee_projects_order_idx ON public.home_marquee_projects USING btree (_order);


--
-- Name: home_marquee_projects_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_marquee_projects_parent_id_idx ON public.home_marquee_projects USING btree (_parent_id);


--
-- Name: media_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_created_at_idx ON public.media USING btree (created_at);


--
-- Name: media_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX media_filename_idx ON public.media USING btree (filename);


--
-- Name: media_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_updated_at_idx ON public.media USING btree (updated_at);


--
-- Name: payload_kv_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX payload_kv_key_idx ON public.payload_kv USING btree (key);


--
-- Name: payload_locked_documents_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_created_at_idx ON public.payload_locked_documents USING btree (created_at);


--
-- Name: payload_locked_documents_global_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_global_slug_idx ON public.payload_locked_documents USING btree (global_slug);


--
-- Name: payload_locked_documents_rels_media_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_media_id_idx ON public.payload_locked_documents_rels USING btree (media_id);


--
-- Name: payload_locked_documents_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_order_idx ON public.payload_locked_documents_rels USING btree ("order");


--
-- Name: payload_locked_documents_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_parent_idx ON public.payload_locked_documents_rels USING btree (parent_id);


--
-- Name: payload_locked_documents_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_path_idx ON public.payload_locked_documents_rels USING btree (path);


--
-- Name: payload_locked_documents_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_users_id_idx ON public.payload_locked_documents_rels USING btree (users_id);


--
-- Name: payload_locked_documents_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_updated_at_idx ON public.payload_locked_documents USING btree (updated_at);


--
-- Name: payload_migrations_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_created_at_idx ON public.payload_migrations USING btree (created_at);


--
-- Name: payload_migrations_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_updated_at_idx ON public.payload_migrations USING btree (updated_at);


--
-- Name: payload_preferences_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_created_at_idx ON public.payload_preferences USING btree (created_at);


--
-- Name: payload_preferences_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_key_idx ON public.payload_preferences USING btree (key);


--
-- Name: payload_preferences_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_order_idx ON public.payload_preferences_rels USING btree ("order");


--
-- Name: payload_preferences_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_parent_idx ON public.payload_preferences_rels USING btree (parent_id);


--
-- Name: payload_preferences_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_path_idx ON public.payload_preferences_rels USING btree (path);


--
-- Name: payload_preferences_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_users_id_idx ON public.payload_preferences_rels USING btree (users_id);


--
-- Name: payload_preferences_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_updated_at_idx ON public.payload_preferences USING btree (updated_at);


--
-- Name: users_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_created_at_idx ON public.users USING btree (created_at);


--
-- Name: users_email_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_email_idx ON public.users USING btree (email);


--
-- Name: users_sessions_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_order_idx ON public.users_sessions USING btree (_order);


--
-- Name: users_sessions_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_parent_id_idx ON public.users_sessions USING btree (_parent_id);


--
-- Name: users_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_updated_at_idx ON public.users USING btree (updated_at);


--
-- Name: work_work_projects_image_upload_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX work_work_projects_image_upload_idx ON public.work_work_projects USING btree (image_upload_id);


--
-- Name: work_work_projects_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX work_work_projects_order_idx ON public.work_work_projects USING btree (_order);


--
-- Name: work_work_projects_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX work_work_projects_parent_id_idx ON public.work_work_projects USING btree (_parent_id);


--
-- Name: about_about_collage about_about_collage_image_upload_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_about_collage
    ADD CONSTRAINT about_about_collage_image_upload_id_media_id_fk FOREIGN KEY (image_upload_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: about_about_collage about_about_collage_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_about_collage
    ADD CONSTRAINT about_about_collage_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.about(id) ON DELETE CASCADE;


--
-- Name: about_about_strip about_about_strip_image_upload_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_about_strip
    ADD CONSTRAINT about_about_strip_image_upload_id_media_id_fk FOREIGN KEY (image_upload_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: about_about_strip about_about_strip_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_about_strip
    ADD CONSTRAINT about_about_strip_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.about(id) ON DELETE CASCADE;


--
-- Name: about_clients about_clients_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_clients
    ADD CONSTRAINT about_clients_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.about(id) ON DELETE CASCADE;


--
-- Name: about_how_we_work_paragraphs about_how_we_work_paragraphs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_how_we_work_paragraphs
    ADD CONSTRAINT about_how_we_work_paragraphs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.about(id) ON DELETE CASCADE;


--
-- Name: about_industries about_industries_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_industries
    ADD CONSTRAINT about_industries_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.about(id) ON DELETE CASCADE;


--
-- Name: about_press about_press_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_press
    ADD CONSTRAINT about_press_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.about(id) ON DELETE CASCADE;


--
-- Name: about_services about_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_services
    ADD CONSTRAINT about_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.about(id) ON DELETE CASCADE;


--
-- Name: contact contact_contact_image_upload_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_contact_image_upload_id_media_id_fk FOREIGN KEY (contact_image_upload_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: contact_social_links contact_social_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_social_links
    ADD CONSTRAINT contact_social_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.contact(id) ON DELETE CASCADE;


--
-- Name: home_featured_projects home_featured_projects_image_upload_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_featured_projects
    ADD CONSTRAINT home_featured_projects_image_upload_id_media_id_fk FOREIGN KEY (image_upload_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home_featured_projects home_featured_projects_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_featured_projects
    ADD CONSTRAINT home_featured_projects_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home(id) ON DELETE CASCADE;


--
-- Name: home home_hero_logo_upload_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_hero_logo_upload_id_media_id_fk FOREIGN KEY (hero_logo_upload_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home_manifesto_paragraphs home_manifesto_paragraphs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_manifesto_paragraphs
    ADD CONSTRAINT home_manifesto_paragraphs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home(id) ON DELETE CASCADE;


--
-- Name: home home_manifesto_video_upload_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_manifesto_video_upload_id_media_id_fk FOREIGN KEY (manifesto_video_upload_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home_marquee_projects home_marquee_projects_image_upload_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_marquee_projects
    ADD CONSTRAINT home_marquee_projects_image_upload_id_media_id_fk FOREIGN KEY (image_upload_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home_marquee_projects home_marquee_projects_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_marquee_projects
    ADD CONSTRAINT home_marquee_projects_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.home(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_locked_documents(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_preferences(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: users_sessions users_sessions_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: work_work_projects work_work_projects_image_upload_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_work_projects
    ADD CONSTRAINT work_work_projects_image_upload_id_media_id_fk FOREIGN KEY (image_upload_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: work_work_projects work_work_projects_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_work_projects
    ADD CONSTRAINT work_work_projects_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.work(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict NYMOzREG1d5ZkWEDxiKxcNxUqupzPZXcJUyUcvNLiOH4rYYvtzqDdWxuGJQugZo

