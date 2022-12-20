--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
-- Name: about_aboutpage; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.about_aboutpage (
    page_ptr_id bigint NOT NULL,
    page_header text,
    location text,
    hours text,
    map_widget_url text,
    about_header text,
    about_text text,
    about_image_id bigint
);


ALTER TABLE public.about_aboutpage OWNER TO kyle;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.auth_group (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.auth_group OWNER TO kyle;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO kyle;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_group_permissions OWNER TO kyle;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO kyle;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.auth_permission (
    id bigint NOT NULL,
    content_type_id bigint,
    codename text,
    name text
);


ALTER TABLE public.auth_permission OWNER TO kyle;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO kyle;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.auth_user (
    id bigint NOT NULL,
    password text,
    last_login timestamp with time zone,
    is_superuser boolean,
    username text,
    last_name text,
    email text,
    is_staff boolean,
    is_active boolean,
    date_joined timestamp with time zone,
    first_name text
);


ALTER TABLE public.auth_user OWNER TO kyle;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id bigint,
    group_id bigint
);


ALTER TABLE public.auth_user_groups OWNER TO kyle;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO kyle;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO kyle;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_user_user_permissions OWNER TO kyle;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO kyle;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: banner_banner; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.banner_banner (
    page_ptr_id bigint NOT NULL,
    banner_text text,
    banner_subtext text,
    banner_image_id bigint,
    banner_link text
);


ALTER TABLE public.banner_banner OWNER TO kyle;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.django_admin_log (
    id bigint NOT NULL,
    object_id text,
    object_repr text,
    action_flag smallint,
    change_message text,
    content_type_id bigint,
    user_id bigint,
    action_time timestamp with time zone
);


ALTER TABLE public.django_admin_log OWNER TO kyle;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO kyle;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.django_content_type (
    id bigint NOT NULL,
    app_label text,
    model text
);


ALTER TABLE public.django_content_type OWNER TO kyle;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO kyle;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app text,
    name text,
    applied timestamp with time zone
);


ALTER TABLE public.django_migrations OWNER TO kyle;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO kyle;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.django_session (
    session_key text NOT NULL,
    session_data text,
    expire_date timestamp with time zone
);


ALTER TABLE public.django_session OWNER TO kyle;

--
-- Name: events_event; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.events_event (
    page_ptr_id bigint NOT NULL,
    start_date date,
    description text,
    end_date date,
    end_time time without time zone,
    location text,
    recurrence text,
    start_time time without time zone,
    name text,
    store_link text
);


ALTER TABLE public.events_event OWNER TO kyle;

--
-- Name: home_homepage; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.home_homepage (
    page_ptr_id bigint NOT NULL,
    banner_image_id bigint,
    banner_text text
);


ALTER TABLE public.home_homepage OWNER TO kyle;

--
-- Name: landing_landingpage; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.landing_landingpage (
    page_ptr_id bigint NOT NULL,
    hero_text text,
    hero_image_id bigint,
    sub_text_one text,
    sub_text_two text,
    whats_new_text text,
    whats_new_header text,
    hero_image_description text
);


ALTER TABLE public.landing_landingpage OWNER TO kyle;

--
-- Name: navbar_navbar; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.navbar_navbar (
    page_ptr_id bigint NOT NULL,
    nav_text text,
    nav_button_id bigint,
    logo_id bigint
);


ALTER TABLE public.navbar_navbar OWNER TO kyle;

--
-- Name: products_newproducts; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.products_newproducts (
    page_ptr_id bigint NOT NULL,
    new_products text
);


ALTER TABLE public.products_newproducts OWNER TO kyle;

--
-- Name: singles_singlespage; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.singles_singlespage (
    page_ptr_id bigint NOT NULL,
    header text,
    text text,
    sub_text_one text,
    logo_1_id bigint,
    logo_2_id bigint,
    logo_3_id bigint,
    sub_text_two text
);


ALTER TABLE public.singles_singlespage OWNER TO kyle;

--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.taggit_tag (
    id bigint NOT NULL,
    name text,
    slug text
);


ALTER TABLE public.taggit_tag OWNER TO kyle;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.taggit_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO kyle;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.taggit_taggeditem (
    id bigint NOT NULL,
    object_id bigint,
    content_type_id bigint,
    tag_id bigint
);


ALTER TABLE public.taggit_taggeditem OWNER TO kyle;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO kyle;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: wagtail_headless_preview_pagepreview; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtail_headless_preview_pagepreview (
    id bigint NOT NULL,
    token text,
    content_json text,
    created_at date,
    content_type_id bigint
);


ALTER TABLE public.wagtail_headless_preview_pagepreview OWNER TO kyle;

--
-- Name: wagtail_headless_preview_pagepreview_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtail_headless_preview_pagepreview_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtail_headless_preview_pagepreview_id_seq OWNER TO kyle;

--
-- Name: wagtail_headless_preview_pagepreview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtail_headless_preview_pagepreview_id_seq OWNED BY public.wagtail_headless_preview_pagepreview.id;


--
-- Name: wagtailadmin_admin; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailadmin_admin (
    id bigint NOT NULL
);


ALTER TABLE public.wagtailadmin_admin OWNER TO kyle;

--
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailadmin_admin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailadmin_admin_id_seq OWNER TO kyle;

--
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailadmin_admin_id_seq OWNED BY public.wagtailadmin_admin.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_collection (
    id bigint NOT NULL,
    path text,
    depth bigint,
    numchild bigint,
    name text
);


ALTER TABLE public.wagtailcore_collection OWNER TO kyle;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collection_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_collection_id_seq OWNED BY public.wagtailcore_collection.id;


--
-- Name: wagtailcore_collectionviewrestriction; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_collectionviewrestriction (
    id bigint NOT NULL,
    restriction_type text,
    password text,
    collection_id bigint
);


ALTER TABLE public.wagtailcore_collectionviewrestriction OWNER TO kyle;

--
-- Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_collectionviewrestriction_groups (
    id bigint NOT NULL,
    collectionviewrestriction_id bigint,
    group_id bigint
);


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups OWNER TO kyle;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY public.wagtailcore_collectionviewrestriction_groups.id;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq OWNED BY public.wagtailcore_collectionviewrestriction.id;


--
-- Name: wagtailcore_comment; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_comment (
    id bigint NOT NULL,
    text text,
    contentpath text,
    "position" text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    resolved_at timestamp with time zone,
    page_id bigint,
    resolved_by_id bigint,
    user_id bigint,
    revision_created_id bigint
);


ALTER TABLE public.wagtailcore_comment OWNER TO kyle;

--
-- Name: wagtailcore_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_comment_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_comment_id_seq OWNED BY public.wagtailcore_comment.id;


--
-- Name: wagtailcore_commentreply; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_commentreply (
    id bigint NOT NULL,
    text text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    comment_id bigint,
    user_id bigint
);


ALTER TABLE public.wagtailcore_commentreply OWNER TO kyle;

--
-- Name: wagtailcore_commentreply_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_commentreply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_commentreply_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_commentreply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_commentreply_id_seq OWNED BY public.wagtailcore_commentreply.id;


--
-- Name: wagtailcore_groupapprovaltask; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_groupapprovaltask (
    task_ptr_id bigint NOT NULL
);


ALTER TABLE public.wagtailcore_groupapprovaltask OWNER TO kyle;

--
-- Name: wagtailcore_groupapprovaltask_groups; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_groupapprovaltask_groups (
    id bigint NOT NULL,
    groupapprovaltask_id bigint,
    group_id bigint
);


ALTER TABLE public.wagtailcore_groupapprovaltask_groups OWNER TO kyle;

--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupapprovaltask_groups_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq OWNED BY public.wagtailcore_groupapprovaltask_groups.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_groupcollectionpermission (
    id bigint NOT NULL,
    collection_id bigint,
    group_id bigint,
    permission_id bigint
);


ALTER TABLE public.wagtailcore_groupcollectionpermission OWNER TO kyle;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupcollectionpermission_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq OWNED BY public.wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_grouppagepermission (
    id bigint NOT NULL,
    permission_type text,
    group_id bigint,
    page_id bigint
);


ALTER TABLE public.wagtailcore_grouppagepermission OWNER TO kyle;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_grouppagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_grouppagepermission_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_grouppagepermission_id_seq OWNED BY public.wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_locale; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_locale (
    id bigint NOT NULL,
    language_code text
);


ALTER TABLE public.wagtailcore_locale OWNER TO kyle;

--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_locale_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_locale_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_locale_id_seq OWNED BY public.wagtailcore_locale.id;


--
-- Name: wagtailcore_modellogentry; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_modellogentry (
    id bigint NOT NULL,
    label text,
    action text,
    "timestamp" timestamp with time zone,
    content_changed boolean,
    deleted boolean,
    object_id text,
    content_type_id bigint,
    user_id bigint,
    uuid text,
    data text,
    revision_id bigint
);


ALTER TABLE public.wagtailcore_modellogentry OWNER TO kyle;

--
-- Name: wagtailcore_modellogentry_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_modellogentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_modellogentry_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_modellogentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_modellogentry_id_seq OWNED BY public.wagtailcore_modellogentry.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_page (
    id bigint NOT NULL,
    path text,
    depth bigint,
    numchild bigint,
    title text,
    slug text,
    live boolean,
    has_unpublished_changes boolean,
    url_path text,
    seo_title text,
    show_in_menus boolean,
    search_description text,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean,
    content_type_id bigint,
    owner_id bigint,
    locked boolean,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id bigint,
    last_published_at timestamp with time zone,
    draft_title text,
    locked_at timestamp with time zone,
    locked_by_id bigint,
    locale_id bigint,
    translation_key text,
    alias_of_id bigint,
    latest_revision_id bigint
);


ALTER TABLE public.wagtailcore_page OWNER TO kyle;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_page_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_page_id_seq OWNED BY public.wagtailcore_page.id;


--
-- Name: wagtailcore_pagelogentry; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_pagelogentry (
    id bigint NOT NULL,
    label text,
    action text,
    "timestamp" timestamp with time zone,
    content_changed boolean,
    deleted boolean,
    content_type_id bigint,
    page_id bigint,
    revision_id bigint,
    user_id bigint,
    uuid text,
    data text
);


ALTER TABLE public.wagtailcore_pagelogentry OWNER TO kyle;

--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_pagelogentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagelogentry_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_pagelogentry_id_seq OWNED BY public.wagtailcore_pagelogentry.id;


--
-- Name: wagtailcore_pagesubscription; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_pagesubscription (
    id bigint NOT NULL,
    comment_notifications boolean,
    page_id bigint,
    user_id bigint
);


ALTER TABLE public.wagtailcore_pagesubscription OWNER TO kyle;

--
-- Name: wagtailcore_pagesubscription_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_pagesubscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagesubscription_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_pagesubscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_pagesubscription_id_seq OWNED BY public.wagtailcore_pagesubscription.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_pageviewrestriction (
    id bigint NOT NULL,
    password text,
    page_id bigint,
    restriction_type text
);


ALTER TABLE public.wagtailcore_pageviewrestriction OWNER TO kyle;

--
-- Name: wagtailcore_pageviewrestriction_groups; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_pageviewrestriction_groups (
    id bigint NOT NULL,
    pageviewrestriction_id bigint,
    group_id bigint
);


ALTER TABLE public.wagtailcore_pageviewrestriction_groups OWNER TO kyle;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_groups_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq OWNED BY public.wagtailcore_pageviewrestriction_groups.id;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_id_seq OWNED BY public.wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_referenceindex; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_referenceindex (
    id bigint NOT NULL,
    object_id text,
    to_object_id text,
    model_path text,
    content_path text,
    content_path_hash text,
    base_content_type_id bigint,
    content_type_id bigint,
    to_content_type_id bigint
);


ALTER TABLE public.wagtailcore_referenceindex OWNER TO kyle;

--
-- Name: wagtailcore_referenceindex_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_referenceindex_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_referenceindex_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_referenceindex_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_referenceindex_id_seq OWNED BY public.wagtailcore_referenceindex.id;


--
-- Name: wagtailcore_revision; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_revision (
    id bigint NOT NULL,
    submitted_for_moderation boolean,
    created_at timestamp with time zone,
    approved_go_live_at timestamp with time zone,
    user_id bigint,
    content text,
    object_id text,
    content_type_id bigint,
    base_content_type_id bigint,
    object_str text
);


ALTER TABLE public.wagtailcore_revision OWNER TO kyle;

--
-- Name: wagtailcore_revision_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_revision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_revision_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_revision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_revision_id_seq OWNED BY public.wagtailcore_revision.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_site (
    id bigint NOT NULL,
    hostname text,
    port bigint,
    is_default_site boolean,
    root_page_id bigint,
    site_name text
);


ALTER TABLE public.wagtailcore_site OWNER TO kyle;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_site_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_site_id_seq OWNED BY public.wagtailcore_site.id;


--
-- Name: wagtailcore_task; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_task (
    id bigint NOT NULL,
    name text,
    active boolean,
    content_type_id bigint
);


ALTER TABLE public.wagtailcore_task OWNER TO kyle;

--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_task_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_task_id_seq OWNED BY public.wagtailcore_task.id;


--
-- Name: wagtailcore_taskstate; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_taskstate (
    id bigint NOT NULL,
    status text,
    started_at timestamp with time zone,
    finished_at timestamp with time zone,
    content_type_id bigint,
    task_id bigint,
    workflow_state_id bigint,
    finished_by_id bigint,
    comment text,
    page_revision_id bigint
);


ALTER TABLE public.wagtailcore_taskstate OWNER TO kyle;

--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_taskstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_taskstate_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_taskstate_id_seq OWNED BY public.wagtailcore_taskstate.id;


--
-- Name: wagtailcore_workflow; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_workflow (
    id bigint NOT NULL,
    name text,
    active boolean
);


ALTER TABLE public.wagtailcore_workflow OWNER TO kyle;

--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_workflow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflow_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_workflow_id_seq OWNED BY public.wagtailcore_workflow.id;


--
-- Name: wagtailcore_workflowpage; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_workflowpage (
    page_id bigint NOT NULL,
    workflow_id bigint
);


ALTER TABLE public.wagtailcore_workflowpage OWNER TO kyle;

--
-- Name: wagtailcore_workflowstate; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_workflowstate (
    id bigint NOT NULL,
    status text,
    created_at timestamp with time zone,
    current_task_state_id bigint,
    page_id bigint,
    requested_by_id bigint,
    workflow_id bigint
);


ALTER TABLE public.wagtailcore_workflowstate OWNER TO kyle;

--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_workflowstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflowstate_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_workflowstate_id_seq OWNED BY public.wagtailcore_workflowstate.id;


--
-- Name: wagtailcore_workflowtask; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailcore_workflowtask (
    id bigint NOT NULL,
    sort_order bigint,
    task_id bigint,
    workflow_id bigint
);


ALTER TABLE public.wagtailcore_workflowtask OWNER TO kyle;

--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailcore_workflowtask_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflowtask_id_seq OWNER TO kyle;

--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailcore_workflowtask_id_seq OWNED BY public.wagtailcore_workflowtask.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtaildocs_document (
    id bigint NOT NULL,
    title text,
    file text,
    created_at timestamp with time zone,
    uploaded_by_user_id bigint,
    collection_id bigint,
    file_size bigint,
    file_hash text
);


ALTER TABLE public.wagtaildocs_document OWNER TO kyle;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtaildocs_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_document_id_seq OWNER TO kyle;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtaildocs_document_id_seq OWNED BY public.wagtaildocs_document.id;


--
-- Name: wagtaildocs_uploadeddocument; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtaildocs_uploadeddocument (
    id bigint NOT NULL,
    file text,
    uploaded_by_user_id bigint
);


ALTER TABLE public.wagtaildocs_uploadeddocument OWNER TO kyle;

--
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtaildocs_uploadeddocument_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_uploadeddocument_id_seq OWNER TO kyle;

--
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtaildocs_uploadeddocument_id_seq OWNED BY public.wagtaildocs_uploadeddocument.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailembeds_embed (
    id bigint NOT NULL,
    url text,
    max_width smallint,
    type text,
    html text,
    title text,
    author_name text,
    provider_name text,
    width bigint,
    height bigint,
    last_updated timestamp with time zone,
    hash text,
    thumbnail_url text,
    cache_until timestamp with time zone
);


ALTER TABLE public.wagtailembeds_embed OWNER TO kyle;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailembeds_embed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailembeds_embed_id_seq OWNER TO kyle;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailembeds_embed_id_seq OWNED BY public.wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailforms_formsubmission (
    id bigint NOT NULL,
    submit_time timestamp with time zone,
    page_id bigint,
    form_data text
);


ALTER TABLE public.wagtailforms_formsubmission OWNER TO kyle;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailforms_formsubmission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailforms_formsubmission_id_seq OWNER TO kyle;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailforms_formsubmission_id_seq OWNED BY public.wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailimages_image (
    id bigint NOT NULL,
    title text,
    file text,
    width bigint,
    height bigint,
    created_at timestamp with time zone,
    focal_point_x bigint,
    focal_point_y bigint,
    focal_point_width bigint,
    focal_point_height bigint,
    uploaded_by_user_id bigint,
    file_size bigint,
    collection_id bigint,
    file_hash text
);


ALTER TABLE public.wagtailimages_image OWNER TO kyle;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailimages_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_image_id_seq OWNER TO kyle;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailimages_image_id_seq OWNED BY public.wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailimages_rendition (
    id bigint NOT NULL,
    file text,
    width bigint,
    height bigint,
    focal_point_key text,
    filter_spec text,
    image_id bigint
);


ALTER TABLE public.wagtailimages_rendition OWNER TO kyle;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailimages_rendition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_rendition_id_seq OWNER TO kyle;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailimages_rendition_id_seq OWNED BY public.wagtailimages_rendition.id;


--
-- Name: wagtailimages_uploadedimage; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailimages_uploadedimage (
    id bigint NOT NULL,
    file text,
    uploaded_by_user_id bigint
);


ALTER TABLE public.wagtailimages_uploadedimage OWNER TO kyle;

--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailimages_uploadedimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_uploadedimage_id_seq OWNER TO kyle;

--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailimages_uploadedimage_id_seq OWNED BY public.wagtailimages_uploadedimage.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailredirects_redirect (
    id bigint NOT NULL,
    old_path text,
    is_permanent boolean,
    redirect_link text,
    redirect_page_id bigint,
    site_id bigint,
    automatically_created boolean,
    created_at timestamp with time zone,
    redirect_page_route_path text
);


ALTER TABLE public.wagtailredirects_redirect OWNER TO kyle;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailredirects_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailredirects_redirect_id_seq OWNER TO kyle;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailredirects_redirect_id_seq OWNED BY public.wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_indexentry; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailsearch_indexentry (
    id bigint NOT NULL,
    object_id text,
    title_norm real,
    content_type_id bigint,
    autocomplete text,
    body text,
    title text
);


ALTER TABLE public.wagtailsearch_indexentry OWNER TO kyle;

--
-- Name: wagtailsearch_indexentry_fts; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailsearch_indexentry_fts (
    autocomplete text,
    body text,
    title text
);


ALTER TABLE public.wagtailsearch_indexentry_fts OWNER TO kyle;

--
-- Name: wagtailsearch_indexentry_fts_config; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailsearch_indexentry_fts_config (
    k text NOT NULL,
    v text
);


ALTER TABLE public.wagtailsearch_indexentry_fts_config OWNER TO kyle;

--
-- Name: wagtailsearch_indexentry_fts_content; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailsearch_indexentry_fts_content (
    id bigint NOT NULL,
    c0 text,
    c1 text,
    c2 text
);


ALTER TABLE public.wagtailsearch_indexentry_fts_content OWNER TO kyle;

--
-- Name: wagtailsearch_indexentry_fts_data; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailsearch_indexentry_fts_data (
    id bigint NOT NULL,
    block bytea
);


ALTER TABLE public.wagtailsearch_indexentry_fts_data OWNER TO kyle;

--
-- Name: wagtailsearch_indexentry_fts_docsize; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailsearch_indexentry_fts_docsize (
    id bigint NOT NULL,
    sz bytea
);


ALTER TABLE public.wagtailsearch_indexentry_fts_docsize OWNER TO kyle;

--
-- Name: wagtailsearch_indexentry_fts_idx; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailsearch_indexentry_fts_idx (
    segid text NOT NULL,
    term text NOT NULL,
    pgno text
);


ALTER TABLE public.wagtailsearch_indexentry_fts_idx OWNER TO kyle;

--
-- Name: wagtailsearch_indexentry_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailsearch_indexentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_indexentry_id_seq OWNER TO kyle;

--
-- Name: wagtailsearch_indexentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailsearch_indexentry_id_seq OWNED BY public.wagtailsearch_indexentry.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailsearch_query (
    id bigint NOT NULL,
    query_string text
);


ALTER TABLE public.wagtailsearch_query OWNER TO kyle;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailsearch_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_query_id_seq OWNER TO kyle;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailsearch_query_id_seq OWNED BY public.wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailsearch_querydailyhits (
    id bigint NOT NULL,
    date date,
    hits bigint,
    query_id bigint
);


ALTER TABLE public.wagtailsearch_querydailyhits OWNER TO kyle;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailsearch_querydailyhits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_querydailyhits_id_seq OWNER TO kyle;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailsearch_querydailyhits_id_seq OWNED BY public.wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: kyle
--

CREATE TABLE public.wagtailusers_userprofile (
    id bigint NOT NULL,
    submitted_notifications boolean,
    approved_notifications boolean,
    rejected_notifications boolean,
    user_id bigint,
    preferred_language text,
    current_time_zone text,
    avatar text,
    updated_comments_notifications boolean,
    dismissibles text
);


ALTER TABLE public.wagtailusers_userprofile OWNER TO kyle;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: kyle
--

CREATE SEQUENCE public.wagtailusers_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailusers_userprofile_id_seq OWNER TO kyle;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyle
--

ALTER SEQUENCE public.wagtailusers_userprofile_id_seq OWNED BY public.wagtailusers_userprofile.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: wagtail_headless_preview_pagepreview id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtail_headless_preview_pagepreview ALTER COLUMN id SET DEFAULT nextval('public.wagtail_headless_preview_pagepreview_id_seq'::regclass);


--
-- Name: wagtailadmin_admin id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailadmin_admin ALTER COLUMN id SET DEFAULT nextval('public.wagtailadmin_admin_id_seq'::regclass);


--
-- Name: wagtailcore_collection id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collection_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_comment id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_comment ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_comment_id_seq'::regclass);


--
-- Name: wagtailcore_commentreply id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_commentreply ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_commentreply_id_seq'::regclass);


--
-- Name: wagtailcore_groupapprovaltask_groups id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupapprovaltask_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupcollectionpermission id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: wagtailcore_grouppagepermission id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: wagtailcore_locale id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_locale ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_locale_id_seq'::regclass);


--
-- Name: wagtailcore_modellogentry id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_modellogentry ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_modellogentry_id_seq'::regclass);


--
-- Name: wagtailcore_page id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_page_id_seq'::regclass);


--
-- Name: wagtailcore_pagelogentry id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagelogentry_id_seq'::regclass);


--
-- Name: wagtailcore_pagesubscription id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pagesubscription ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagesubscription_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_referenceindex id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_referenceindex ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_referenceindex_id_seq'::regclass);


--
-- Name: wagtailcore_revision id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_revision ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_revision_id_seq'::regclass);


--
-- Name: wagtailcore_site id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_site_id_seq'::regclass);


--
-- Name: wagtailcore_task id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_task ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_task_id_seq'::regclass);


--
-- Name: wagtailcore_taskstate id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_taskstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_taskstate_id_seq'::regclass);


--
-- Name: wagtailcore_workflow id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflow ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflow_id_seq'::regclass);


--
-- Name: wagtailcore_workflowstate id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowstate_id_seq'::regclass);


--
-- Name: wagtailcore_workflowtask id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowtask ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowtask_id_seq'::regclass);


--
-- Name: wagtaildocs_document id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_document_id_seq'::regclass);


--
-- Name: wagtaildocs_uploadeddocument id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_uploadeddocument_id_seq'::regclass);


--
-- Name: wagtailembeds_embed id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('public.wagtailembeds_embed_id_seq'::regclass);


--
-- Name: wagtailforms_formsubmission id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('public.wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: wagtailimages_image id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_image_id_seq'::regclass);


--
-- Name: wagtailimages_rendition id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_rendition_id_seq'::regclass);


--
-- Name: wagtailimages_uploadedimage id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_uploadedimage_id_seq'::regclass);


--
-- Name: wagtailredirects_redirect id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('public.wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: wagtailsearch_indexentry id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_indexentry ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_indexentry_id_seq'::regclass);


--
-- Name: wagtailsearch_query id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_query_id_seq'::regclass);


--
-- Name: wagtailsearch_querydailyhits id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: wagtailusers_userprofile id; Type: DEFAULT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('public.wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: about_aboutpage; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.about_aboutpage (page_ptr_id, page_header, location, hours, map_widget_url, about_header, about_text, about_image_id) FROM stdin;
36	<h1 data-block-key="tb5sa">About Black Moon Games</h1>	<h2 data-block-key="5n770">Black Moon Games</h2><h4 data-block-key="c74s5">Lebanon&#x27;s Friendly</h4><h4 data-block-key="ck8i">Local Game Store!</h4><p data-block-key="fpj7r">2 Mascoma Street, #3</p><p data-block-key="bm12f">Lebanon, NH 03766</p><p data-block-key="btc8a"><i>(603) 678-8643</i></p><p data-block-key="71nj7">blackmoonnh@gmail.com</p><p data-block-key="fs2th"><i>Est. 2014</i></p>	<h2 data-block-key="9e0x2">Store Hours</h2><ul><li data-block-key="330io">Monday 12PM - 7PM</li><li data-block-key="dsgu2">Tuesday 12PM - 7PM</li><li data-block-key="340g">Wednesday 12PM - 7PM</li><li data-block-key="2t7qb">Thursday 12PM - 9PM</li><li data-block-key="fnj7h">Friday 12PM - 10PM</li><li data-block-key="8snti">Saturday 10AM - 8PM</li><li data-block-key="evq3d">Sunday 12PM - 6PM</li></ul>	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546	<h3 data-block-key="cmoxl">We love games.</h3>	<p data-block-key="usqw3"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><p data-block-key="3do4h">Now a prominent fixture of the community in New Hampshire’s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</p><p data-block-key="fa3v9">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</p><p data-block-key="cnhdi">We hope to see you soon!</p><p data-block-key="1hjnm"></p><hr/><p data-block-key="d0hta"></p><p data-block-key="6jiau"><i>-- Tony Vandenberg, Owner</i></p>	33
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	2	1
2	1	1
3	2	2
4	2	3
5	2	4
6	1	2
7	1	3
8	1	4
9	2	5
10	1	5
11	2	8
12	2	6
13	2	7
14	1	8
15	1	6
16	1	7
17	2	9
18	1	9
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.auth_permission (id, content_type_id, codename, name) FROM stdin;
1	3	access_admin	Can access Wagtail admin
2	5	add_document	Can add document
3	5	change_document	Can change document
4	5	delete_document	Can delete document
5	5	choose_document	Can choose document
6	6	add_image	Can add image
7	6	change_image	Can change image
8	6	delete_image	Can delete image
9	6	choose_image	Can choose image
10	2	add_homepage	Can add home page
11	2	change_homepage	Can change home page
12	2	delete_homepage	Can delete home page
13	2	view_homepage	Can view home page
14	7	add_formsubmission	Can add form submission
15	7	change_formsubmission	Can change form submission
16	7	delete_formsubmission	Can delete form submission
17	7	view_formsubmission	Can view form submission
18	8	add_redirect	Can add redirect
19	8	change_redirect	Can change redirect
20	8	delete_redirect	Can delete redirect
21	8	view_redirect	Can view redirect
22	9	add_embed	Can add embed
23	9	change_embed	Can change embed
24	9	delete_embed	Can delete embed
25	9	view_embed	Can view embed
26	10	add_userprofile	Can add user profile
27	10	change_userprofile	Can change user profile
28	10	delete_userprofile	Can delete user profile
29	10	view_userprofile	Can view user profile
30	5	view_document	Can view document
31	11	add_uploadeddocument	Can add uploaded document
32	11	change_uploadeddocument	Can change uploaded document
33	11	delete_uploadeddocument	Can delete uploaded document
34	11	view_uploadeddocument	Can view uploaded document
35	6	view_image	Can view image
36	12	add_rendition	Can add rendition
37	12	change_rendition	Can change rendition
38	12	delete_rendition	Can delete rendition
39	12	view_rendition	Can view rendition
40	13	add_uploadedimage	Can add uploaded image
41	13	change_uploadedimage	Can change uploaded image
42	13	delete_uploadedimage	Can delete uploaded image
43	13	view_uploadedimage	Can view uploaded image
44	14	add_query	Can add query
45	14	change_query	Can change query
46	14	delete_query	Can delete query
47	14	view_query	Can view query
48	15	add_querydailyhits	Can add Query Daily Hits
49	15	change_querydailyhits	Can change Query Daily Hits
50	15	delete_querydailyhits	Can delete Query Daily Hits
51	15	view_querydailyhits	Can view Query Daily Hits
52	16	add_indexentry	Can add index entry
53	16	change_indexentry	Can change index entry
54	16	delete_indexentry	Can delete index entry
55	16	view_indexentry	Can view index entry
56	17	add_sqliteftsindexentry	Can add sqliteftsindexentry
57	17	change_sqliteftsindexentry	Can change sqliteftsindexentry
58	17	delete_sqliteftsindexentry	Can delete sqliteftsindexentry
59	17	view_sqliteftsindexentry	Can view sqliteftsindexentry
60	1	add_page	Can add page
61	1	change_page	Can change page
62	1	delete_page	Can delete page
63	1	view_page	Can view page
64	18	add_grouppagepermission	Can add group page permission
65	18	change_grouppagepermission	Can change group page permission
66	18	delete_grouppagepermission	Can delete group page permission
67	18	view_grouppagepermission	Can view group page permission
68	19	add_pageviewrestriction	Can add page view restriction
69	19	change_pageviewrestriction	Can change page view restriction
70	19	delete_pageviewrestriction	Can delete page view restriction
71	19	view_pageviewrestriction	Can view page view restriction
72	20	add_site	Can add site
73	20	change_site	Can change site
74	20	delete_site	Can delete site
75	20	view_site	Can view site
76	21	add_collection	Can add collection
77	21	change_collection	Can change collection
78	21	delete_collection	Can delete collection
79	21	view_collection	Can view collection
80	22	add_groupcollectionpermission	Can add group collection permission
81	22	change_groupcollectionpermission	Can change group collection permission
82	22	delete_groupcollectionpermission	Can delete group collection permission
83	22	view_groupcollectionpermission	Can view group collection permission
84	23	add_collectionviewrestriction	Can add collection view restriction
85	23	change_collectionviewrestriction	Can change collection view restriction
86	23	delete_collectionviewrestriction	Can delete collection view restriction
87	23	view_collectionviewrestriction	Can view collection view restriction
88	24	add_task	Can add task
89	24	change_task	Can change task
90	24	delete_task	Can delete task
91	24	view_task	Can view task
92	25	add_taskstate	Can add Task state
93	25	change_taskstate	Can change Task state
94	25	delete_taskstate	Can delete Task state
95	25	view_taskstate	Can view Task state
96	26	add_workflow	Can add workflow
97	26	change_workflow	Can change workflow
98	26	delete_workflow	Can delete workflow
99	26	view_workflow	Can view workflow
100	4	add_groupapprovaltask	Can add Group approval task
101	4	change_groupapprovaltask	Can change Group approval task
102	4	delete_groupapprovaltask	Can delete Group approval task
103	4	view_groupapprovaltask	Can view Group approval task
104	27	add_workflowstate	Can add Workflow state
105	27	change_workflowstate	Can change Workflow state
106	27	delete_workflowstate	Can delete Workflow state
107	27	view_workflowstate	Can view Workflow state
108	28	add_workflowpage	Can add workflow page
109	28	change_workflowpage	Can change workflow page
110	28	delete_workflowpage	Can delete workflow page
111	28	view_workflowpage	Can view workflow page
112	29	add_workflowtask	Can add workflow task order
113	29	change_workflowtask	Can change workflow task order
114	29	delete_workflowtask	Can delete workflow task order
115	29	view_workflowtask	Can view workflow task order
116	30	add_pagelogentry	Can add page log entry
117	30	change_pagelogentry	Can change page log entry
118	30	delete_pagelogentry	Can delete page log entry
119	30	view_pagelogentry	Can view page log entry
120	31	add_locale	Can add locale
121	31	change_locale	Can change locale
122	31	delete_locale	Can delete locale
123	31	view_locale	Can view locale
124	32	add_comment	Can add comment
125	32	change_comment	Can change comment
126	32	delete_comment	Can delete comment
127	32	view_comment	Can view comment
128	33	add_commentreply	Can add comment reply
129	33	change_commentreply	Can change comment reply
130	33	delete_commentreply	Can delete comment reply
131	33	view_commentreply	Can view comment reply
132	34	add_pagesubscription	Can add page subscription
133	34	change_pagesubscription	Can change page subscription
134	34	delete_pagesubscription	Can delete page subscription
135	34	view_pagesubscription	Can view page subscription
136	35	add_modellogentry	Can add model log entry
137	35	change_modellogentry	Can change model log entry
138	35	delete_modellogentry	Can delete model log entry
139	35	view_modellogentry	Can view model log entry
140	36	add_revision	Can add revision
141	36	change_revision	Can change revision
142	36	delete_revision	Can delete revision
143	36	view_revision	Can view revision
144	37	add_referenceindex	Can add reference index
145	37	change_referenceindex	Can change reference index
146	37	delete_referenceindex	Can delete reference index
147	37	view_referenceindex	Can view reference index
148	38	add_tag	Can add tag
149	38	change_tag	Can change tag
150	38	delete_tag	Can delete tag
151	38	view_tag	Can view tag
152	39	add_taggeditem	Can add tagged item
153	39	change_taggeditem	Can change tagged item
154	39	delete_taggeditem	Can delete tagged item
155	39	view_taggeditem	Can view tagged item
156	40	add_logentry	Can add log entry
157	40	change_logentry	Can change log entry
158	40	delete_logentry	Can delete log entry
159	40	view_logentry	Can view log entry
160	41	add_permission	Can add permission
161	41	change_permission	Can change permission
162	41	delete_permission	Can delete permission
163	41	view_permission	Can view permission
164	42	add_group	Can add group
165	42	change_group	Can change group
166	42	delete_group	Can delete group
167	42	view_group	Can view group
168	43	add_user	Can add user
169	43	change_user	Can change user
170	43	delete_user	Can delete user
171	43	view_user	Can view user
172	44	add_contenttype	Can add content type
173	44	change_contenttype	Can change content type
174	44	delete_contenttype	Can delete content type
175	44	view_contenttype	Can view content type
176	45	add_session	Can add session
177	45	change_session	Can change session
178	45	delete_session	Can delete session
179	45	view_session	Can view session
180	2	add_landingpage	Can add landing page
181	2	change_landingpage	Can change landing page
182	2	delete_landingpage	Can delete landing page
183	2	view_landingpage	Can view landing page
184	46	add_homepage	Can add home page
185	46	change_homepage	Can change home page
186	46	delete_homepage	Can delete home page
187	46	view_homepage	Can view home page
188	47	add_navbar	Can add nav bar
189	47	change_navbar	Can change nav bar
190	47	delete_navbar	Can delete nav bar
191	47	view_navbar	Can view nav bar
192	48	add_landingpage	Can add landing page
193	48	change_landingpage	Can change landing page
194	48	delete_landingpage	Can delete landing page
195	48	view_landingpage	Can view landing page
196	49	add_banner	Can add banner
197	49	change_banner	Can change banner
198	49	delete_banner	Can delete banner
199	49	view_banner	Can view banner
200	50	add_newproducts	Can add new products
201	50	change_newproducts	Can change new products
202	50	delete_newproducts	Can delete new products
203	50	view_newproducts	Can view new products
204	51	add_pagepreview	Can add page preview
205	51	change_pagepreview	Can change page preview
206	51	delete_pagepreview	Can delete page preview
207	51	view_pagepreview	Can view page preview
208	52	add_singlespage	Can add singles page
209	52	change_singlespage	Can change singles page
210	52	delete_singlespage	Can delete singles page
211	52	view_singlespage	Can view singles page
212	53	add_event	Can add event
213	53	change_event	Can change event
214	53	delete_event	Can delete event
215	53	view_event	Can view event
216	54	add_aboutpage	Can add about page
217	54	change_aboutpage	Can change about page
218	54	delete_aboutpage	Can delete about page
219	54	view_aboutpage	Can view about page
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) FROM stdin;
1	pbkdf2_sha256$390000$9rJAN8jj6ir7r2j30Jj91H$2CY6LKbC7NO2wfN+V5BwEoOosr3ihAiwSO+W0IfzkcY=	2022-12-20 00:26:03.152386-05	t	admin	admin	ksmontville@gmail.com	t	t	2022-11-27 15:22:22.896389-05	admin
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: banner_banner; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.banner_banner (page_ptr_id, banner_text, banner_subtext, banner_image_id, banner_link) FROM stdin;
8	<h5 data-block-key="fdq72">We are moving in February, 2023!</h5>	<p data-block-key="lswbq">Check out our new storefront in the North Country Plaza on route 12A in West Lebanon!</p><p data-block-key="ckfir">More product, more events, more games.</p><p data-block-key="egcgt">267 Plainfield Road, West Lebanon, NH 03784</p>	\N	https://goo.gl/maps/nXnTqYoqGUUTVg93A
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	home	landingpage
3	wagtailadmin	admin
4	wagtailcore	groupapprovaltask
5	wagtaildocs	document
6	wagtailimages	image
7	wagtailforms	formsubmission
8	wagtailredirects	redirect
9	wagtailembeds	embed
10	wagtailusers	userprofile
11	wagtaildocs	uploadeddocument
12	wagtailimages	rendition
13	wagtailimages	uploadedimage
14	wagtailsearch	query
15	wagtailsearch	querydailyhits
16	wagtailsearch	indexentry
17	wagtailsearch	sqliteftsindexentry
18	wagtailcore	grouppagepermission
19	wagtailcore	pageviewrestriction
20	wagtailcore	site
21	wagtailcore	collection
22	wagtailcore	groupcollectionpermission
23	wagtailcore	collectionviewrestriction
24	wagtailcore	task
25	wagtailcore	taskstate
26	wagtailcore	workflow
27	wagtailcore	workflowstate
28	wagtailcore	workflowpage
29	wagtailcore	workflowtask
30	wagtailcore	pagelogentry
31	wagtailcore	locale
32	wagtailcore	comment
33	wagtailcore	commentreply
34	wagtailcore	pagesubscription
35	wagtailcore	modellogentry
36	wagtailcore	revision
37	wagtailcore	referenceindex
38	taggit	tag
39	taggit	taggeditem
40	admin	logentry
41	auth	permission
42	auth	group
43	auth	user
44	contenttypes	contenttype
45	sessions	session
46	home	homepage
47	navbar	navbar
48	landing	landingpage
49	banner	banner
50	products	newproducts
51	wagtail_headless_preview	pagepreview
52	singles	singlespage
53	events	event
54	about	aboutpage
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-11-27 15:21:58.928432-05
2	auth	0001_initial	2022-11-27 15:21:58.963238-05
3	admin	0001_initial	2022-11-27 15:21:59.006127-05
4	admin	0002_logentry_remove_auto_add	2022-11-27 15:21:59.0233-05
5	admin	0003_logentry_add_action_flag_choices	2022-11-27 15:21:59.038951-05
6	contenttypes	0002_remove_content_type_name	2022-11-27 15:21:59.061074-05
7	auth	0002_alter_permission_name_max_length	2022-11-27 15:21:59.074732-05
8	auth	0003_alter_user_email_max_length	2022-11-27 15:21:59.089161-05
9	auth	0004_alter_user_username_opts	2022-11-27 15:21:59.102509-05
10	auth	0005_alter_user_last_login_null	2022-11-27 15:21:59.116008-05
11	auth	0006_require_contenttypes_0002	2022-11-27 15:21:59.125602-05
12	auth	0007_alter_validators_add_error_messages	2022-11-27 15:21:59.161225-05
13	auth	0008_alter_user_username_max_length	2022-11-27 15:21:59.184464-05
14	auth	0009_alter_user_last_name_max_length	2022-11-27 15:21:59.198635-05
15	auth	0010_alter_group_name_max_length	2022-11-27 15:21:59.223815-05
16	auth	0011_update_proxy_permissions	2022-11-27 15:21:59.245638-05
17	auth	0012_alter_user_first_name_max_length	2022-11-27 15:21:59.260774-05
18	wagtailcore	0001_initial	2022-11-27 15:21:59.365407-05
19	wagtailcore	0002_initial_data	2022-11-27 15:21:59.371649-05
20	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2022-11-27 15:21:59.379133-05
21	wagtailcore	0004_page_locked	2022-11-27 15:21:59.388258-05
22	wagtailcore	0005_add_page_lock_permission_to_moderators	2022-11-27 15:21:59.397423-05
23	wagtailcore	0006_add_lock_page_permission	2022-11-27 15:21:59.407658-05
24	wagtailcore	0007_page_latest_revision_created_at	2022-11-27 15:21:59.417569-05
25	wagtailcore	0008_populate_latest_revision_created_at	2022-11-27 15:21:59.427146-05
26	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2022-11-27 15:21:59.437346-05
27	wagtailcore	0010_change_page_owner_to_null_on_delete	2022-11-27 15:21:59.447398-05
28	wagtailcore	0011_page_first_published_at	2022-11-27 15:21:59.456847-05
29	wagtailcore	0012_extend_page_slug_field	2022-11-27 15:21:59.466712-05
30	wagtailcore	0013_update_golive_expire_help_text	2022-11-27 15:21:59.476458-05
31	wagtailcore	0014_add_verbose_name	2022-11-27 15:21:59.486579-05
32	wagtailcore	0015_add_more_verbose_names	2022-11-27 15:21:59.496714-05
33	wagtailcore	0016_change_page_url_path_to_text_field	2022-11-27 15:21:59.506137-05
34	wagtailcore	0017_change_edit_page_permission_description	2022-11-27 15:21:59.539073-05
35	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2022-11-27 15:21:59.566004-05
36	wagtailcore	0019_verbose_names_cleanup	2022-11-27 15:21:59.609684-05
37	wagtailcore	0020_add_index_on_page_first_published_at	2022-11-27 15:21:59.640595-05
38	wagtailcore	0021_capitalizeverbose	2022-11-27 15:21:59.887945-05
39	wagtailcore	0022_add_site_name	2022-11-27 15:21:59.903602-05
40	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2022-11-27 15:21:59.92223-05
41	wagtailcore	0024_collection	2022-11-27 15:21:59.930514-05
42	wagtailcore	0025_collection_initial_data	2022-11-27 15:21:59.969154-05
43	wagtailcore	0026_group_collection_permission	2022-11-27 15:22:00.002999-05
44	wagtailcore	0027_fix_collection_path_collation	2022-11-27 15:22:00.022492-05
45	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2022-11-27 15:22:00.046862-05
46	wagtailcore	0028_merge	2022-11-27 15:22:00.053821-05
47	wagtailcore	0029_unicode_slugfield_dj19	2022-11-27 15:22:00.073526-05
48	wagtailcore	0030_index_on_pagerevision_created_at	2022-11-27 15:22:00.096941-05
49	wagtailcore	0031_add_page_view_restriction_types	2022-11-27 15:22:00.152464-05
50	wagtailcore	0032_add_bulk_delete_page_permission	2022-11-27 15:22:00.168503-05
51	wagtailcore	0033_remove_golive_expiry_help_text	2022-11-27 15:22:00.196971-05
52	wagtailcore	0034_page_live_revision	2022-11-27 15:22:00.221419-05
53	wagtailcore	0035_page_last_published_at	2022-11-27 15:22:00.256502-05
54	wagtailcore	0036_populate_page_last_published_at	2022-11-27 15:22:00.286062-05
55	wagtailcore	0037_set_page_owner_editable	2022-11-27 15:22:00.314747-05
56	wagtailcore	0038_make_first_published_at_editable	2022-11-27 15:22:00.332933-05
57	wagtailcore	0039_collectionviewrestriction	2022-11-27 15:22:00.384727-05
58	wagtailcore	0040_page_draft_title	2022-11-27 15:22:00.43532-05
59	home	0001_initial	2022-11-27 15:22:00.465634-05
60	home	0002_create_homepage	2022-11-27 15:22:00.566631-05
61	sessions	0001_initial	2022-11-27 15:22:00.586569-05
62	taggit	0001_initial	2022-11-27 15:22:00.620029-05
63	taggit	0002_auto_20150616_2121	2022-11-27 15:22:00.644225-05
64	taggit	0003_taggeditem_add_unique_index	2022-11-27 15:22:00.661718-05
65	taggit	0004_alter_taggeditem_content_type_alter_taggeditem_tag	2022-11-27 15:22:00.701284-05
66	taggit	0005_auto_20220424_2025	2022-11-27 15:22:00.7293-05
67	wagtailadmin	0001_create_admin_access_permissions	2022-11-27 15:22:00.759569-05
68	wagtailadmin	0002_admin	2022-11-27 15:22:00.767016-05
69	wagtailadmin	0003_admin_managed	2022-11-27 15:22:00.775862-05
70	wagtailcore	0041_group_collection_permissions_verbose_name_plural	2022-11-27 15:22:00.791788-05
71	wagtailcore	0042_index_on_pagerevision_approved_go_live_at	2022-11-27 15:22:00.810945-05
72	wagtailcore	0043_lock_fields	2022-11-27 15:22:00.863736-05
73	wagtailcore	0044_add_unlock_grouppagepermission	2022-11-27 15:22:00.891158-05
74	wagtailcore	0045_assign_unlock_grouppagepermission	2022-11-27 15:22:00.925092-05
75	wagtailcore	0046_site_name_remove_null	2022-11-27 15:22:00.942215-05
76	wagtailcore	0047_add_workflow_models	2022-11-27 15:22:01.074394-05
77	wagtailcore	0048_add_default_workflows	2022-11-27 15:22:01.11812-05
78	wagtailcore	0049_taskstate_finished_by	2022-11-27 15:22:01.158806-05
79	wagtailcore	0050_workflow_rejected_to_needs_changes	2022-11-27 15:22:01.250126-05
80	wagtailcore	0051_taskstate_comment	2022-11-27 15:22:01.275894-05
81	wagtailcore	0052_pagelogentry	2022-11-27 15:22:01.31822-05
82	wagtailcore	0053_locale_model	2022-11-27 15:22:01.329336-05
83	wagtailcore	0054_initial_locale	2022-11-27 15:22:01.359426-05
84	wagtailcore	0055_page_locale_fields	2022-11-27 15:22:01.51224-05
85	wagtailcore	0056_page_locale_fields_populate	2022-11-27 15:22:01.542549-05
86	wagtailcore	0057_page_locale_fields_notnull	2022-11-27 15:22:01.609319-05
87	wagtailcore	0058_page_alias_of	2022-11-27 15:22:01.644284-05
88	wagtailcore	0059_apply_collection_ordering	2022-11-27 15:22:01.674552-05
89	wagtailcore	0060_fix_workflow_unique_constraint	2022-11-27 15:22:01.708551-05
90	wagtailcore	0061_change_promote_tab_helpt_text_and_verbose_names	2022-11-27 15:22:01.739758-05
91	wagtailcore	0062_comment_models_and_pagesubscription	2022-11-27 15:22:01.812579-05
92	wagtailcore	0063_modellogentry	2022-11-27 15:22:01.848061-05
93	wagtailcore	0064_log_timestamp_indexes	2022-11-27 15:22:01.916406-05
94	wagtailcore	0065_log_entry_uuid	2022-11-27 15:22:01.966246-05
95	wagtailcore	0066_collection_management_permissions	2022-11-27 15:22:02.001497-05
96	wagtailcore	0067_alter_pagerevision_content_json	2022-11-27 15:22:02.04915-05
97	wagtailcore	0068_log_entry_empty_object	2022-11-27 15:22:02.077685-05
98	wagtailcore	0069_log_entry_jsonfield	2022-11-27 15:22:02.292915-05
99	wagtailcore	0070_rename_pagerevision_revision	2022-11-27 15:22:02.879567-05
100	wagtailcore	0071_populate_revision_content_type	2022-11-27 15:22:02.903683-05
101	wagtailcore	0072_alter_revision_content_type_notnull	2022-11-27 15:22:02.971869-05
102	wagtailcore	0073_page_latest_revision	2022-11-27 15:22:03.017749-05
103	wagtailcore	0074_revision_object_str	2022-11-27 15:22:03.044179-05
104	wagtailcore	0075_populate_latest_revision_and_revision_object_str	2022-11-27 15:22:03.116943-05
105	wagtailcore	0076_modellogentry_revision	2022-11-27 15:22:03.151215-05
106	wagtailcore	0077_alter_revision_user	2022-11-27 15:22:03.283516-05
107	wagtailcore	0078_referenceindex	2022-11-27 15:22:03.321831-05
108	wagtaildocs	0001_initial	2022-11-27 15:22:03.361012-05
109	wagtaildocs	0002_initial_data	2022-11-27 15:22:03.402455-05
110	wagtaildocs	0003_add_verbose_names	2022-11-27 15:22:03.474139-05
111	wagtaildocs	0004_capitalizeverbose	2022-11-27 15:22:03.588997-05
112	wagtaildocs	0005_document_collection	2022-11-27 15:22:03.628339-05
113	wagtaildocs	0006_copy_document_permissions_to_collections	2022-11-27 15:22:03.672317-05
114	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2022-11-27 15:22:03.704836-05
115	wagtaildocs	0007_merge	2022-11-27 15:22:03.713211-05
116	wagtaildocs	0008_document_file_size	2022-11-27 15:22:03.746243-05
117	wagtaildocs	0009_document_verbose_name_plural	2022-11-27 15:22:03.7774-05
118	wagtaildocs	0010_document_file_hash	2022-11-27 15:22:03.818449-05
119	wagtaildocs	0011_add_choose_permissions	2022-11-27 15:22:04.056324-05
120	wagtaildocs	0012_uploadeddocument	2022-11-27 15:22:04.097103-05
121	wagtailembeds	0001_initial	2022-11-27 15:22:04.118407-05
122	wagtailembeds	0002_add_verbose_names	2022-11-27 15:22:04.130117-05
123	wagtailembeds	0003_capitalizeverbose	2022-11-27 15:22:04.146151-05
124	wagtailembeds	0004_embed_verbose_name_plural	2022-11-27 15:22:04.158006-05
125	wagtailembeds	0005_specify_thumbnail_url_max_length	2022-11-27 15:22:04.178845-05
126	wagtailembeds	0006_add_embed_hash	2022-11-27 15:22:04.195112-05
127	wagtailembeds	0007_populate_hash	2022-11-27 15:22:04.227605-05
128	wagtailembeds	0008_allow_long_urls	2022-11-27 15:22:04.287173-05
129	wagtailembeds	0009_embed_cache_until	2022-11-27 15:22:04.306215-05
130	wagtailforms	0001_initial	2022-11-27 15:22:04.361594-05
131	wagtailforms	0002_add_verbose_names	2022-11-27 15:22:04.406253-05
132	wagtailforms	0003_capitalizeverbose	2022-11-27 15:22:04.463395-05
133	wagtailforms	0004_add_verbose_name_plural	2022-11-27 15:22:04.491332-05
134	wagtailforms	0005_alter_formsubmission_form_data	2022-11-27 15:22:04.526111-05
135	wagtailimages	0001_initial	2022-11-27 15:22:04.741519-05
136	wagtailimages	0002_initial_data	2022-11-27 15:22:04.749234-05
137	wagtailimages	0003_fix_focal_point_fields	2022-11-27 15:22:04.756038-05
138	wagtailimages	0004_make_focal_point_key_not_nullable	2022-11-27 15:22:04.762564-05
139	wagtailimages	0005_make_filter_spec_unique	2022-11-27 15:22:04.769557-05
140	wagtailimages	0006_add_verbose_names	2022-11-27 15:22:04.778122-05
141	wagtailimages	0007_image_file_size	2022-11-27 15:22:04.788802-05
142	wagtailimages	0008_image_created_at_index	2022-11-27 15:22:04.798934-05
143	wagtailimages	0009_capitalizeverbose	2022-11-27 15:22:04.809211-05
144	wagtailimages	0010_change_on_delete_behaviour	2022-11-27 15:22:04.820026-05
145	wagtailimages	0011_image_collection	2022-11-27 15:22:04.831344-05
146	wagtailimages	0012_copy_image_permissions_to_collections	2022-11-27 15:22:04.839241-05
147	wagtailimages	0013_make_rendition_upload_callable	2022-11-27 15:22:04.848297-05
148	wagtailimages	0014_add_filter_spec_field	2022-11-27 15:22:04.858222-05
149	wagtailimages	0015_fill_filter_spec_field	2022-11-27 15:22:04.86776-05
150	wagtailimages	0016_deprecate_rendition_filter_relation	2022-11-27 15:22:04.877206-05
151	wagtailimages	0017_reduce_focal_point_key_max_length	2022-11-27 15:22:04.886567-05
152	wagtailimages	0018_remove_rendition_filter	2022-11-27 15:22:04.896153-05
153	wagtailimages	0019_delete_filter	2022-11-27 15:22:04.905597-05
154	wagtailimages	0020_add-verbose-name	2022-11-27 15:22:04.915229-05
155	wagtailimages	0021_image_file_hash	2022-11-27 15:22:04.924698-05
156	wagtailimages	0022_uploadedimage	2022-11-27 15:22:04.995393-05
157	wagtailimages	0023_add_choose_permissions	2022-11-27 15:22:05.088687-05
158	wagtailimages	0024_index_image_file_hash	2022-11-27 15:22:05.133636-05
159	wagtailredirects	0001_initial	2022-11-27 15:22:05.282947-05
160	wagtailredirects	0002_add_verbose_names	2022-11-27 15:22:05.332221-05
161	wagtailredirects	0003_make_site_field_editable	2022-11-27 15:22:05.366185-05
162	wagtailredirects	0004_set_unique_on_path_and_site	2022-11-27 15:22:05.408608-05
163	wagtailredirects	0005_capitalizeverbose	2022-11-27 15:22:05.525618-05
164	wagtailredirects	0006_redirect_increase_max_length	2022-11-27 15:22:05.549488-05
165	wagtailredirects	0007_add_autocreate_fields	2022-11-27 15:22:05.616289-05
166	wagtailredirects	0008_add_verbose_name_plural	2022-11-27 15:22:05.634488-05
167	wagtailsearch	0001_initial	2022-11-27 15:22:05.711407-05
168	wagtailsearch	0002_add_verbose_names	2022-11-27 15:22:05.794664-05
169	wagtailsearch	0003_remove_editors_pick	2022-11-27 15:22:05.802009-05
170	wagtailsearch	0004_querydailyhits_verbose_name_plural	2022-11-27 15:22:05.811583-05
171	wagtailsearch	0005_create_indexentry	2022-11-27 15:22:05.94399-05
172	wagtailsearch	0006_customise_indexentry	2022-11-27 15:22:06.025069-05
173	wagtailsearch	0007_delete_editorspick	2022-11-27 15:22:06.03937-05
174	wagtailusers	0001_initial	2022-11-27 15:22:06.078748-05
175	wagtailusers	0002_add_verbose_name_on_userprofile	2022-11-27 15:22:06.136648-05
176	wagtailusers	0003_add_verbose_names	2022-11-27 15:22:06.15793-05
177	wagtailusers	0004_capitalizeverbose	2022-11-27 15:22:06.234179-05
178	wagtailusers	0005_make_related_name_wagtail_specific	2022-11-27 15:22:06.274833-05
179	wagtailusers	0006_userprofile_prefered_language	2022-11-27 15:22:06.319815-05
180	wagtailusers	0007_userprofile_current_time_zone	2022-11-27 15:22:06.35467-05
181	wagtailusers	0008_userprofile_avatar	2022-11-27 15:22:06.39441-05
182	wagtailusers	0009_userprofile_verbose_name_plural	2022-11-27 15:22:06.428267-05
183	wagtailusers	0010_userprofile_updated_comments_notifications	2022-11-27 15:22:06.457507-05
184	wagtailusers	0011_userprofile_dismissibles	2022-11-27 15:22:06.484595-05
185	wagtailimages	0001_squashed_0021	2022-11-27 15:22:06.493657-05
186	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2022-11-27 15:22:06.500592-05
187	home	0003_homepage_hero_text_homepage_sub_text	2022-11-27 15:26:32.171659-05
188	home	0004_rename_homepage_landingpage	2022-11-27 15:52:25.74507-05
189	home	0005_landingpage_image	2022-11-28 13:58:32.307458-05
190	home	0006_rename_image_landingpage_banner_image	2022-11-28 16:02:38.097307-05
191	home	0007_rename_banner_image_landingpage_image	2022-11-28 16:12:38.349041-05
192	home	0008_homepage_delete_landingpage	2022-11-28 22:21:46.694185-05
193	home	0009_rename_image_homepage_img	2022-11-28 23:30:54.816769-05
194	home	0010_rename_img_homepage_image	2022-11-28 23:39:33.451947-05
195	home	0011_remove_homepage_image_homepage_brand_and_more	2022-11-29 13:34:45.7361-05
196	home	0012_rename_brand_homepage_nav_brand	2022-11-29 13:53:10.045908-05
197	home	0013_homepage_banner_image_homepage_banner_text	2022-11-29 14:27:53.664958-05
198	home	0014_remove_homepage_nav_brand	2022-11-29 14:52:42.49582-05
199	navbar	0001_initial	2022-11-29 14:52:42.549842-05
200	home	0015_remove_homepage_hero_image_remove_homepage_hero_text_and_more	2022-11-29 15:00:13.472991-05
201	landing	0001_initial	2022-11-29 15:00:13.536929-05
202	landing	0002_rename_sub_text_landingpage_sub_text_one_and_more	2022-11-30 19:36:37.682249-05
203	banner	0001_initial	2022-12-02 15:48:54.979101-05
204	navbar	0002_rename_nav_btn_navbar_nav_button_and_more	2022-12-02 16:19:54.328513-05
205	navbar	0003_rename_nav_image_navbar_logo	2022-12-02 16:25:39.620664-05
206	banner	0002_banner_banner_link	2022-12-02 17:01:16.061172-05
207	banner	0003_alter_banner_banner_link	2022-12-02 17:07:41.119904-05
208	products	0001_initial	2022-12-05 14:52:53.395123-05
209	products	0002_newproducts_item_1	2022-12-05 15:11:48.404987-05
210	products	0003_rename_item_1_newproducts_item_1_stream	2022-12-05 15:16:12.444717-05
211	products	0004_remove_newproducts_item_1_stream_newproducts_item_1	2022-12-05 15:21:30.603834-05
212	products	0005_rename_item_1_newproducts_product_and_more	2022-12-05 15:36:22.593489-05
213	products	0006_rename_product_newproducts_product_1_and_more	2022-12-05 15:59:46.561088-05
214	products	0007_remove_newproducts_product_1_and_more	2022-12-05 23:48:57.285525-05
215	products	0008_alter_newproducts_new_product	2022-12-05 23:52:36.463646-05
216	products	0009_rename_new_product_newproducts_new_products	2022-12-05 23:57:11.414909-05
217	products	0010_alter_newproducts_new_products	2022-12-06 00:00:34.03115-05
218	products	0011_alter_newproducts_new_products	2022-12-06 00:25:24.277053-05
219	products	0012_alter_newproducts_new_products	2022-12-06 00:43:30.191523-05
220	wagtail_headless_preview	0001_initial	2022-12-06 13:26:40.385882-05
221	singles	0001_initial	2022-12-06 14:26:14.589433-05
222	singles	0002_alter_singlespage_sub_text	2022-12-06 15:01:34.259725-05
223	singles	0003_alter_singlespage_sub_text	2022-12-06 15:12:23.235282-05
224	singles	0004_rename_logo_singlespage_logo_1_and_more	2022-12-06 15:35:28.852252-05
225	events	0001_initial	2022-12-08 00:54:14.286121-05
226	events	0002_rename_date_event_start_date_remove_event_image_and_more	2022-12-08 14:43:13.457354-05
227	events	0003_alter_event_store_link	2022-12-08 14:54:35.642355-05
228	events	0004_alter_event_options_rename_summary_event_title_and_more	2022-12-08 16:44:51.779525-05
229	events	0005_alter_event_options_rename_title_event_name_and_more	2022-12-09 16:16:25.747319-05
230	events	0006_alter_event_recurrence	2022-12-09 16:22:36.212644-05
231	events	0007_remove_event_google_link	2022-12-09 17:53:44.825154-05
232	events	0008_alter_event_recurrence	2022-12-09 18:19:23.960114-05
233	events	0009_alter_event_recurrence	2022-12-09 18:22:58.788662-05
234	events	0010_alter_event_recurrence_alter_event_store_link	2022-12-09 20:33:33.718679-05
235	landing	0003_landingpage_whats_new_text	2022-12-15 17:40:29.209069-05
236	landing	0004_landingpage_whats_new_header	2022-12-15 17:50:48.062157-05
237	landing	0005_landingpage_hero_image_description	2022-12-15 17:53:35.277677-05
238	about	0001_initial	2022-12-15 18:24:30.602028-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
i34mi7eb520vvi4kby34ezhlnr3xl46x	.eJzVWutv2zgS_18COF9YG3pLLpAPeTZp4yRNnLZ7h4VBSZREWyIVkrLjXdz_fkPJmzpb6eLi0DsZMGyJj-H8hsN50X8ezHClslkliZjR-OD9gXnwbrstxNGCMN0RzzFL-SjiTAkajvSQ0aZXjiY8JvnJZuwrAhmWGcwOcBjj2PAMI3BjAwf22DaTxIpDYiehFVsuTnzbth2DWI7lYCfBvm-R0HHCIEjcxNdEJZGScjYjzyUV64P3pmWMgeC7gxVOFab5sBRkSclq6B-8_-dBJEVS0DjOyQoLojiwdnR_4llkPv8aPVxnF-GyXJ5_vIrOEusyu1PBWQnLTZ6uDc8unjLzkrDPF-vL5Pa347spezTi83lyyMizOjqMeFEQpmaMK5rQCCvgSh5xdqioysnRNWYxZSm6wyk5zIjgM6WnDfyTgWWFOY8WEh4G9vHAPWkaF2S9abEs75kkTL9Zp_CtZ750nXAs4u9d65K8dGUEx0QMOSMv_TEpVdYMMJoWynLKyINa5-QeNpNsseGeNUMAFlXrrt4YK7xpBb79M_2Bjh8wuC6t8nYMH3DRUO47Bi_GvtWOYYrDHDSq3AcYDo1Ne8-3IppL6bRjuKv--CPfDxSuNOKwQ6FOPzzsAwSL8qpqh9DOfsWk5iruA_MmTQO8D8y_njnB5d8GHMoqrF3KDNRiV7dipi5ddNgBohBVCDwVGf1HLVSZIP9zPdxdGmrFd5WGvaJh1i6Nh4yXiNdIEBeopNECVSWiDEnF35JQQpe9OKg2mXO_Hd85FgwJHRTFEiWAkCyJWKOyEhHEasC92TuEb6rAKsNKzhhZzRouj1iV51utPxN_LXK57Ii_phmVCD4YlTmOCFIcxURGEA4ThNkaRZznCNZDGS5LwiAGhLEKqYxsdAfdQGcpeFxFCng41c8Fr8NH_ZYSRgTOQd1ACgTmshg0MeU6mASysoens9XQBkJ0uOt-Gdo25p-WdoeHO1YKRxlsPqOw9yFNES0gwkchyfmq1gWBV0gnPQPL1xuvNEecvWExeCV6d57qpKVGd2RbW2-zRt1LDevoUOZVepQ3yc6w1MmOJJDr1DkQPGIwKK8nbPImOZzeTo-vZxe395OHI-N789XN1fSqrWNydTO7eZy0dBx_2-o4TPksB_s0w5Ck1Vli_XjwzvR807S8YGyNDMN0bdv9_ces0fa60kYvyG8-2XjhTNm0ClL66fHTt7sHyj7Sk7trr_o8PzHD7NM3QcT0bBUGHx9vryoRn-Ev_EPx2eePu6WNxyGv1KGW419WbEeLpUJXdgQ2NU10AtZqgSacM9TLmP9NfQQJ1NLaVSIu832jXSI_JQuIKPpgkyLfkW47nGsSYsZZbXEuBCUszte9szetmBYB7YAEm53Xm4MetNd8MyLpCaKknPuiHZKFJljC8ceACJy00s5-YNl2O64-ucOwMK3kDdU7RTeXyLB9z9sDPCrqTgIDz4AtGSPPD4aB5_yS7ak54kkiiXo1JScs_YuK6TRt9Tov616Bz7zSzT-azP9WKr7J5h3pQqjtZQHmkmUDx0gL8Jgj0OT-73QiLdWR4p1LNUKWYTq_AsUuGzz-hfv7dnAH9lLu6knHxHjuqILWxhldamrtcuyXE7Vtg_J2JBPOYrxGpnU3QUPk30269IILAETiYU6lGlJFij4Ai2VadRWqKyL3GJkNBqcd2FcSs72GZin_qasYnMGJ2oI23jNoCfiSDsMLEeoWMNPYM2SBBDIdxhArSPk0NuNYYwv2DBpZPtlxB7Rq2zp6PQb2pusrcDlb0TglalaJ_ChTqpQ19xfwWa1Wo5TzNCdNgHMBo2HhC1KEEAvYF2U4sGEB0yzMoPmx6h9bf8dWEPgj2zJs13LGnhtAbGFa8dC3RpbrgvPxAscK_DF4ftOOHXvkOaZrQMRpWobjBp4e3VBKDP1cf9vNd1GvQ03DqolS39PrO4lpj8y6v57XjJLGsxOFTui4EMtGIU5CsDIuiP15bOLECcwEROeYRpRoUrLOhmGAZeiMuH7YZMWmS7YWl4TV4yvd4yxNzzcC13W8Q6wLDD9Zr4gK_txxO_yVoJwvCUo1Ex2Fs95eyzSy-JlacyWfVh2XswP3lP29VoEIFkwiqiRi-h0vCEoEL1Cx1pX8ggiUCl6ViCcowUxhuUZnFSDkrCkmnwmc6mcYGRGGBQUhj0ZompHtGtFk07tGHyqax535d5-ifTvmTofTueErXbEHOQErTKGEPoOtJlpIujKvq3IVAxb0FY-uz1_iopQZFWRwbg0CYzAeS_RYliDcLzjP9ZqnaKWnJ9CkKYBFIVIhSXIS6SqVphzqv2o0aqzHq80_BrZaBK7_JBLpexjdoPenbG6zNSeaMBYE9-wQtDp8bC_H7bL_jVeAkIHMAV0lUQxijVS-RuBTiGAEq6xGuqkloC80z3VNfYLFoimT6NKpLq6DFxJUgp5WIHdVS6ueiIESaOpDiUfoYyX1NSaGLt7cb23TXm5oy6cKBNtQqAQDYQN5zl4UooS19c7kHM5ZuK7bGn7qOTX9mK_Y5l4HU9E3S9W2SRHL4o7YBYxuxsv6OksSgtawZ7L2Bntw7s1szop2WP1nnkoHm-3Mo3busQIrFv0K3neqSzVNLxCMbbe4c7pqZKqzAtf3HfPmFHdcDw6HaMrZGpwEmDYWEpFq83W7YkT8Cly77JflDv4vdSbLMrZfXqG-vL2_-sftjb7_u3-8Pn8BX1TgI2kOpL4zOpk8To9Ptga18bEde22uLO3marJu6_edpG24nj-CWN0d-9bv__o3P_tAwg:1p5tOp:1asjOJtkenERlnYUJGRNeH5GYuxWoFQdDmlH9QsUzPk	2022-12-29 18:56:07.562434-05
g0lmzju31pg8pe70cbf42zoj8r0w353w	.eJxVjMsOwiAQRf-FtSGUh2CX7v0GMtMZLGrAlDbRGP9dm3Sh23vOPS8RYZnHuDSeYibRi07sfjeE4cplBXSBcq5yqGWeMspVkRtt8lSJb8fN_QuM0MbvOwASkNorFRwpCOZgupQ0IZuEmrSD5I0xVrG22oJN4L1mtBZDSC75Ndq4tVxL5Mc9T0_Rq_cHnxQ_YA:1p7QSJ:P73gVylte82H4wczqp-ACJjxywB2NlXF9a_lNlKkcaI	2023-01-03 00:26:03.159206-05
\.


--
-- Data for Name: events_event; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.events_event (page_ptr_id, start_date, description, end_date, end_time, location, recurrence, start_time, name, store_link) FROM stdin;
34	2022-12-09	Join us every Friday for varying Magic formats for fun and prizes!\r\n\r\n--->You can not use store credit or gift cards to pay for gamespace events<---	2022-12-09	20:00:00	Black Moon Games	WEEKLY	16:00:00	Friday Night Magic	https://www.shop-black-moon.com/product/friday-night-magic-pre-registration/6359?cp=true&sa=false&sbp=false&q=false&category_id=136
35	2022-12-18	Join us for our first Classic Constructed Flesh and Blood Tournament on Sunday December 18th!\r\n\r\n\r\n\r\nFormat: Classic Constructed https://fabtcg.com/resources/gameplay-formats/classic-constructed/\r\n\r\n\r\n\r\nTime: Starts promptly at 1PM after our Learn to Play session.\r\n\r\n\r\n\r\nEntry: $10. Limited to 16 players.\r\n\r\n\r\n\r\nPrizes: We are giving out a full Armory Kit for this event, so everyone regardless of final standings will walk away with some cool promos! Additionally, there will be store credit prizes based on attendance paid out to winning records.	2022-12-18	18:00:00	Black Moon Games	NONE	13:00:00	Flesh and Blood TCG Classic Constructed Charity To	https://www.shop-black-moon.com/product/flesh-and-blood-tcg-classic-constructed-charity-tournament-pre-registration-dec-18th-/7959?cp=true&sa=false&sb
\.


--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.home_homepage (page_ptr_id, banner_image_id, banner_text) FROM stdin;
4	\N	<h2 data-block-key="w6pae"><b><i>Black Moon Games, Lebanon&#x27;s Friendly Local Game Store!</i></b></h2>
\.


--
-- Data for Name: landing_landingpage; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.landing_landingpage (page_ptr_id, hero_text, hero_image_id, sub_text_one, sub_text_two, whats_new_text, whats_new_header, hero_image_description) FROM stdin;
7	<h1 data-block-key="6xefn">Board</h1><h1 data-block-key="55iul">Games</h1><h1 data-block-key="6da72">Tabletop</h1><h1 data-block-key="4id13">Games</h1><h1 data-block-key="cjss4">Puzzles</h1><h1 data-block-key="5s0db">TCGS</h1><p data-block-key="2iouu"></p><p data-block-key="1ig8a"></p>	32	<h3 data-block-key="1g5ik">Get it here.</h3>	<h5 data-block-key="3wibh">Shop online or pick up in store.</h5><h5 data-block-key="3ejo7">Earn rewards for every purchase!</h5>	<h3 data-block-key="klsvn">This is a place to describe any cool new happenings at the store. New products, promotions, general updates and ongoing news.</h3><h4 data-block-key="qv3u">Attach a nice big image below to draw user&#x27;s attention.</h4>	<h2 data-block-key="e21o0">What&#x27;s New?</h2>	Black Moon Games Logo
\.


--
-- Data for Name: navbar_navbar; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.navbar_navbar (page_ptr_id, nav_text, nav_button_id, logo_id) FROM stdin;
6	<p data-block-key="u423o">BMG</p>	\N	25
\.


--
-- Data for Name: products_newproducts; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.products_newproducts (page_ptr_id, new_products) FROM stdin;
9	[{"type": "product", "value": {"name": "<p data-block-key=\\"a5i0w\\">New Thing 1</p>", "description": "<p data-block-key=\\"7jhbo\\">A cool description</p>", "image": 26, "link": "", "alt": "heart icon"}, "id": "a1be3666-208c-4195-8424-2f0ebbf42404"}, {"type": "product", "value": {"name": "<p data-block-key=\\"sajx6\\">New Thing 2</p>", "description": "<p data-block-key=\\"7jhbo\\">A cool description</p>", "image": 21, "link": "", "alt": "a cat"}, "id": "3cd06190-114d-4fe8-95f6-0949488c09c0"}, {"type": "product", "value": {"name": "<p data-block-key=\\"oeczd\\">New Thing 3</p>", "description": "<p data-block-key=\\"43bmt\\">A cool description</p>", "image": 27, "link": "", "alt": "bicycle"}, "id": "b3f7e1eb-9f9c-48ae-ae33-1488d38729e0"}, {"type": "product", "value": {"name": "<p data-block-key=\\"na0i5\\">New Thing 4</p>", "description": "<p data-block-key=\\"43bmt\\">A cool description</p>", "image": 23, "link": "", "alt": "brain image"}, "id": "ca96148c-b92f-41fa-bebb-acdcc87b5499"}]
\.


--
-- Data for Name: singles_singlespage; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.singles_singlespage (page_ptr_id, header, text, sub_text_one, logo_1_id, logo_2_id, logo_3_id, sub_text_two) FROM stdin;
10	<h2 data-block-key="10crq">Magic Singles</h2>	<h4 data-block-key="n5fyo">Looking to buy or sell Magic the Gathering singles?</h4><p data-block-key="5dfda"></p><hr/><p data-block-key="2m9m0"></p>	<h5 data-block-key="vjq76">Buying</h5><p data-block-key="elcve">1. Submit your list online using our digital storefront</p><p data-block-key="drmrd">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key="a1ag">3. There is no limit to how many cards you can put on your list</p><hr/><p data-block-key="egtkr"></p><h5 data-block-key="fco72">Selling</h5><p data-block-key="cohge">1. Submit your buylist online using our digital storefront</p><p data-block-key="6pqgj">2. Bring your cards into the store for a review</p><p data-block-key="1b7pt">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key="1epqq">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key="350s6">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p><hr/><p data-block-key="e3k18"></p>	29	30	31	<h3 data-block-key="58k08">We sell boosters and boxes of these TCGs!</h3>
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	logo	logo
2	magic the gathering logo	magic-the-gathering-logo
3	pokemon	pokemon
4	flesh and blood	flesh-and-blood
5	game store owner	game-store-owner
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	22	6	1
2	28	6	2
3	29	6	2
4	30	6	3
5	31	6	4
6	33	6	5
\.


--
-- Data for Name: wagtail_headless_preview_pagepreview; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtail_headless_preview_pagepreview (id, token, content_json, created_at, content_type_id) FROM stdin;
83	id=7:1p5sBi:zb1OKTKf9esAs_ESmVnI7RQSzryzIOmO6Z6HEIzQEyw	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 141, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-06T23:23:10.445Z", "live_revision": 141, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T23:23:10.335Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "hero_image": 32, "wagtail_admin_comments": []}	2022-12-15	48
84	id=7:1p5sDo:OpWCOKaVOoHeGWbpzthys6J3U7zxNHXFBgBUdtTyRzw	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 141, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-06T23:23:10.445Z", "live_revision": 141, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T23:23:10.335Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_text": "", "hero_image": 32, "wagtail_admin_comments": []}	2022-12-15	48
85	id=7:1p5sDp:aHzZOW5ynYDYD2GlJamZ8j5TzJaAOh9eNxgKaX-0S4A	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 141, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-06T23:23:10.445Z", "live_revision": 141, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T23:23:10.335Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_text": "", "hero_image": 32, "wagtail_admin_comments": []}	2022-12-15	48
86	id=7:1p5sGa:Zd54B5bnVc4BJyxod3z23lgWjn9YlTK-Q63_zR5gak0	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 172, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:40:53.029Z", "live_revision": 172, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:40:52.976Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_text": "", "hero_image": 32, "wagtail_admin_comments": []}	2022-12-15	48
87	id=7:1p5sGb:jWn8YuIl-munO3byun8fWzGTaTVJF3lLBCu9Bmf2JJ8	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 172, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:40:53.029Z", "live_revision": 172, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:40:52.976Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">What&#x27;s new at Black Moon Games?</h3>", "hero_image": 32, "wagtail_admin_comments": []}	2022-12-15	48
118	id=36:1p5tOp:owHSdMco_P1AE-zbbgxW6K-gxofNkzYU2Gay-kdOzvs	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 189, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:53:22.019Z", "live_revision": 189, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:53:21.945Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><p data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</p><p data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</p><p data-block-key=\\"cnhdi\\">We hope to see you soon!</p><p data-block-key=\\"1hjnm\\"></p><hr/><p data-block-key=\\"d0hta\\"></p><p data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></p>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
88	id=7:1p5sI6:gAodBAYj0nEVF7iUrANFZUG-u5kt_vr8Q91czZ7AerE	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 173, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:44:21.174Z", "live_revision": 173, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:44:21.102Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">What&#x27;s new at Black Moon Games?</h3><p data-block-key=\\"761sd\\">This is a place to describe any cool new happenings at the store. New products, promotions, general updates and ongoing news.</p>", "hero_image": 32, "wagtail_admin_comments": []}	2022-12-15	48
89	id=7:1p5sJw:UNBIbOnr7exdmH42garcKx2qVAhvwaAL5PLTGAYn0J8	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 174, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:45:38.059Z", "live_revision": 174, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:45:37.990Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">What&#x27;s new at Black Moon Games?</h3><p data-block-key=\\"761sd\\"></p><p data-block-key=\\"6m50r\\">This is a place to describe any cool new happenings at the store. New products, promotions, general updates and ongoing news.</p><p data-block-key=\\"18rr4\\"></p><p data-block-key=\\"qv3u\\">Attach a nice big image below to draw user&#x27;s attention.</p>", "hero_image": 32, "wagtail_admin_comments": []}	2022-12-15	48
90	id=7:1p5sOp:bCJvGpSKUfsu9jsXDB9XAChyoh9iAhGGX0g4d_03gPk	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 175, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:47:14.403Z", "live_revision": 175, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:47:14.315Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_header": "", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">This is a place to describe any cool new happenings at the store. New products, promotions, general updates and ongoing news.</h3><p data-block-key=\\"18rr4\\"></p><h4 data-block-key=\\"qv3u\\">Attach a nice big image below to draw user&#x27;s attention.</h4>", "hero_image": 32, "wagtail_admin_comments": []}	2022-12-15	48
91	id=7:1p5sOq:49GHn9GyhSfdos9kIuombmLzXBT6LIs3Gur20jGBJ9g	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 175, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:47:14.403Z", "live_revision": 175, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:47:14.315Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_header": "", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">This is a place to describe any cool new happenings at the store. New products, promotions, general updates and ongoing news.</h3><p data-block-key=\\"18rr4\\"></p><h4 data-block-key=\\"qv3u\\">Attach a nice big image below to draw user&#x27;s attention.</h4>", "hero_image": 32, "wagtail_admin_comments": []}	2022-12-15	48
92	id=7:1p5sRX:us0xO4J4gp5A2LcoxTMIX3KV_rKoxFb1tEdhY6f9_go	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 175, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:47:14.403Z", "live_revision": 175, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:47:14.315Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_header": "", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">This is a place to describe any cool new happenings at the store. New products, promotions, general updates and ongoing news.</h3><p data-block-key=\\"18rr4\\"></p><h4 data-block-key=\\"qv3u\\">Attach a nice big image below to draw user&#x27;s attention.</h4>", "hero_image": 32, "hero_image_description": "", "wagtail_admin_comments": []}	2022-12-15	48
93	id=7:1p5sRY:oKzs7FSSmexZ4ow_vI05DQv3kHYWiuVarlXvYR-rheE	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 175, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:47:14.403Z", "live_revision": 175, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:47:14.315Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_header": "", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">This is a place to describe any cool new happenings at the store. New products, promotions, general updates and ongoing news.</h3><p data-block-key=\\"18rr4\\"></p><h4 data-block-key=\\"qv3u\\">Attach a nice big image below to draw user&#x27;s attention.</h4>", "hero_image": 32, "hero_image_description": "", "wagtail_admin_comments": []}	2022-12-15	48
94	id=36:1p5szM:y9Oi1p6lNB4f7kFOG9Cyc0AU6geFfMhcs55Hh75Vqe0	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 177, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:26:52.773Z", "live_revision": 177, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:26:52.702Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "", "map_widget_url": "", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	2022-12-15	54
95	id=36:1p5t2H:x4V2k_xNR6e2_rdeW2dXQSsghMCCnqJiP2wArSk4ah8	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 178, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:29:51.145Z", "live_revision": 178, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:29:51.079Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "", "map_widget_url": "", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	2022-12-15	54
96	id=36:1p5t2I:qNiOGVsZhQVGbH3lW0ULWv9szSDR2eFhv9ahNjplUPg	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 178, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:29:51.145Z", "live_revision": 178, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:29:51.079Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "", "map_widget_url": "", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	2022-12-15	54
97	id=36:1p5t46:i9aS7Odv7RXVA_mrsGH2CZeEhjLtCNvlqFGPtyZaV0w	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 179, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:34:02.871Z", "live_revision": 179, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:34:02.810Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	2022-12-15	54
98	id=36:1p5t47:4F1Ui17QVC7jQtyisKsiN4IHel0IINlMYNjJsG0nTt8	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 179, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:34:02.871Z", "live_revision": 179, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:34:02.810Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	2022-12-15	54
99	id=36:1p5t4L:jds1MXOYwkpKnPGmm_tNT0TRyMNBzFJ1qK2Sn4qSUSw	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 180, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:34:47.444Z", "live_revision": 180, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:34:47.401Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	2022-12-15	54
100	id=36:1p5t4M:W7nrk3O2TqRFwWRgD2LGutp3FYoczW-oWsZwm6Y9YT8	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 180, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:34:47.444Z", "live_revision": 180, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:34:47.401Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	2022-12-15	54
101	id=36:1p5tAH:Fy6ubz1y8pVHkEyRttyVcR2Db63hbtdu5LN2ruPj4Hw	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 181, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:36:31.296Z", "live_revision": 181, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:36:31.226Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	2022-12-15	54
102	id=36:1p5tAI:L9Q2zTgdkKd0S1dT_97-YnfQta-DUiTGuM6LXdG3YQM	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 181, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:36:31.296Z", "live_revision": 181, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:36:31.226Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
103	id=36:1p5tAl:CVSEb32fAtFweEPsllun4AQj52OE1H1PJnbcpyqOjDE	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 182, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:41:21.288Z", "live_revision": 182, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:41:21.210Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
104	id=36:1p5tAm:BBhyoKH4K18lFg2w3wSkD96ilkcuPnXGZQEzf08g_Xc	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 182, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:41:21.288Z", "live_revision": 182, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:41:21.210Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
105	id=36:1p5tBl:bTWT7ZIoayUqwdJFU27IQxdizakxrb1lfThKea-e4RE	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 183, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:42:11.364Z", "live_revision": 183, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:42:11.300Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
106	id=36:1p5tBm:-Y-8aAk30Ht5sfQxRwW7Gygxh3Hv1h8VnfhBOBXbKL8	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 183, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:42:11.364Z", "live_revision": 183, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:42:11.300Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<h3 data-block-key=\\"9e0x2\\">Store Hours</h3><p data-block-key=\\"330io\\"><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i><br/></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
107	id=36:1p5tES:TF9A9_RHQAFq4RdiROAHCcTEQnTHZKON8OFDRWFkjfw	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 184, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:43:48.062Z", "live_revision": 184, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:43:48.010Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
108	id=36:1p5tET:jQeOP29u6MBXHG1-PiSge2S-uW6Xu6E9UoeUTG2JrNg	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 184, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:43:48.062Z", "live_revision": 184, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:43:48.010Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
109	id=36:1p5tHj:LgV0KSfYh9gw_qWrD7A5m29-4jIyHFJwsZx9a44_0X8	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 185, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:46:35.285Z", "live_revision": 185, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:46:35.200Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
110	id=36:1p5tHk:W5VdVpgJdhSBUGVllftaxiLIERIrUvnkKbd6Nzs2LJs	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 185, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:46:35.285Z", "live_revision": 185, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:46:35.200Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\">(603) 678-8643</p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"51f3d\\"></p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
111	id=36:1p5tIY:4_fSNzPdDAGbzgxfN4bd6GaOvJ4cid6NNfoxD1diCBA	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 186, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:49:25.218Z", "live_revision": 186, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:49:25.146Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\">(603) 678-8643</p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"51f3d\\"></p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
112	id=36:1p5tIZ:ENcSTwGLveLbLoxZAY9fNZyjXhphlHdTdkuvvaO8wUA	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 186, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:49:25.218Z", "live_revision": 186, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:49:25.146Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><blockquote data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</blockquote><blockquote data-block-key=\\"bm12f\\">Lebanon, NH 03766</blockquote><blockquote data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></blockquote><blockquote data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</blockquote><p data-block-key=\\"51f3d\\"></p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
113	id=36:1p5tLG:kbZIbeN77I5jUONPIajxerl1-uI11gE0vaai1A4sh8o	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 187, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:50:06.596Z", "live_revision": 187, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:50:06.535Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><blockquote data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</blockquote><blockquote data-block-key=\\"bm12f\\">Lebanon, NH 03766</blockquote><blockquote data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></blockquote><blockquote data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</blockquote><p data-block-key=\\"51f3d\\"></p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
114	id=36:1p5tLH:PmdIV6eKCXDYk8RHRDDv1KmrsJMSqecKxYlp7SvGRBs	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 187, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:50:06.596Z", "live_revision": 187, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:50:06.535Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
115	id=36:1p5tLc:SRUsB-MXL0s3XHMay-1UPHEGUcXtjMnfgJWRhuyNkNI	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 188, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:52:38.634Z", "live_revision": 188, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:52:38.585Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
116	id=36:1p5tLd:BrHDMElHJLcHkB8MlC1W1xH4ssRaMRQVmSh5aCW8teQ	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 188, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:52:38.634Z", "live_revision": 188, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:52:38.585Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<blockquote data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</blockquote><blockquote data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</blockquote><blockquote data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</blockquote><blockquote data-block-key=\\"cnhdi\\">We hope to see you soon!</blockquote><blockquote data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></blockquote>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
117	id=36:1p5tOo:NF0WIntipzYpMaW-UZu3dSh7dEXx03xSZ_b1L4Vw__U	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 189, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:53:22.019Z", "live_revision": 189, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:53:21.945Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<blockquote data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</blockquote><blockquote data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</blockquote><blockquote data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</blockquote><blockquote data-block-key=\\"cnhdi\\">We hope to see you soon!</blockquote><blockquote data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></blockquote>", "about_image": 33, "wagtail_admin_comments": []}	2022-12-15	54
\.


--
-- Data for Name: wagtailadmin_admin; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailadmin_admin (id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_collectionviewrestriction (id, restriction_type, password, collection_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_collectionviewrestriction_groups (id, collectionviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_comment; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_comment (id, text, contentpath, "position", created_at, updated_at, resolved_at, page_id, resolved_by_id, user_id, revision_created_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_commentreply; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_commentreply (id, text, created_at, updated_at, comment_id, user_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_groupapprovaltask; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_groupapprovaltask (task_ptr_id) FROM stdin;
1
\.


--
-- Data for Name: wagtailcore_groupapprovaltask_groups; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_groupapprovaltask_groups (id, groupapprovaltask_id, group_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	2	2
2	1	1	2
3	1	2	3
4	1	1	3
5	1	2	5
6	1	1	5
7	1	2	6
8	1	1	6
9	1	2	7
10	1	1	7
11	1	2	9
12	1	1	9
\.


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
7	unlock	1	1
\.


--
-- Data for Name: wagtailcore_locale; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_locale (id, language_code) FROM stdin;
1	en
\.


--
-- Data for Name: wagtailcore_modellogentry; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_modellogentry (id, label, action, "timestamp", content_changed, deleted, object_id, content_type_id, user_id, uuid, data, revision_id) FROM stdin;
1	Landing Page [default]	wagtail.edit	2022-11-28 14:12:54.373461-05	t	f	2	20	1	28fec343176a46739d0068a4ab5a43ec	{}	\N
2	Landing Page [default]	wagtail.edit	2022-11-28 15:57:53.732951-05	t	f	2	20	1	25e671dcdbc64add8d0ab45a3cb84340	{}	\N
3	Landing Page [default]	wagtail.edit	2022-11-28 15:58:06.501262-05	t	f	2	20	1	4e14eba84f8149b7b3521a4559b94b0f	{}	\N
4	Black Moon Games [default]	wagtail.edit	2022-11-28 22:29:05.760081-05	t	f	2	20	1	fd02625a284d4dc8a219504c984af699	{}	\N
5	Black Moon Games [default]	wagtail.create	2022-11-28 22:31:26.333947-05	t	f	3	20	1	23db128bdf184a289203504a68a9d88c	{}	\N
6	Black Moon Games [default]	wagtail.edit	2022-11-29 14:55:01.893101-05	f	f	3	20	1	50239b31471046cf89c82849f0876636	{}	\N
7	montv	wagtail.edit	2022-11-30 21:12:28.570368-05	t	f	1	43	1	febfcc0be28949d896c4fbc6b0bcfa2d	{}	\N
8	Black Moon Games [default]	wagtail.edit	2022-12-06 13:14:58.642925-05	t	f	3	20	1	6d947c8cce754854810698b7e756fe07	{}	\N
9	Black Moon Games [default]	wagtail.edit	2022-12-06 13:16:01.565918-05	t	f	3	20	1	ccafcd36bc194d01b9148d1bdeb6eec0	{}	\N
10	Black Moon Games [default]	wagtail.edit	2022-12-06 13:27:58.474901-05	t	f	3	20	1	7adaa635a8d84e2ea6b5f14b6e902a25	{}	\N
11	admin	wagtail.edit	2022-12-09 19:54:57.027573-05	t	f	1	43	1	d4ac2ce686174cf189d285c37b9aee14	{}	\N
\.


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title, locked_at, locked_by_id, locale_id, translation_key, alias_of_id, latest_revision_id) FROM stdin;
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N	\N	\N	Root	\N	\N	1	eb53095ff2344aa3b629b875964342e6	\N	\N
4	00010001	2	11	Black Moon Games	black-moon-games	t	f	/black-moon-games/		f		\N	\N	f	46	1	f	2022-12-07 15:22:50.513656-05	2022-11-28 22:31:00.549635-05	142	2022-12-07 15:22:50.591424-05	Black Moon Games	\N	\N	1	3b6742e846f941d1a6e5082df20a933b	\N	142
6	000100010001	3	0	Navbar	navbar	t	f	/black-moon-games/navbar/		f		\N	\N	f	47	1	f	2022-12-02 16:29:01.114837-05	2022-11-29 14:55:56.351366-05	91	2022-12-02 16:29:01.166593-05	Navbar	\N	\N	1	d9c00900ea274e448e35ef8a395f1db2	\N	91
7	000100010002	3	0	Landing Page	landing-page	t	f	/black-moon-games/landing-page/		f		\N	\N	f	48	1	f	2022-12-15 17:55:21.432683-05	2022-11-29 15:01:29.106201-05	176	2022-12-15 17:55:21.494066-05	Landing Page	\N	\N	1	12b7fa48d3214fb28ed1ed061493c70f	\N	176
8	000100010003	3	0	Banner	banner	t	f	/black-moon-games/banner/		f		\N	\N	f	49	1	f	2022-12-06 01:03:32.386397-05	2022-12-02 15:50:14.263128-05	103	2022-12-06 01:03:32.45767-05	Banner	\N	\N	1	83a349327f074ab79edaeb3c303c2997	\N	103
9	000100010004	3	0	New Products	home	t	f	/black-moon-games/home/		f		\N	\N	f	50	1	f	2022-12-06 13:52:28.196876-05	2022-12-05 14:55:07.243353-05	107	2022-12-06 13:52:28.24816-05	New Products	\N	\N	1	a41904eb22814b1781aa7dc271fbdd5c	\N	107
10	000100010005	3	0	TCGS	magic-singles	t	f	/black-moon-games/magic-singles/		f		\N	\N	f	52	1	f	2022-12-06 16:06:36.41607-05	2022-12-06 14:33:36.99972-05	135	2022-12-06 16:06:36.492998-05	TCGS	\N	\N	1	0973800ed9be4229af496bccc51508d0	\N	135
34	000100010006	3	0	Friday Night Magic	friday-night-magic	t	f	/black-moon-games/friday-night-magic/		f		\N	\N	f	53	1	f	2022-12-09 19:42:00.267633-05	2022-12-09 19:42:00.330374-05	170	2022-12-09 19:42:00.330374-05	Friday Night Magic	\N	\N	1	d9a0e4e4546e4472b3e786652671b262	\N	170
35	000100010007	3	0	Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)	flesh-and-blood-tcg-classic-constructed-charity-tournament-pre-registration-dec-18th	t	f	/black-moon-games/flesh-and-blood-tcg-classic-constructed-charity-tournament-pre-registration-dec-18th/		f		\N	\N	f	53	1	f	2022-12-09 19:56:50.225718-05	2022-12-09 19:56:50.279047-05	171	2022-12-09 19:56:50.279047-05	Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)	\N	\N	1	c1085c9dfa7740198c117c5d776e8f16	\N	171
36	000100010008	3	0	About	about	t	f	/black-moon-games/about/		f		\N	\N	f	54	1	f	2022-12-15 18:56:23.226075-05	2022-12-15 18:26:52.773817-05	190	2022-12-15 18:56:23.316869-05	About	\N	\N	1	e648fc760f984c1492d87d7c8871ad2a	\N	190
\.


--
-- Data for Name: wagtailcore_pagelogentry; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_pagelogentry (id, label, action, "timestamp", content_changed, deleted, content_type_id, page_id, revision_id, user_id, uuid, data) FROM stdin;
1	Home	wagtail.edit	2022-11-27 15:27:40.040533-05	t	f	2	3	1	1	0782a155c4f8492696338d6d280a1fd7	{}
2	Home	wagtail.edit	2022-11-27 15:27:43.52973-05	t	f	2	3	2	1	3a86befffc9e4d9ba791542b28841407	{}
3	Home	wagtail.publish	2022-11-27 15:27:43.588962-05	f	f	2	3	2	1	3a86befffc9e4d9ba791542b28841407	{}
4	Home	wagtail.edit	2022-11-27 15:32:22.292746-05	t	f	2	3	3	1	42a1177c567d461b8a6596e8722cc093	{}
5	Home	wagtail.edit	2022-11-27 15:32:25.236815-05	t	f	2	3	4	1	26beff6ab8c1446ca6f2085510af084e	{}
6	Home	wagtail.publish	2022-11-27 15:32:25.366322-05	f	f	2	3	4	1	26beff6ab8c1446ca6f2085510af084e	{}
7	Home	wagtail.edit	2022-11-27 15:34:30.204041-05	t	f	2	3	5	1	9b3a453bf2614f85b57edfbbd30a86c3	{}
8	Home	wagtail.publish	2022-11-27 15:34:30.296545-05	t	f	2	3	5	1	9b3a453bf2614f85b57edfbbd30a86c3	{}
9	Home	wagtail.edit	2022-11-27 15:36:05.680412-05	t	f	2	3	6	1	9643ee7a32c947bdac87d3e5670fbb0e	{}
10	Home	wagtail.publish	2022-11-27 15:36:05.804105-05	t	f	2	3	6	1	9643ee7a32c947bdac87d3e5670fbb0e	{}
11	Home	wagtail.edit	2022-11-27 15:52:58.398181-05	t	f	2	3	7	1	415079a1b5de47c8a2eb04aac9e2dac3	{}
12	Landing Page	wagtail.rename	2022-11-27 15:52:58.451934-05	f	f	2	3	7	1	415079a1b5de47c8a2eb04aac9e2dac3	{"title": {"old": "Home", "new": "Landing Page"}}
13	Landing Page	wagtail.publish	2022-11-27 15:52:58.463743-05	t	f	2	3	7	1	415079a1b5de47c8a2eb04aac9e2dac3	{"title": {"old": "Home", "new": "Landing Page"}}
14	Landing Page	wagtail.edit	2022-11-27 15:53:48.068956-05	t	f	2	3	8	1	48e808f962e64362ab51c9ca65582786	{}
15	Landing Page	wagtail.publish	2022-11-27 15:53:48.140674-05	t	f	2	3	8	1	48e808f962e64362ab51c9ca65582786	{}
16	Landing Page	wagtail.edit	2022-11-28 13:58:57.534732-05	t	f	2	3	9	1	1e72cb4c86164019989a1ded964ce21d	{}
17	Landing Page	wagtail.publish	2022-11-28 13:58:57.662355-05	t	f	2	3	9	1	1e72cb4c86164019989a1ded964ce21d	{}
18	Landing Page	wagtail.edit	2022-11-28 14:02:46.818682-05	t	f	2	3	10	1	6e801b7fe54a459ea9a526521f0e5e64	{}
19	Landing Page	wagtail.publish	2022-11-28 14:02:46.942036-05	f	f	2	3	10	1	6e801b7fe54a459ea9a526521f0e5e64	{}
20	Landing Page	wagtail.edit	2022-11-28 14:04:33.862067-05	t	f	2	3	11	1	0b259e664b66440b94adae4cdf82d6ac	{}
21	Landing Page	wagtail.publish	2022-11-28 14:04:33.965063-05	f	f	2	3	11	1	0b259e664b66440b94adae4cdf82d6ac	{}
22	Landing Page	wagtail.edit	2022-11-28 14:04:59.293728-05	t	f	2	3	12	1	2329cfb8233e4a65893cfdb839647a77	{}
23	Landing Page	wagtail.edit	2022-11-28 14:05:02.234064-05	t	f	2	3	13	1	d8ab994ca8d7456aa5545c50be607c18	{}
24	Landing Page	wagtail.publish	2022-11-28 14:05:02.355531-05	f	f	2	3	13	1	d8ab994ca8d7456aa5545c50be607c18	{}
25	Landing Page	wagtail.edit	2022-11-28 14:12:04.289961-05	t	f	2	3	14	1	ddd30e2cde6d47e0abb8eb7da64a7322	{}
26	Landing Page	wagtail.edit	2022-11-28 14:12:07.676959-05	t	f	2	3	15	1	2c04a2a0dda64bbfa2ba30eadcf602f1	{}
27	Landing Page	wagtail.publish	2022-11-28 14:12:07.794145-05	f	f	2	3	15	1	2c04a2a0dda64bbfa2ba30eadcf602f1	{}
28	Landing Page	wagtail.edit	2022-11-28 14:13:14.603433-05	t	f	2	3	16	1	ff2d6a40462d453e9f3ed6f2dd7e62d7	{}
29	Landing Page	wagtail.edit	2022-11-28 14:13:16.995379-05	t	f	2	3	17	1	ee5c613980e24c3a825696ce7931a9cd	{}
30	Landing Page	wagtail.publish	2022-11-28 14:13:17.119204-05	f	f	2	3	17	1	ee5c613980e24c3a825696ce7931a9cd	{}
31	Landing Page	wagtail.edit	2022-11-28 14:16:35.26493-05	t	f	2	3	18	1	8bd5f2f0787646c28c2d8152c35290fa	{}
32	Landing Page	wagtail.edit	2022-11-28 14:16:37.923887-05	t	f	2	3	19	1	42f998f833a644e8a03aebefcc806882	{}
33	Landing Page	wagtail.publish	2022-11-28 14:16:38.039458-05	f	f	2	3	19	1	42f998f833a644e8a03aebefcc806882	{}
34	Landing Page	wagtail.edit	2022-11-28 14:23:55.378683-05	t	f	2	3	20	1	a82af4cbea8445c69232b95bdc990949	{}
35	Landing Page	wagtail.edit	2022-11-28 14:23:58.208198-05	t	f	2	3	21	1	1f98c18921e94e4eb1c6ccfaf3d23d51	{}
36	Landing Page	wagtail.publish	2022-11-28 14:23:58.285548-05	f	f	2	3	21	1	1f98c18921e94e4eb1c6ccfaf3d23d51	{}
37	Landing Page	wagtail.edit	2022-11-28 14:24:54.717439-05	t	f	2	3	22	1	cb188729545f4cae90a633b4a3c9bb51	{}
38	Landing Page	wagtail.edit	2022-11-28 14:24:57.021796-05	t	f	2	3	23	1	a653976652f2409189c82c4339c70729	{}
39	Landing Page	wagtail.publish	2022-11-28 14:24:57.101421-05	f	f	2	3	23	1	a653976652f2409189c82c4339c70729	{}
40	Landing Page	wagtail.edit	2022-11-28 14:26:04.99232-05	t	f	2	3	24	1	1922635f365b457899bf24310212034e	{}
41	Landing Page	wagtail.edit	2022-11-28 14:26:07.092046-05	t	f	2	3	25	1	da6368815ec7404c8b81a999445d9192	{}
42	Landing Page	wagtail.publish	2022-11-28 14:26:07.183407-05	f	f	2	3	25	1	da6368815ec7404c8b81a999445d9192	{}
43	Landing Page	wagtail.edit	2022-11-28 14:27:17.527242-05	t	f	2	3	26	1	77e3df68166b42a8a1411460205af322	{}
44	Landing Page	wagtail.edit	2022-11-28 14:27:19.839243-05	t	f	2	3	27	1	1842cc7fa235437c9f2bc806bda40fc2	{}
45	Landing Page	wagtail.publish	2022-11-28 14:27:19.914892-05	f	f	2	3	27	1	1842cc7fa235437c9f2bc806bda40fc2	{}
46	Landing Page	wagtail.edit	2022-11-28 14:29:21.891855-05	t	f	2	3	28	1	01beea574f564d3eb73081ac76ed9860	{}
47	Landing Page	wagtail.publish	2022-11-28 14:29:21.986477-05	t	f	2	3	28	1	01beea574f564d3eb73081ac76ed9860	{}
48	Landing Page	wagtail.edit	2022-11-28 14:31:24.190934-05	t	f	2	3	29	1	8c44dccc7632491e8d2453a1936b5825	{}
49	Landing Page	wagtail.publish	2022-11-28 14:31:24.262361-05	t	f	2	3	29	1	8c44dccc7632491e8d2453a1936b5825	{}
50	Landing Page	wagtail.edit	2022-11-28 14:43:32.031345-05	t	f	2	3	30	1	fc47389acba94711bb8576db0d2d30c9	{}
51	Landing Page	wagtail.publish	2022-11-28 14:43:32.106335-05	t	f	2	3	30	1	fc47389acba94711bb8576db0d2d30c9	{}
52	Landing Page	wagtail.edit	2022-11-28 14:46:20.819013-05	t	f	2	3	31	1	4824549f21364ff19b33a37addfbc258	{}
53	Landing Page	wagtail.publish	2022-11-28 14:46:20.880703-05	t	f	2	3	31	1	4824549f21364ff19b33a37addfbc258	{}
54	Landing Page	wagtail.edit	2022-11-28 15:16:02.83464-05	t	f	2	3	32	1	3f75b80cc9ba4dffba1da768cf98c4fc	{}
55	Landing Page	wagtail.publish	2022-11-28 15:16:02.964992-05	t	f	2	3	32	1	3f75b80cc9ba4dffba1da768cf98c4fc	{}
56	Landing Page	wagtail.edit	2022-11-28 15:58:24.053212-05	t	f	2	3	33	1	188c9b6c83b84467bfd1d68b2ed99a54	{}
57	Landing Page	wagtail.publish	2022-11-28 15:58:24.143711-05	t	f	2	3	33	1	188c9b6c83b84467bfd1d68b2ed99a54	{}
58	Landing Page	wagtail.delete	2022-11-28 22:29:20.07699-05	f	t	1	3	\N	1	dd532a0ddf6248128787fe6d2d934cc3	{}
59	Black Moon Games	wagtail.create	2022-11-28 22:31:00.453071-05	t	f	46	4	\N	1	7108dac9bfc44a19bb5bbc253431e1a8	{}
60	Black Moon Games	wagtail.publish	2022-11-28 22:31:00.595933-05	t	f	46	4	34	1	7108dac9bfc44a19bb5bbc253431e1a8	{}
61	Black Moon Games	wagtail.edit	2022-11-28 22:31:35.757086-05	t	f	46	4	35	1	7d45276393444129b32b13b34f28dd6d	{}
62	Home	wagtail.rename	2022-11-28 22:31:35.848156-05	f	f	46	4	35	1	7d45276393444129b32b13b34f28dd6d	{"title": {"old": "Black Moon Games", "new": "Home"}}
63	Home	wagtail.publish	2022-11-28 22:31:35.857474-05	t	f	46	4	35	1	7d45276393444129b32b13b34f28dd6d	{"title": {"old": "Black Moon Games", "new": "Home"}}
64	Home	wagtail.edit	2022-11-28 22:34:09.556666-05	t	f	46	4	36	1	64808e36fe844fce9c7b43205895598b	{}
65	Home	wagtail.edit	2022-11-28 22:34:12.530579-05	t	f	46	4	37	1	c53372bb1c2f42d9b464a41e7133f6a4	{}
66	Home	wagtail.publish	2022-11-28 22:34:12.597346-05	f	f	46	4	37	1	c53372bb1c2f42d9b464a41e7133f6a4	{}
67	Home	wagtail.edit	2022-11-28 22:34:30.07277-05	t	f	46	4	38	1	7ed4797ac3ca48728b341130a7f89901	{}
68	Home	wagtail.publish	2022-11-28 22:34:30.213907-05	t	f	46	4	38	1	7ed4797ac3ca48728b341130a7f89901	{}
69	Home	wagtail.edit	2022-11-28 22:36:09.658509-05	t	f	46	4	39	1	4f20568b489e4007ae6fdd87b5d7a0f1	{}
70	Home	wagtail.publish	2022-11-28 22:36:09.72752-05	t	f	46	4	39	1	4f20568b489e4007ae6fdd87b5d7a0f1	{}
71	Home	wagtail.edit	2022-11-28 22:37:30.311644-05	t	f	46	4	40	1	c473772df727470dbdd49c4644ee9790	{}
72	Home	wagtail.publish	2022-11-28 22:37:30.390416-05	t	f	46	4	40	1	c473772df727470dbdd49c4644ee9790	{}
73	Home	wagtail.edit	2022-11-28 23:32:07.72792-05	t	f	46	4	41	1	62e2c874779b4fbd9987b336adb96601	{}
74	Home	wagtail.edit	2022-11-28 23:32:10.220153-05	t	f	46	4	42	1	f2e643ccc5634f608e915fb38101eed3	{}
75	Home	wagtail.publish	2022-11-28 23:32:10.303573-05	f	f	46	4	42	1	f2e643ccc5634f608e915fb38101eed3	{}
76	Home	wagtail.edit	2022-11-28 23:36:20.572015-05	t	f	46	4	43	1	091338f3ce6e421fa0c9a182e9890301	{}
77	Home	wagtail.publish	2022-11-28 23:36:20.67423-05	t	f	46	4	43	1	091338f3ce6e421fa0c9a182e9890301	{}
78	Home	wagtail.edit	2022-11-28 23:40:03.945001-05	t	f	46	4	44	1	2fd950865d0d40039a1ea1aba09ca13e	{}
79	Home	wagtail.publish	2022-11-28 23:40:04.081237-05	t	f	46	4	44	1	2fd950865d0d40039a1ea1aba09ca13e	{}
80	Home	wagtail.edit	2022-11-29 00:34:09.007139-05	t	f	46	4	45	1	614398a51de949d7b47a754f52284383	{}
81	Home	wagtail.publish	2022-11-29 00:34:09.138273-05	t	f	46	4	45	1	614398a51de949d7b47a754f52284383	{}
82	Home	wagtail.edit	2022-11-29 00:49:58.187312-05	t	f	46	4	46	1	43e7e8587cd14885a40dd6a12f811df4	{}
83	Home	wagtail.publish	2022-11-29 00:49:58.305592-05	t	f	46	4	46	1	43e7e8587cd14885a40dd6a12f811df4	{}
84	Home	wagtail.edit	2022-11-29 01:16:52.119661-05	t	f	46	4	47	1	e340697df36e4694b3de0b1cd42e09ce	{}
85	Home	wagtail.publish	2022-11-29 01:16:52.208203-05	t	f	46	4	47	1	e340697df36e4694b3de0b1cd42e09ce	{}
86	Home	wagtail.edit	2022-11-29 01:43:50.987736-05	t	f	46	4	48	1	0598effed0984e77b21d83a20dfcd95f	{}
87	Home	wagtail.publish	2022-11-29 01:43:51.072894-05	t	f	46	4	48	1	0598effed0984e77b21d83a20dfcd95f	{}
88	Home	wagtail.edit	2022-11-29 01:46:20.795172-05	t	f	46	4	49	1	d54c7959d4694e29a9d978f6cd390334	{}
89	Home	wagtail.edit	2022-11-29 01:46:22.960801-05	t	f	46	4	50	1	adec5e9b9da04a57b643f9724c034f73	{}
90	Home	wagtail.publish	2022-11-29 01:46:23.051109-05	f	f	46	4	50	1	adec5e9b9da04a57b643f9724c034f73	{}
91	Home	wagtail.edit	2022-11-29 13:21:22.086866-05	t	f	46	4	51	1	9c0cb37e0ae94b389f44ea1dfb9c457f	{}
92	Home	wagtail.publish	2022-11-29 13:21:22.195881-05	t	f	46	4	51	1	9c0cb37e0ae94b389f44ea1dfb9c457f	{}
93	Home	wagtail.edit	2022-11-29 13:22:01.851623-05	t	f	46	4	52	1	929e20011dbe44e09e489658098c4d44	{}
94	Home	wagtail.publish	2022-11-29 13:22:01.938295-05	f	f	46	4	52	1	929e20011dbe44e09e489658098c4d44	{}
95	Home	wagtail.edit	2022-11-29 13:23:37.93585-05	t	f	46	4	53	1	a5fcf4677345428e82cf93cf4188469c	{}
96	Home	wagtail.publish	2022-11-29 13:23:38.05839-05	t	f	46	4	53	1	a5fcf4677345428e82cf93cf4188469c	{}
97	Home	wagtail.edit	2022-11-29 13:36:15.355057-05	t	f	46	4	54	1	20be85e9b8e949a09c3d527ecbb20398	{}
98	Home	wagtail.publish	2022-11-29 13:36:15.486481-05	t	f	46	4	54	1	20be85e9b8e949a09c3d527ecbb20398	{}
99	Home	wagtail.edit	2022-11-29 14:28:41.595029-05	t	f	46	4	55	1	4082911bffce424ca360dff394cb6106	{}
100	Home	wagtail.publish	2022-11-29 14:28:41.712127-05	t	f	46	4	55	1	4082911bffce424ca360dff394cb6106	{}
101	Home	wagtail.edit	2022-11-29 14:29:29.952921-05	t	f	46	4	56	1	29407cd6b0294d5faaf33fd1998b4721	{}
102	Home	wagtail.publish	2022-11-29 14:29:30.081311-05	f	f	46	4	56	1	29407cd6b0294d5faaf33fd1998b4721	{}
103	Home	wagtail.edit	2022-11-29 14:31:53.527952-05	t	f	46	4	57	1	86e2f312a26d4ffdb8e523fd9c42006c	{}
104	Home	wagtail.publish	2022-11-29 14:31:53.655402-05	t	f	46	4	57	1	86e2f312a26d4ffdb8e523fd9c42006c	{}
105	Home	wagtail.edit	2022-11-29 14:33:31.772939-05	t	f	46	4	58	1	57515119004a4bf1916062c55afc4bdd	{}
106	Home	wagtail.publish	2022-11-29 14:33:31.887581-05	f	f	46	4	58	1	57515119004a4bf1916062c55afc4bdd	{}
107	Home	wagtail.edit	2022-11-29 14:34:00.284005-05	t	f	46	4	59	1	d09791c379e444d880cbe9d2a195dff4	{}
108	Home	wagtail.publish	2022-11-29 14:34:00.383351-05	f	f	46	4	59	1	d09791c379e444d880cbe9d2a195dff4	{}
109	Navbar	wagtail.create	2022-11-29 14:53:53.336336-05	t	f	47	5	\N	1	b0376f50601a44ec84c7b06262f58229	{}
110	Navbar	wagtail.publish	2022-11-29 14:53:53.461324-05	t	f	47	5	60	1	b0376f50601a44ec84c7b06262f58229	{}
111	Navbar	wagtail.delete	2022-11-29 14:55:13.724588-05	f	t	47	5	\N	1	3b29d4f4decc4be7bb65ece983770528	{}
112	Home	wagtail.edit	2022-11-29 14:55:31.732046-05	t	f	46	4	61	1	e1b64562d22b4295b5467be3af4e2f1d	{}
113	Black Moon Games	wagtail.rename	2022-11-29 14:55:31.821122-05	f	f	46	4	61	1	e1b64562d22b4295b5467be3af4e2f1d	{"title": {"old": "Home", "new": "Black Moon Games"}}
114	Black Moon Games	wagtail.publish	2022-11-29 14:55:31.831334-05	t	f	46	4	61	1	e1b64562d22b4295b5467be3af4e2f1d	{"title": {"old": "Home", "new": "Black Moon Games"}}
115	Navbar	wagtail.create	2022-11-29 14:55:56.256275-05	t	f	47	6	\N	1	abc1885843114bd4889a968de0179334	{}
116	Navbar	wagtail.publish	2022-11-29 14:55:56.39632-05	t	f	47	6	62	1	abc1885843114bd4889a968de0179334	{}
117	Landing Page	wagtail.create	2022-11-29 15:01:29.004948-05	t	f	48	7	\N	1	75fd1f12598b4a6e9b4e565c18799155	{}
118	Landing Page	wagtail.publish	2022-11-29 15:01:29.15456-05	t	f	48	7	63	1	75fd1f12598b4a6e9b4e565c18799155	{}
119	Landing Page	wagtail.move	2022-11-29 15:02:24.299679-05	f	f	48	7	\N	1	e3bdfe9bc28d465bba225c0951847459	{"source": {"id": 6, "title": "Navbar"}, "destination": {"id": 4, "title": "Black Moon Games"}}
120	Landing Page	wagtail.edit	2022-11-29 15:03:05.198945-05	t	f	48	7	64	1	7529791a4e804bf2b3f254f497684238	{}
121	Landing Page	wagtail.publish	2022-11-29 15:03:05.294122-05	f	f	48	7	64	1	7529791a4e804bf2b3f254f497684238	{}
122	Landing Page	wagtail.edit	2022-11-30 16:03:04.144432-05	t	f	48	7	65	1	a829ca3ccacf4820a5798a56a859bf65	{}
123	Landing Page	wagtail.publish	2022-11-30 16:03:04.234873-05	t	f	48	7	65	1	a829ca3ccacf4820a5798a56a859bf65	{}
124	Navbar	wagtail.edit	2022-11-30 16:39:43.511151-05	t	f	47	6	66	1	9ff51d431b8546c191c7d5d579129145	{}
125	Navbar	wagtail.publish	2022-11-30 16:39:43.627417-05	f	f	47	6	66	1	9ff51d431b8546c191c7d5d579129145	{}
126	Navbar	wagtail.edit	2022-11-30 16:40:11.455351-05	t	f	47	6	67	1	27e7dfe75d294572b40474d39bb246c6	{}
127	Navbar	wagtail.publish	2022-11-30 16:40:11.551102-05	f	f	47	6	67	1	27e7dfe75d294572b40474d39bb246c6	{}
128	Navbar	wagtail.edit	2022-11-30 16:41:53.233317-05	t	f	47	6	68	1	0c57253b15854589a298633da4d1a5da	{}
129	Navbar	wagtail.publish	2022-11-30 16:41:53.375156-05	t	f	47	6	68	1	0c57253b15854589a298633da4d1a5da	{}
130	Navbar	wagtail.edit	2022-11-30 16:43:47.041305-05	t	f	47	6	69	1	105eecffa1c942b7bc81daeb02bff2c6	{}
131	Navbar	wagtail.publish	2022-11-30 16:43:47.133824-05	f	f	47	6	69	1	105eecffa1c942b7bc81daeb02bff2c6	{}
132	Navbar	wagtail.edit	2022-11-30 16:45:43.104367-05	t	f	47	6	70	1	22096909392f4b5bb697ba607795ad68	{}
133	Navbar	wagtail.publish	2022-11-30 16:45:43.181291-05	f	f	47	6	70	1	22096909392f4b5bb697ba607795ad68	{}
134	Landing Page	wagtail.edit	2022-11-30 19:01:41.937069-05	t	f	48	7	71	1	3ec2cb87b81f4ac4baec55ad8a7e74a8	{}
135	Landing Page	wagtail.publish	2022-11-30 19:01:42.003742-05	t	f	48	7	71	1	3ec2cb87b81f4ac4baec55ad8a7e74a8	{}
136	Landing Page	wagtail.edit	2022-11-30 19:02:10.962876-05	t	f	48	7	72	1	ca6dd2040ee44ec88ef9ce51e235cefe	{}
137	Landing Page	wagtail.publish	2022-11-30 19:02:11.048393-05	t	f	48	7	72	1	ca6dd2040ee44ec88ef9ce51e235cefe	{}
138	Landing Page	wagtail.edit	2022-11-30 19:03:53.904731-05	t	f	48	7	73	1	adee17a0cbfe4e55ac22b4c90a45a98d	{}
139	Landing Page	wagtail.publish	2022-11-30 19:03:53.985264-05	t	f	48	7	73	1	adee17a0cbfe4e55ac22b4c90a45a98d	{}
140	Landing Page	wagtail.edit	2022-11-30 19:11:51.297066-05	t	f	48	7	74	1	1250862029fe463e824f5eb8cbddeba8	{}
141	Landing Page	wagtail.publish	2022-11-30 19:11:51.419065-05	t	f	48	7	74	1	1250862029fe463e824f5eb8cbddeba8	{}
142	Landing Page	wagtail.edit	2022-11-30 19:13:21.263866-05	t	f	48	7	75	1	a3f1e398934342738b637b8a1830e2e1	{}
143	Landing Page	wagtail.publish	2022-11-30 19:13:21.325188-05	t	f	48	7	75	1	a3f1e398934342738b637b8a1830e2e1	{}
144	Landing Page	wagtail.edit	2022-11-30 19:13:58.655268-05	t	f	48	7	76	1	31af212309a34452868e8d0bacea340f	{}
145	Landing Page	wagtail.publish	2022-11-30 19:13:58.73972-05	t	f	48	7	76	1	31af212309a34452868e8d0bacea340f	{}
146	Landing Page	wagtail.edit	2022-11-30 19:17:41.707747-05	t	f	48	7	77	1	4652c454051e44c88157afb81d6b7861	{}
147	Landing Page	wagtail.publish	2022-11-30 19:17:41.798412-05	t	f	48	7	77	1	4652c454051e44c88157afb81d6b7861	{}
148	Landing Page	wagtail.edit	2022-11-30 19:18:50.998608-05	t	f	48	7	78	1	db81c93e99e445beb4ed3a6d93e8d562	{}
149	Landing Page	wagtail.publish	2022-11-30 19:18:51.112176-05	t	f	48	7	78	1	db81c93e99e445beb4ed3a6d93e8d562	{}
150	Landing Page	wagtail.edit	2022-11-30 19:19:54.41596-05	t	f	48	7	79	1	b1841b40d97c4cf5a93b8abac906a5ee	{}
151	Landing Page	wagtail.publish	2022-11-30 19:19:54.487604-05	t	f	48	7	79	1	b1841b40d97c4cf5a93b8abac906a5ee	{}
152	Landing Page	wagtail.edit	2022-11-30 19:23:48.346953-05	t	f	48	7	80	1	3a683ed4958a498aa09c9c5e95c2c287	{}
153	Landing Page	wagtail.publish	2022-11-30 19:23:48.436154-05	t	f	48	7	80	1	3a683ed4958a498aa09c9c5e95c2c287	{}
154	Landing Page	wagtail.edit	2022-11-30 19:24:09.336355-05	t	f	48	7	81	1	ca6ec90063274f4da7d37866be69987a	{}
155	Landing Page	wagtail.publish	2022-11-30 19:24:09.456267-05	t	f	48	7	81	1	ca6ec90063274f4da7d37866be69987a	{}
156	Landing Page	wagtail.edit	2022-11-30 19:34:25.259249-05	t	f	48	7	82	1	2c30274b4d6f496796f4ef216c09a7e8	{}
157	Landing Page	wagtail.publish	2022-11-30 19:34:25.338819-05	t	f	48	7	82	1	2c30274b4d6f496796f4ef216c09a7e8	{}
158	Landing Page	wagtail.edit	2022-11-30 19:34:42.848495-05	t	f	48	7	83	1	9225346dff1142c3bd94cc54eb1e93e8	{}
159	Landing Page	wagtail.publish	2022-11-30 19:34:42.919004-05	t	f	48	7	83	1	9225346dff1142c3bd94cc54eb1e93e8	{}
160	Landing Page	wagtail.edit	2022-11-30 19:35:26.352131-05	t	f	48	7	84	1	c2f935f3b9ab42f8bad0fae764917850	{}
161	Landing Page	wagtail.publish	2022-11-30 19:35:26.422266-05	t	f	48	7	84	1	c2f935f3b9ab42f8bad0fae764917850	{}
162	Landing Page	wagtail.edit	2022-11-30 19:37:07.073947-05	t	f	48	7	85	1	a31004a9d83d4468b7e37a9a81d08376	{}
163	Landing Page	wagtail.publish	2022-11-30 19:37:07.163424-05	t	f	48	7	85	1	a31004a9d83d4468b7e37a9a81d08376	{}
164	Landing Page	wagtail.edit	2022-11-30 19:37:56.130035-05	t	f	48	7	86	1	95b6640214474fc0b6b394877b471788	{}
165	Landing Page	wagtail.publish	2022-11-30 19:37:56.220265-05	t	f	48	7	86	1	95b6640214474fc0b6b394877b471788	{}
166	Landing Page	wagtail.edit	2022-11-30 19:39:44.612711-05	t	f	48	7	87	1	afe5b473fcd340d4b1d13dd683925b3d	{}
167	Landing Page	wagtail.publish	2022-11-30 19:39:44.684255-05	t	f	48	7	87	1	afe5b473fcd340d4b1d13dd683925b3d	{}
168	Announcements	wagtail.create	2022-12-02 15:50:14.15406-05	t	f	49	8	\N	1	5fba396e961e4c708a6b17d2ce128826	{}
169	Announcements	wagtail.publish	2022-12-02 15:50:14.310586-05	t	f	49	8	88	1	5fba396e961e4c708a6b17d2ce128826	{}
170	Announcements	wagtail.edit	2022-12-02 15:52:48.385253-05	t	f	49	8	89	1	2ac36a8fad42497699bb0c7d0feef5e8	{}
171	Banner	wagtail.rename	2022-12-02 15:52:48.506058-05	f	f	49	8	89	1	2ac36a8fad42497699bb0c7d0feef5e8	{"title": {"old": "Announcements", "new": "Banner"}}
172	Banner	wagtail.publish	2022-12-02 15:52:48.514805-05	t	f	49	8	89	1	2ac36a8fad42497699bb0c7d0feef5e8	{"title": {"old": "Announcements", "new": "Banner"}}
173	Landing Page	wagtail.edit	2022-12-02 16:10:25.387015-05	t	f	48	7	90	1	80ce1a77faec48b6bb0f67ac470d31cd	{}
174	Landing Page	wagtail.publish	2022-12-02 16:10:25.456043-05	t	f	48	7	90	1	80ce1a77faec48b6bb0f67ac470d31cd	{}
175	Navbar	wagtail.edit	2022-12-02 16:29:01.143457-05	t	f	47	6	91	1	1e41f387001344caba230f347323f13c	{}
176	Navbar	wagtail.publish	2022-12-02 16:29:01.206925-05	f	f	47	6	91	1	1e41f387001344caba230f347323f13c	{}
177	Banner	wagtail.edit	2022-12-05 13:51:37.43347-05	t	f	49	8	92	1	7b1d3d43d5b742d4a4e8b64ed2c0264a	{}
178	Banner	wagtail.publish	2022-12-05 13:51:37.525052-05	t	f	49	8	92	1	7b1d3d43d5b742d4a4e8b64ed2c0264a	{}
179	Banner	wagtail.edit	2022-12-05 13:51:50.37568-05	t	f	49	8	93	1	c88d1859c20747debf9d3fdf3f10d151	{}
180	Banner	wagtail.publish	2022-12-05 13:51:50.455338-05	f	f	49	8	93	1	c88d1859c20747debf9d3fdf3f10d151	{}
181	Banner	wagtail.edit	2022-12-05 14:07:42.584789-05	t	f	49	8	94	1	a44bf244d40343b28629198b06e1e57b	{}
182	Banner	wagtail.publish	2022-12-05 14:07:42.640581-05	t	f	49	8	94	1	a44bf244d40343b28629198b06e1e57b	{}
183	New Products	wagtail.create	2022-12-05 14:55:07.113042-05	t	f	50	9	\N	1	850ac324584740c88abb9018936bc680	{}
184	New Products	wagtail.publish	2022-12-05 14:55:07.295672-05	t	f	50	9	95	1	850ac324584740c88abb9018936bc680	{}
185	New Products	wagtail.edit	2022-12-05 15:13:21.249253-05	t	f	50	9	96	1	e7de029398e948eea878a45accad3ebe	{}
186	New Products	wagtail.publish	2022-12-05 15:13:21.326976-05	t	f	50	9	96	1	e7de029398e948eea878a45accad3ebe	{}
187	New Products	wagtail.edit	2022-12-05 15:16:35.839882-05	t	f	50	9	97	1	345be6993db14a61b6d537215618ace6	{}
188	New Products	wagtail.publish	2022-12-05 15:16:35.9068-05	f	f	50	9	97	1	345be6993db14a61b6d537215618ace6	{}
189	New Products	wagtail.edit	2022-12-05 15:22:03.012362-05	t	f	50	9	98	1	d25391b1fa5d4aeaadb5f6eb138406ce	{}
190	New Products	wagtail.publish	2022-12-05 15:22:03.11795-05	t	f	50	9	98	1	d25391b1fa5d4aeaadb5f6eb138406ce	{}
191	New Products	wagtail.edit	2022-12-06 00:02:45.216396-05	t	f	50	9	99	1	860bb7cf226441ba808e7ca50e3471a3	{}
192	New Products	wagtail.publish	2022-12-06 00:02:45.297693-05	t	f	50	9	99	1	860bb7cf226441ba808e7ca50e3471a3	{}
193	New Products	wagtail.edit	2022-12-06 00:15:26.264076-05	t	f	50	9	100	1	b9b5123e586e45a488f452b51b1cf184	{}
194	New Products	wagtail.publish	2022-12-06 00:15:26.333056-05	t	f	50	9	100	1	b9b5123e586e45a488f452b51b1cf184	{}
195	New Products	wagtail.edit	2022-12-06 00:26:53.358552-05	t	f	50	9	101	1	c8c04276c56a45b2948d7f2acacf449d	{}
196	New Products	wagtail.publish	2022-12-06 00:26:53.430284-05	t	f	50	9	101	1	c8c04276c56a45b2948d7f2acacf449d	{}
197	New Products	wagtail.edit	2022-12-06 00:27:22.754111-05	t	f	50	9	102	1	cf3e2a022bc64fc7875add67c509c2fa	{}
198	New Products	wagtail.publish	2022-12-06 00:27:22.831381-05	t	f	50	9	102	1	cf3e2a022bc64fc7875add67c509c2fa	{}
199	Banner	wagtail.edit	2022-12-06 01:03:32.42184-05	t	f	49	8	103	1	e6605276c6114e5c8272f0aa423e78f2	{}
200	Banner	wagtail.publish	2022-12-06 01:03:32.506368-05	t	f	49	8	103	1	e6605276c6114e5c8272f0aa423e78f2	{}
201	New Products	wagtail.edit	2022-12-06 13:23:36.594086-05	t	f	50	9	104	1	7e326c4d28404837957ec14f10556f4f	{}
202	New Products	wagtail.publish	2022-12-06 13:23:36.679881-05	t	f	50	9	104	1	7e326c4d28404837957ec14f10556f4f	{}
203	New Products	wagtail.edit	2022-12-06 13:24:21.628568-05	t	f	50	9	105	1	5376febb1c15488d956a8e2fa6da58e6	{}
204	New Products	wagtail.publish	2022-12-06 13:24:21.725619-05	f	f	50	9	105	1	5376febb1c15488d956a8e2fa6da58e6	{}
205	New Products	wagtail.edit	2022-12-06 13:49:08.02472-05	t	f	50	9	106	1	6cbb490f8f0d4453a28649dfb8d96d60	{}
206	New Products	wagtail.edit	2022-12-06 13:52:28.224981-05	t	f	50	9	107	1	28b2c8dbcd734416b27082c223bf3d8f	{}
207	New Products	wagtail.publish	2022-12-06 13:52:28.28433-05	f	f	50	9	107	1	28b2c8dbcd734416b27082c223bf3d8f	{}
208	Magic Singles	wagtail.create	2022-12-06 14:33:36.890226-05	t	f	52	10	\N	1	0cd0dc8d8a4244289bff860b68491822	{}
209	Magic Singles	wagtail.publish	2022-12-06 14:33:37.041157-05	t	f	52	10	108	1	0cd0dc8d8a4244289bff860b68491822	{}
210	Magic Singles	wagtail.edit	2022-12-06 14:41:29.859877-05	t	f	52	10	109	1	1808c9078f5146bb8f4bd9097c789f4d	{}
211	Magic Singles	wagtail.publish	2022-12-06 14:41:29.967479-05	f	f	52	10	109	1	1808c9078f5146bb8f4bd9097c789f4d	{}
212	Magic Singles	wagtail.edit	2022-12-06 14:43:33.762949-05	t	f	52	10	110	1	bf15abe85c944086ac0f00c95cc886d1	{}
213	Magic Singles	wagtail.publish	2022-12-06 14:43:33.885717-05	t	f	52	10	110	1	bf15abe85c944086ac0f00c95cc886d1	{}
214	Magic Singles	wagtail.edit	2022-12-06 14:45:22.648113-05	t	f	52	10	111	1	8c604c2b3d534ec182e5e5e02620a280	{}
215	Magic Singles	wagtail.publish	2022-12-06 14:45:22.776259-05	t	f	52	10	111	1	8c604c2b3d534ec182e5e5e02620a280	{}
216	Magic Singles	wagtail.edit	2022-12-06 14:46:46.258668-05	t	f	52	10	112	1	28042411f4df428585e6630aee1ce742	{}
217	Magic Singles	wagtail.publish	2022-12-06 14:46:46.387968-05	t	f	52	10	112	1	28042411f4df428585e6630aee1ce742	{}
218	Magic Singles	wagtail.edit	2022-12-06 14:52:26.048381-05	t	f	52	10	113	1	cf0ee8dc91d945ac80d19cea63eeb666	{}
219	Magic Singles	wagtail.publish	2022-12-06 14:52:26.145872-05	t	f	52	10	113	1	cf0ee8dc91d945ac80d19cea63eeb666	{}
220	Magic Singles	wagtail.edit	2022-12-06 14:52:53.917553-05	t	f	52	10	114	1	521452b269f4485794f06f465f9b0854	{}
221	Magic Singles	wagtail.publish	2022-12-06 14:52:54.007476-05	f	f	52	10	114	1	521452b269f4485794f06f465f9b0854	{}
222	Magic Singles	wagtail.edit	2022-12-06 14:54:10.011452-05	t	f	52	10	115	1	eabc78f2e176491eb35dc1a8ae677f0c	{}
223	Magic Singles	wagtail.publish	2022-12-06 14:54:10.087933-05	t	f	52	10	115	1	eabc78f2e176491eb35dc1a8ae677f0c	{}
224	Magic Singles	wagtail.edit	2022-12-06 14:54:47.082298-05	t	f	52	10	116	1	85227cb132eb4174b2d02084d56b0825	{}
225	Magic Singles	wagtail.publish	2022-12-06 14:54:47.218069-05	t	f	52	10	116	1	85227cb132eb4174b2d02084d56b0825	{}
226	Magic Singles	wagtail.edit	2022-12-06 14:55:52.270931-05	t	f	52	10	117	1	63b7db742e19421d864a6dbfe3ce2052	{}
227	Magic Singles	wagtail.publish	2022-12-06 14:55:52.359709-05	t	f	52	10	117	1	63b7db742e19421d864a6dbfe3ce2052	{}
228	Magic Singles	wagtail.edit	2022-12-06 15:02:55.369856-05	t	f	52	10	118	1	d56b5842e2a24896a9f1d19552872672	{}
229	Magic Singles	wagtail.publish	2022-12-06 15:02:55.448354-05	t	f	52	10	118	1	d56b5842e2a24896a9f1d19552872672	{}
230	Magic Singles	wagtail.edit	2022-12-06 15:11:14.930625-05	t	f	52	10	119	1	1822eee6c63946cbb77902288c84b52c	{}
231	Magic Singles	wagtail.publish	2022-12-06 15:11:15.061407-05	t	f	52	10	119	1	1822eee6c63946cbb77902288c84b52c	{}
232	Magic Singles	wagtail.edit	2022-12-06 15:14:18.126041-05	t	f	52	10	120	1	5be0bc4112fe4141abb8985f6a045613	{}
233	Magic Singles	wagtail.publish	2022-12-06 15:14:18.207696-05	t	f	52	10	120	1	5be0bc4112fe4141abb8985f6a045613	{}
234	Magic Singles	wagtail.edit	2022-12-06 15:15:29.746975-05	t	f	52	10	121	1	b3b2e96d5d224f9a95e5e6585d97674e	{}
235	Magic Singles	wagtail.publish	2022-12-06 15:15:29.840851-05	t	f	52	10	121	1	b3b2e96d5d224f9a95e5e6585d97674e	{}
236	Magic Singles	wagtail.edit	2022-12-06 15:15:51.791239-05	t	f	52	10	122	1	e5e8a5bc700f4e36bbfd3eb34e6e7b33	{}
237	Magic Singles	wagtail.publish	2022-12-06 15:15:51.878855-05	t	f	52	10	122	1	e5e8a5bc700f4e36bbfd3eb34e6e7b33	{}
238	Magic Singles	wagtail.edit	2022-12-06 15:16:11.632378-05	t	f	52	10	123	1	6cbed07453dd4f91b1b6e3b9c302dc5c	{}
239	Magic Singles	wagtail.publish	2022-12-06 15:16:11.71163-05	t	f	52	10	123	1	6cbed07453dd4f91b1b6e3b9c302dc5c	{}
240	Magic Singles	wagtail.edit	2022-12-06 15:17:56.993919-05	t	f	52	10	124	1	7243bd2617214f6c865c10a6909e8931	{}
241	Magic Singles	wagtail.publish	2022-12-06 15:17:57.080668-05	t	f	52	10	124	1	7243bd2617214f6c865c10a6909e8931	{}
242	Magic Singles	wagtail.edit	2022-12-06 15:19:00.142435-05	t	f	52	10	125	1	0e0b1c0229e24114aff2a592e5560d4b	{}
243	Magic Singles	wagtail.publish	2022-12-06 15:19:00.224576-05	t	f	52	10	125	1	0e0b1c0229e24114aff2a592e5560d4b	{}
244	Magic Singles	wagtail.edit	2022-12-06 15:19:46.500438-05	t	f	52	10	126	1	22f1565982914e68859821d407e776be	{}
245	Magic Singles	wagtail.publish	2022-12-06 15:19:46.567198-05	t	f	52	10	126	1	22f1565982914e68859821d407e776be	{}
246	Magic Singles	wagtail.edit	2022-12-06 15:20:17.192066-05	t	f	52	10	127	1	8457bb4327084108986eb0fad5cf7f0e	{}
247	Magic Singles	wagtail.publish	2022-12-06 15:20:17.278827-05	t	f	52	10	127	1	8457bb4327084108986eb0fad5cf7f0e	{}
248	Magic Singles	wagtail.edit	2022-12-06 15:21:01.000533-05	t	f	52	10	128	1	2d22936e0bd045569776e1df2add1f31	{}
249	Magic Singles	wagtail.publish	2022-12-06 15:21:01.096479-05	t	f	52	10	128	1	2d22936e0bd045569776e1df2add1f31	{}
250	Magic Singles	wagtail.edit	2022-12-06 15:38:54.405576-05	t	f	52	10	129	1	162a873a05db464b88ceb64842bf1f61	{}
251	Magic Singles	wagtail.publish	2022-12-06 15:38:54.507406-05	t	f	52	10	129	1	162a873a05db464b88ceb64842bf1f61	{}
252	Magic Singles	wagtail.edit	2022-12-06 15:43:49.448107-05	t	f	52	10	130	1	e364570d31c14d9699a0499827e8ecbd	{}
253	Magic Singles	wagtail.publish	2022-12-06 15:43:49.580537-05	t	f	52	10	130	1	e364570d31c14d9699a0499827e8ecbd	{}
254	Magic Singles	wagtail.edit	2022-12-06 16:00:54.057192-05	t	f	52	10	131	1	387fca5db3dc4012915a4ba22d445180	{}
255	TCGs	wagtail.rename	2022-12-06 16:00:54.138723-05	f	f	52	10	131	1	387fca5db3dc4012915a4ba22d445180	{"title": {"old": "Magic Singles", "new": "TCGs"}}
256	TCGs	wagtail.publish	2022-12-06 16:00:54.147112-05	t	f	52	10	131	1	387fca5db3dc4012915a4ba22d445180	{"title": {"old": "Magic Singles", "new": "TCGs"}}
257	TCGs	wagtail.edit	2022-12-06 16:01:22.577096-05	t	f	52	10	132	1	756f5c9f25fa4635b821bb55ef874fbc	{}
258	Magic Singles	wagtail.rename	2022-12-06 16:01:22.641153-05	f	f	52	10	132	1	756f5c9f25fa4635b821bb55ef874fbc	{"title": {"old": "TCGs", "new": "Magic Singles"}}
259	Magic Singles	wagtail.publish	2022-12-06 16:01:22.650942-05	t	f	52	10	132	1	756f5c9f25fa4635b821bb55ef874fbc	{"title": {"old": "TCGs", "new": "Magic Singles"}}
260	Magic Singles	wagtail.edit	2022-12-06 16:01:42.109662-05	t	f	52	10	133	1	28e2cc9ad9e148d693e0159f1c2bbd45	{}
261	TCGS	wagtail.rename	2022-12-06 16:01:42.188529-05	f	f	52	10	133	1	28e2cc9ad9e148d693e0159f1c2bbd45	{"title": {"old": "Magic Singles", "new": "TCGS"}}
262	TCGS	wagtail.publish	2022-12-06 16:01:42.196322-05	t	f	52	10	133	1	28e2cc9ad9e148d693e0159f1c2bbd45	{"title": {"old": "Magic Singles", "new": "TCGS"}}
263	TCGS	wagtail.edit	2022-12-06 16:03:38.112064-05	t	f	52	10	134	1	5fd36239a82b482b91b4826bf4e6eef2	{}
264	TCGS	wagtail.publish	2022-12-06 16:03:38.270744-05	t	f	52	10	134	1	5fd36239a82b482b91b4826bf4e6eef2	{}
265	TCGS	wagtail.edit	2022-12-06 16:06:36.457018-05	t	f	52	10	135	1	87cab6f3128e4960ad2c691e9dac9702	{}
266	TCGS	wagtail.publish	2022-12-06 16:06:36.537632-05	t	f	52	10	135	1	87cab6f3128e4960ad2c691e9dac9702	{}
267	Landing Page	wagtail.edit	2022-12-06 23:00:46.86778-05	t	f	48	7	136	1	52ac7a8007df4cd2b2d71abe82cde24e	{}
268	Landing Page	wagtail.publish	2022-12-06 23:00:46.999649-05	t	f	48	7	136	1	52ac7a8007df4cd2b2d71abe82cde24e	{}
269	Landing Page	wagtail.edit	2022-12-06 23:03:59.827992-05	t	f	48	7	137	1	54236b83f70344a789c91f5f44af8746	{}
270	Landing Page	wagtail.publish	2022-12-06 23:03:59.894573-05	t	f	48	7	137	1	54236b83f70344a789c91f5f44af8746	{}
271	Landing Page	wagtail.edit	2022-12-06 23:05:06.332654-05	t	f	48	7	138	1	d9bc2a306ce2459fa85c177aca0141cd	{}
272	Landing Page	wagtail.publish	2022-12-06 23:05:06.442504-05	t	f	48	7	138	1	d9bc2a306ce2459fa85c177aca0141cd	{}
273	Landing Page	wagtail.edit	2022-12-06 23:13:43.597433-05	t	f	48	7	139	1	4f6b2131183c4e58b5a559a6a3478b8c	{}
274	Landing Page	wagtail.publish	2022-12-06 23:13:43.690183-05	t	f	48	7	139	1	4f6b2131183c4e58b5a559a6a3478b8c	{}
275	Landing Page	wagtail.edit	2022-12-06 23:17:18.079181-05	t	f	48	7	140	1	a158e1e92c9449d786b864c9e799e2c6	{}
276	Landing Page	wagtail.publish	2022-12-06 23:17:18.151624-05	f	f	48	7	140	1	a158e1e92c9449d786b864c9e799e2c6	{}
277	Landing Page	wagtail.edit	2022-12-06 23:23:10.381675-05	t	f	48	7	141	1	97b06d19ddd24955a24ff948f42c4d9f	{}
278	Landing Page	wagtail.publish	2022-12-06 23:23:10.526077-05	t	f	48	7	141	1	97b06d19ddd24955a24ff948f42c4d9f	{}
279	Black Moon Games	wagtail.edit	2022-12-07 15:22:50.564814-05	t	f	46	4	142	1	430c0a0756ef4c49883bfbfb3b133df2	{}
280	Black Moon Games	wagtail.publish	2022-12-07 15:22:50.627286-05	t	f	46	4	142	1	430c0a0756ef4c49883bfbfb3b133df2	{}
281	Title	wagtail.create	2022-12-09 16:16:40.836053-05	t	f	53	11	\N	1	b42aed6b82f94e3d8ee390bd747a8a63	{}
282	Title	wagtail.publish	2022-12-09 16:16:41.029447-05	t	f	53	11	143	1	b42aed6b82f94e3d8ee390bd747a8a63	{}
283	Title	wagtail.edit	2022-12-09 16:22:55.501408-05	t	f	53	11	144	1	dc697e23cb744bc884669b0cc6b4e41c	{}
284	Title	wagtail.publish	2022-12-09 16:22:55.579776-05	f	f	53	11	144	1	dc697e23cb744bc884669b0cc6b4e41c	{}
285	Cool event	wagtail.create	2022-12-09 16:50:50.512852-05	t	f	53	12	\N	1	05ca7dfe020840a8aac9164fcb4008d8	{}
286	Cool event	wagtail.publish	2022-12-09 16:50:50.654778-05	t	f	53	12	145	1	05ca7dfe020840a8aac9164fcb4008d8	{}
287	Cool event	wagtail.edit	2022-12-09 16:52:16.875062-05	t	f	53	12	146	1	a05dd6eb186147c3aa32222c28555748	{}
288	Cool event	wagtail.publish	2022-12-09 16:52:16.96027-05	f	f	53	12	146	1	a05dd6eb186147c3aa32222c28555748	{}
289	Test	wagtail.create	2022-12-09 16:52:57.117682-05	t	f	53	13	\N	1	7653f71743844df8958fa4081e842d26	{}
290	Test	wagtail.publish	2022-12-09 16:52:57.250339-05	t	f	53	13	147	1	7653f71743844df8958fa4081e842d26	{}
291	An event	wagtail.create	2022-12-09 16:56:08.781644-05	t	f	53	14	\N	1	4673e09300b849f7828b78c0fde0c32b	{}
292	An event	wagtail.publish	2022-12-09 16:56:10.113139-05	t	f	53	14	148	1	4673e09300b849f7828b78c0fde0c32b	{}
293	Title	wagtail.delete	2022-12-09 16:56:58.613552-05	f	t	53	11	\N	1	13c32ae7e3e141229145b8015e3d387d	{}
294	Cool event	wagtail.delete	2022-12-09 16:56:58.69642-05	f	t	53	12	\N	1	13c32ae7e3e141229145b8015e3d387d	{}
295	Test	wagtail.delete	2022-12-09 16:56:58.790864-05	f	t	53	13	\N	1	13c32ae7e3e141229145b8015e3d387d	{}
296	An event	wagtail.delete	2022-12-09 16:56:58.851386-05	f	t	53	14	\N	1	13c32ae7e3e141229145b8015e3d387d	{}
297	Friday Night Magic	wagtail.create	2022-12-09 16:57:38.786402-05	t	f	53	15	\N	1	05608377898f45238c8ab94b189caa97	{}
298	Friday Night Magic	wagtail.publish	2022-12-09 16:57:40.034924-05	t	f	53	15	149	1	05608377898f45238c8ab94b189caa97	{}
299	FandB	wagtail.create	2022-12-09 17:00:46.29368-05	t	f	53	16	\N	1	40507b0be3b44c92921ed20540ebc445	{}
300	FandB	wagtail.publish	2022-12-09 17:00:47.535569-05	t	f	53	16	150	1	40507b0be3b44c92921ed20540ebc445	{}
301	Friday Night Magic	wagtail.delete	2022-12-09 17:04:47.779933-05	f	t	53	15	\N	1	c1696d23ef354694afbb63d07eb6c472	{}
302	FandB	wagtail.delete	2022-12-09 17:04:47.852467-05	f	t	53	16	\N	1	c1696d23ef354694afbb63d07eb6c472	{}
303	FNM	wagtail.create	2022-12-09 17:14:56.536736-05	t	f	53	17	\N	1	31a07eb4888847d69ae308d8b4edf0d1	{}
304	FNM	wagtail.publish	2022-12-09 17:14:57.730635-05	t	f	53	17	151	1	31a07eb4888847d69ae308d8b4edf0d1	{}
305	FNM	wagtail.delete	2022-12-09 17:20:30.420952-05	f	t	53	17	\N	1	fbde481b23b74232bd986b122d382219	{}
306	FNM	wagtail.create	2022-12-09 17:21:05.890924-05	t	f	53	18	\N	1	dd8781bb9a454d689641288edbb8d8eb	{}
307	FNM	wagtail.publish	2022-12-09 17:21:07.001671-05	t	f	53	18	152	1	dd8781bb9a454d689641288edbb8d8eb	{}
308	FAB	wagtail.create	2022-12-09 17:28:02.814819-05	t	f	53	19	\N	1	30a5d68cd5ea41eb927b095cf0b37d94	{}
309	FAB	wagtail.publish	2022-12-09 17:28:04.279436-05	t	f	53	19	153	1	30a5d68cd5ea41eb927b095cf0b37d94	{}
310	DND	wagtail.create	2022-12-09 17:29:04.534607-05	t	f	53	20	\N	1	8260e489fec84cea952f1b2468e647f6	{}
311	DND	wagtail.publish	2022-12-09 17:29:04.667026-05	t	f	53	20	154	1	8260e489fec84cea952f1b2468e647f6	{}
312	DND	wagtail.delete	2022-12-09 17:30:05.910952-05	f	t	53	20	\N	1	de9ae0d3e1b2418080bc4f6ceb764d77	{}
313	DND	wagtail.create	2022-12-09 17:30:34.136645-05	t	f	53	21	\N	1	70f3e243a4ca45008f6204cdb9a5a645	{}
314	DND	wagtail.publish	2022-12-09 17:30:34.261659-05	t	f	53	21	155	1	70f3e243a4ca45008f6204cdb9a5a645	{}
315	DND	wagtail.delete	2022-12-09 17:31:00.297987-05	f	t	53	21	\N	1	38c5ed9f31ad4cc2910f3b38b10c2641	{}
316	DND	wagtail.create	2022-12-09 17:31:51.613627-05	t	f	53	22	\N	1	01b4083d2a0345db98712a5ac8368771	{}
317	DND	wagtail.publish	2022-12-09 17:31:52.79213-05	t	f	53	22	156	1	01b4083d2a0345db98712a5ac8368771	{}
318	DND	wagtail.delete	2022-12-09 17:36:56.459782-05	f	t	53	22	\N	1	cb15da50326b477d853ea615239032cc	{}
319	FNM	wagtail.delete	2022-12-09 17:37:07.483502-05	f	t	53	18	\N	1	5c98966a6b974e3fa25d1e7799dcb435	{}
320	FAB	wagtail.delete	2022-12-09 17:37:07.555005-05	f	t	53	19	\N	1	5c98966a6b974e3fa25d1e7799dcb435	{}
321	FNM	wagtail.create	2022-12-09 17:37:36.359329-05	t	f	53	23	\N	1	510131735c18414dab4ba4d1f0d50486	{}
322	FNM	wagtail.publish	2022-12-09 17:37:37.633034-05	t	f	53	23	157	1	510131735c18414dab4ba4d1f0d50486	{}
323	FNM	wagtail.delete	2022-12-09 17:43:15.226952-05	f	t	53	23	\N	1	cff641ecc1644082a6d039fb6436c9bf	{}
324	FNM	wagtail.create	2022-12-09 17:43:36.922356-05	t	f	53	24	\N	1	f4b16efe91414913a3145f6e8fb490bb	{}
325	FNM	wagtail.publish	2022-12-09 17:43:37.635563-05	t	f	53	24	158	1	f4b16efe91414913a3145f6e8fb490bb	{}
326	FandB	wagtail.create	2022-12-09 17:46:10.526998-05	t	f	53	25	\N	1	1bc3863cdaaa46f9a132cc063dd02e85	{}
327	FandB	wagtail.publish	2022-12-09 17:46:11.251128-05	t	f	53	25	159	1	1bc3863cdaaa46f9a132cc063dd02e85	{}
328	Open Play Event	wagtail.create	2022-12-09 17:48:22.436779-05	t	f	53	26	\N	1	9eef949a6fc94db38c19cdab870dfef3	{}
329	Open Play Event	wagtail.publish	2022-12-09 17:48:23.556888-05	t	f	53	26	160	1	9eef949a6fc94db38c19cdab870dfef3	{}
330	FNM Event	wagtail.create	2022-12-09 17:54:31.90986-05	t	f	53	27	\N	1	0197a5bade034cf88ee17f3e03707ae1	{}
331	FNM Event	wagtail.publish	2022-12-09 17:54:32.615379-05	t	f	53	27	161	1	0197a5bade034cf88ee17f3e03707ae1	{}
332	FNM	wagtail.delete	2022-12-09 17:57:51.670798-05	f	t	53	24	\N	1	1e7c25e4e0b64f84af3cea47429e5763	{}
333	FandB	wagtail.delete	2022-12-09 17:57:51.817922-05	f	t	53	25	\N	1	1e7c25e4e0b64f84af3cea47429e5763	{}
334	Open Play Event	wagtail.delete	2022-12-09 17:57:51.889036-05	f	t	53	26	\N	1	1e7c25e4e0b64f84af3cea47429e5763	{}
335	FNM Event	wagtail.delete	2022-12-09 17:57:51.97448-05	f	t	53	27	\N	1	1e7c25e4e0b64f84af3cea47429e5763	{}
336	FnM Event	wagtail.create	2022-12-09 17:58:24.213984-05	t	f	53	28	\N	1	21a76d92efaf4879ae7f0658895602d4	{}
337	FnM Event	wagtail.publish	2022-12-09 17:58:25.370457-05	t	f	53	28	162	1	21a76d92efaf4879ae7f0658895602d4	{}
338	F and B Event	wagtail.create	2022-12-09 18:09:48.395266-05	t	f	53	29	\N	1	51dea043c02f453dbe4a1d43d8f5f9c1	{}
339	F and B Event	wagtail.publish	2022-12-09 18:09:49.005532-05	t	f	53	29	163	1	51dea043c02f453dbe4a1d43d8f5f9c1	{}
340	F and B Event	wagtail.edit	2022-12-09 18:13:47.098513-05	t	f	53	29	164	1	1a3b2d5beb244204abf0d5d18737ac53	{}
341	F and B Event	wagtail.publish	2022-12-09 18:13:47.902571-05	f	f	53	29	164	1	1a3b2d5beb244204abf0d5d18737ac53	{}
342	Single event	wagtail.create	2022-12-09 18:19:57.633654-05	t	f	53	30	\N	1	a462b0267a42453b8b07098fd50115be	{}
343	Single event	wagtail.publish	2022-12-09 18:19:58.255742-05	t	f	53	30	165	1	a462b0267a42453b8b07098fd50115be	{}
344	Repeating Event	wagtail.create	2022-12-09 18:20:35.38051-05	t	f	53	31	\N	1	1036ebc0ec984ef59600cb6dcef24f15	{}
345	Repeating Event	wagtail.publish	2022-12-09 18:20:36.059166-05	t	f	53	31	166	1	1036ebc0ec984ef59600cb6dcef24f15	{}
346	F and B Event	wagtail.delete	2022-12-09 18:21:15.448743-05	f	t	53	29	\N	1	821b8005cca74321933e07645af1adee	{}
347	Single event	wagtail.delete	2022-12-09 18:21:15.545382-05	f	t	53	30	\N	1	821b8005cca74321933e07645af1adee	{}
348	Repeating Event	wagtail.delete	2022-12-09 18:21:15.622315-05	f	t	53	31	\N	1	821b8005cca74321933e07645af1adee	{}
349	FnM Event	wagtail.delete	2022-12-09 18:24:19.639315-05	f	t	53	28	\N	1	03a2f942dd134a7382c3629ccf294b27	{}
350	Friday Night Magic Event	wagtail.create	2022-12-09 18:25:05.25216-05	t	f	53	32	\N	1	5ffa89cb74af4604a14fc61e9c5c5a94	{}
351	Friday Night Magic Event	wagtail.publish	2022-12-09 18:25:05.945073-05	t	f	53	32	167	1	5ffa89cb74af4604a14fc61e9c5c5a94	{}
352	Pokemon League	wagtail.create	2022-12-09 18:39:20.602498-05	t	f	53	33	\N	1	65ca10e3d52947c6968dd45b6f55b0b3	{}
353	Pokemon League	wagtail.publish	2022-12-09 18:39:21.357897-05	t	f	53	33	168	1	65ca10e3d52947c6968dd45b6f55b0b3	{}
354	Friday Night Magic Event	wagtail.edit	2022-12-09 19:36:05.58047-05	t	f	53	32	169	1	b343a5c620c84d6d871e8ed8998facb6	{}
355	Friday Night Magic Event	wagtail.publish	2022-12-09 19:36:06.578597-05	t	f	53	32	169	1	b343a5c620c84d6d871e8ed8998facb6	{}
356	Friday Night Magic Event	wagtail.unpublish	2022-12-09 19:36:29.053714-05	f	f	53	32	\N	1	8282b0f7fc9e4113852d60a87c3c04b8	{}
357	Friday Night Magic Event	wagtail.delete	2022-12-09 19:37:37.299491-05	f	t	53	32	\N	1	07f74d3b6ae44794b1beb0e5b865e398	{}
358	Pokemon League	wagtail.delete	2022-12-09 19:37:37.386192-05	f	t	53	33	\N	1	07f74d3b6ae44794b1beb0e5b865e398	{}
359	Friday Night Magic	wagtail.create	2022-12-09 19:42:00.2425-05	t	f	53	34	\N	1	808b4385edb0434f998e8c2b062014ee	{}
360	Friday Night Magic	wagtail.publish	2022-12-09 19:42:00.917654-05	t	f	53	34	170	1	808b4385edb0434f998e8c2b062014ee	{}
361	Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)	wagtail.create	2022-12-09 19:56:50.210709-05	t	f	53	35	\N	1	9df139c20f634289a4f95f5d263d0b30	{}
362	Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)	wagtail.publish	2022-12-09 19:56:54.359261-05	t	f	53	35	171	1	9df139c20f634289a4f95f5d263d0b30	{}
363	Landing Page	wagtail.edit	2022-12-15 17:40:53.007571-05	t	f	48	7	172	1	95008a62f4b2447b9bfb83c8cd3f7d1f	{}
364	Landing Page	wagtail.publish	2022-12-15 17:40:53.071368-05	t	f	48	7	172	1	95008a62f4b2447b9bfb83c8cd3f7d1f	{}
365	Landing Page	wagtail.edit	2022-12-15 17:44:21.130067-05	t	f	48	7	173	1	5663e996509c4065b9466d917d76309a	{}
366	Landing Page	wagtail.publish	2022-12-15 17:44:21.223724-05	t	f	48	7	173	1	5663e996509c4065b9466d917d76309a	{}
367	Landing Page	wagtail.edit	2022-12-15 17:45:38.031242-05	t	f	48	7	174	1	0c681710b029488f84dcf02931b093ea	{}
368	Landing Page	wagtail.publish	2022-12-15 17:45:38.110844-05	t	f	48	7	174	1	0c681710b029488f84dcf02931b093ea	{}
369	Landing Page	wagtail.edit	2022-12-15 17:47:14.353911-05	t	f	48	7	175	1	818d806814b74d3d8cdb2028c850b560	{}
370	Landing Page	wagtail.publish	2022-12-15 17:47:14.488326-05	t	f	48	7	175	1	818d806814b74d3d8cdb2028c850b560	{}
371	Landing Page	wagtail.edit	2022-12-15 17:55:21.463561-05	t	f	48	7	176	1	e63f1cd813ac4bedaa23229873539411	{}
372	Landing Page	wagtail.publish	2022-12-15 17:55:21.529473-05	t	f	48	7	176	1	e63f1cd813ac4bedaa23229873539411	{}
373	About	wagtail.create	2022-12-15 18:26:52.676117-05	t	f	54	36	\N	1	002a02d8438946e084a479219970c6c0	{}
374	About	wagtail.publish	2022-12-15 18:26:52.813277-05	t	f	54	36	177	1	002a02d8438946e084a479219970c6c0	{}
375	About	wagtail.edit	2022-12-15 18:29:51.121572-05	t	f	54	36	178	1	d72ee168db894d97bf4fb20be293d52f	{}
376	About	wagtail.publish	2022-12-15 18:29:51.181404-05	f	f	54	36	178	1	d72ee168db894d97bf4fb20be293d52f	{}
377	About	wagtail.edit	2022-12-15 18:34:02.846495-05	t	f	54	36	179	1	421b05d9049842d487da17ce0b1f358f	{}
378	About	wagtail.publish	2022-12-15 18:34:02.919273-05	t	f	54	36	179	1	421b05d9049842d487da17ce0b1f358f	{}
379	About	wagtail.edit	2022-12-15 18:34:47.420959-05	t	f	54	36	180	1	05406861e1ef4707b70dfc86247701a9	{}
380	About	wagtail.publish	2022-12-15 18:34:47.49936-05	t	f	54	36	180	1	05406861e1ef4707b70dfc86247701a9	{}
381	About	wagtail.edit	2022-12-15 18:36:31.252437-05	t	f	54	36	181	1	9ec458ea871543c68e6c6c19c75c0bd3	{}
382	About	wagtail.publish	2022-12-15 18:36:31.348686-05	t	f	54	36	181	1	9ec458ea871543c68e6c6c19c75c0bd3	{}
383	About	wagtail.edit	2022-12-15 18:41:21.238998-05	t	f	54	36	182	1	0d8786cedc0245459ae6cdb529185621	{}
384	About	wagtail.publish	2022-12-15 18:41:21.381324-05	t	f	54	36	182	1	0d8786cedc0245459ae6cdb529185621	{}
385	About	wagtail.edit	2022-12-15 18:42:11.332619-05	t	f	54	36	183	1	d09764ad42004acf882b811a5c620b97	{}
386	About	wagtail.publish	2022-12-15 18:42:11.407774-05	t	f	54	36	183	1	d09764ad42004acf882b811a5c620b97	{}
387	About	wagtail.edit	2022-12-15 18:43:48.036398-05	t	f	54	36	184	1	24c16d2294bd474db35d9e6d364100a1	{}
388	About	wagtail.publish	2022-12-15 18:43:48.121049-05	t	f	54	36	184	1	24c16d2294bd474db35d9e6d364100a1	{}
389	About	wagtail.edit	2022-12-15 18:46:35.224377-05	t	f	54	36	185	1	148cf585e29747c2ac3c662b4df88b31	{}
390	About	wagtail.publish	2022-12-15 18:46:35.325241-05	t	f	54	36	185	1	148cf585e29747c2ac3c662b4df88b31	{}
391	About	wagtail.edit	2022-12-15 18:49:25.174137-05	t	f	54	36	186	1	871b7a9425ec414abcfc7fedc137abc0	{}
392	About	wagtail.publish	2022-12-15 18:49:25.279701-05	t	f	54	36	186	1	871b7a9425ec414abcfc7fedc137abc0	{}
393	About	wagtail.edit	2022-12-15 18:50:06.560154-05	t	f	54	36	187	1	bfe56b42591b49c3bf991b85f2c28b1a	{}
394	About	wagtail.publish	2022-12-15 18:50:06.653708-05	t	f	54	36	187	1	bfe56b42591b49c3bf991b85f2c28b1a	{}
395	About	wagtail.edit	2022-12-15 18:52:38.612598-05	t	f	54	36	188	1	f292b67739e342f2b5aa2fdd669d4583	{}
396	About	wagtail.publish	2022-12-15 18:52:38.676302-05	t	f	54	36	188	1	f292b67739e342f2b5aa2fdd669d4583	{}
397	About	wagtail.edit	2022-12-15 18:53:21.982394-05	t	f	54	36	189	1	cec0f848343246b38463e1c8fa2450b8	{}
398	About	wagtail.publish	2022-12-15 18:53:22.087121-05	t	f	54	36	189	1	cec0f848343246b38463e1c8fa2450b8	{}
399	About	wagtail.edit	2022-12-15 18:56:23.268736-05	t	f	54	36	190	1	819e2ee583fa43a6866cf9b39b1e909a	{}
400	About	wagtail.publish	2022-12-15 18:56:23.412914-05	t	f	54	36	190	1	819e2ee583fa43a6866cf9b39b1e909a	{}
\.


--
-- Data for Name: wagtailcore_pagesubscription; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_pagesubscription (id, comment_notifications, page_id, user_id) FROM stdin;
2	t	4	1
4	t	6	1
5	t	7	1
6	t	8	1
7	t	9	1
8	t	10	1
32	t	34	1
33	t	35	1
34	t	36	1
\.


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_pageviewrestriction (id, password, page_id, restriction_type) FROM stdin;
\.


--
-- Data for Name: wagtailcore_pageviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_pageviewrestriction_groups (id, pageviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_referenceindex; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_referenceindex (id, object_id, to_object_id, model_path, content_path, content_path_hash, base_content_type_id, content_type_id, to_content_type_id) FROM stdin;
28	2	4	page	page	7b29538095fa511792c023c46a06e9b7	34	34	1
29	2	1	user	user	b9395e53524359fd88fade4156683cf8	34	34	43
30	3	4	root_page	root_page	2715dadcb575536493c07859ed193ef2	20	20	1
53	21	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
55	22	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
59	23	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
60	24	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
67	4	1	user	user	b9395e53524359fd88fade4156683cf8	34	34	43
68	4	6	page	page	7b29538095fa511792c023c46a06e9b7	34	34	1
70	5	7	page	page	7b29538095fa511792c023c46a06e9b7	34	34	1
71	5	1	user	user	b9395e53524359fd88fade4156683cf8	34	34	43
72	25	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
75	6	1	user	user	b9395e53524359fd88fade4156683cf8	34	34	43
76	6	8	page	page	7b29538095fa511792c023c46a06e9b7	34	34	1
78	6	25	logo	logo	ba402699341b59f7bfe34d8ea0405a39	1	47	6
79	26	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
80	27	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
85	7	1	user	user	b9395e53524359fd88fade4156683cf8	34	34	43
86	7	9	page	page	7b29538095fa511792c023c46a06e9b7	34	34	1
90	9	26	new_products.product.image	new_products.a1be3666-208c-4195-8424-2f0ebbf42404.image	5ccb1fa85a805a37a941c0d58d6e24e9	1	50	6
91	9	21	new_products.product.image	new_products.3cd06190-114d-4fe8-95f6-0949488c09c0.image	052c908f3fd2502aa3134e3af5478597	1	50	6
92	9	23	new_products.product.image	new_products.ca96148c-b92f-41fa-bebb-acdcc87b5499.image	0296ed4247965a87be335e229c6e1837	1	50	6
94	9	27	new_products.product.image	new_products.b3f7e1eb-9f9c-48ae-ae33-1488d38729e0.image	4fa3e0c16c435045b9184f204bb92309	1	50	6
110	28	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
112	8	1	user	user	b9395e53524359fd88fade4156683cf8	34	34	43
113	8	10	page	page	7b29538095fa511792c023c46a06e9b7	34	34	1
119	29	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
155	30	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
156	31	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
157	10	31	logo_3	logo_3	d456bca0cfcf5849b268706833c6bcf7	1	52	6
158	10	30	logo_2	logo_2	eb0a11970e2754d69e1a3e62f309eecb	1	52	6
159	10	29	logo_1	logo_1	8c5bcd11b3a55a83a371d6af164076b3	1	52	6
183	32	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
184	7	32	hero_image	hero_image	2960929c7feb5d2b8541ed36105c53fd	1	48	6
237	32	34	page	page	7b29538095fa511792c023c46a06e9b7	34	34	1
238	32	1	user	user	b9395e53524359fd88fade4156683cf8	34	34	43
240	33	35	page	page	7b29538095fa511792c023c46a06e9b7	34	34	1
241	33	1	user	user	b9395e53524359fd88fade4156683cf8	34	34	43
242	83	48	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
243	84	48	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
244	85	48	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
245	86	48	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
246	87	48	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
247	88	48	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
248	89	48	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
249	90	48	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
250	91	48	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
251	92	48	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
252	93	48	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
253	34	1	user	user	b9395e53524359fd88fade4156683cf8	34	34	43
254	34	36	page	page	7b29538095fa511792c023c46a06e9b7	34	34	1
255	94	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
256	95	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
257	96	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
258	97	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
259	98	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
260	99	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
261	100	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
262	33	1	collection	collection	b40b1263e92957f2a7f89dbce56b887b	6	6	21
263	36	33	about_image	about_image	f77f17e8c3b5565c8e9e6c06ee4aa6c1	1	54	6
264	101	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
265	102	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
266	103	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
267	104	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
268	105	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
269	106	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
270	107	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
271	108	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
272	109	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
273	110	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
274	111	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
275	112	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
276	113	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
277	114	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
278	115	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
279	116	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
280	117	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
281	118	54	content_type	content_type	47079e64c4195937a4193f3e7d89a6bb	51	51	44
\.


--
-- Data for Name: wagtailcore_revision; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_revision (id, submitted_for_moderation, created_at, approved_go_live_at, user_id, content, object_id, content_type_id, base_content_type_id, object_str) FROM stdin;
1	f	2022-11-27 15:27:39.992478-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": null, "live": true, "has_unpublished_changes": false, "first_published_at": null, "last_published_at": null, "live_revision": null, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 2, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": null, "alias_of": null, "hero_text": "<p data-block-key=\\"up2s4\\">Shop at Black Moon!</p>", "sub_text": "<p data-block-key=\\"f9554\\">Buy our stuff!</p>", "wagtail_admin_comments": []}	3	2	1	Home
2	f	2022-11-27 15:27:43.490174-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 1, "live": true, "has_unpublished_changes": true, "first_published_at": null, "last_published_at": null, "live_revision": null, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 2, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-27T15:27:39.992Z", "alias_of": null, "hero_text": "<p data-block-key=\\"up2s4\\">Shop at Black Moon!</p>", "sub_text": "<p data-block-key=\\"f9554\\">Buy our stuff!</p>", "wagtail_admin_comments": []}	3	2	1	Home
3	f	2022-11-27 15:32:22.249556-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 2, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-27T15:27:43.553Z", "live_revision": 2, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 2, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-27T15:27:43.490Z", "alias_of": null, "hero_text": "<p data-block-key=\\"up2s4\\">Shop at Black Moon!</p>", "sub_text": "<p data-block-key=\\"f9554\\">Buy our stuff!</p>", "wagtail_admin_comments": []}	3	2	1	Home
4	f	2022-11-27 15:32:25.185782-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 3, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-27T15:27:43.553Z", "live_revision": 2, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 2, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-27T15:32:22.249Z", "alias_of": null, "hero_text": "<p data-block-key=\\"up2s4\\">Shop at Black Moon!</p>", "sub_text": "<p data-block-key=\\"f9554\\">Buy our stuff!</p>", "wagtail_admin_comments": []}	3	2	1	Home
5	f	2022-11-27 15:34:30.162165-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 4, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-27T15:32:25.280Z", "live_revision": 4, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 2, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-27T15:32:25.185Z", "alias_of": null, "hero_text": "<p data-block-key=\\"up2s4\\">SHOP NOW</p>", "sub_text": "<p data-block-key=\\"f9554\\">BUY THINGS</p>", "wagtail_admin_comments": []}	3	2	1	Home
6	f	2022-11-27 15:36:05.623431-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 5, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-27T15:34:30.239Z", "live_revision": 5, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 2, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-27T15:34:30.162Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "wagtail_admin_comments": []}	3	2	1	Home
7	f	2022-11-27 15:52:58.376957-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 6, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-27T15:36:05.722Z", "live_revision": 6, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Home", "slug": "home", "content_type": 2, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-27T15:36:05.623Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "wagtail_admin_comments": []}	3	2	1	Landing Page
8	f	2022-11-27 15:53:48.046287-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 7, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-27T15:52:58.417Z", "live_revision": 7, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-27T15:52:58.376Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "wagtail_admin_comments": []}	3	2	1	Landing Page
9	f	2022-11-28 13:58:57.47932-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 8, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-27T15:53:48.092Z", "live_revision": 8, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-27T15:53:48.046Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
10	f	2022-11-28 14:02:46.761903-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 9, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T13:58:57.576Z", "live_revision": 9, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T13:58:57.479Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
11	f	2022-11-28 14:04:33.829311-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 10, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:02:46.862Z", "live_revision": 10, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:02:46.761Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
12	f	2022-11-28 14:04:59.237217-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 11, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:04:33.904Z", "live_revision": 11, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:04:33.829Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 2, "wagtail_admin_comments": []}	3	2	1	Landing Page
13	f	2022-11-28 14:05:02.18583-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 12, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:04:33.904Z", "live_revision": 11, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:04:59.237Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 2, "wagtail_admin_comments": []}	3	2	1	Landing Page
14	f	2022-11-28 14:12:04.230826-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 13, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:05:02.271Z", "live_revision": 13, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:05:02.185Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
15	f	2022-11-28 14:12:07.630175-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 14, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:05:02.271Z", "live_revision": 13, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:12:04.230Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
16	f	2022-11-28 14:13:14.564499-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 15, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:12:07.713Z", "live_revision": 15, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:12:07.630Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 2, "wagtail_admin_comments": []}	3	2	1	Landing Page
17	f	2022-11-28 14:13:16.950443-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 16, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:12:07.713Z", "live_revision": 15, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:13:14.564Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 2, "wagtail_admin_comments": []}	3	2	1	Landing Page
18	f	2022-11-28 14:16:35.207182-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 17, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:13:17.032Z", "live_revision": 17, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:13:16.950Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
19	f	2022-11-28 14:16:37.883429-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 18, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:13:17.032Z", "live_revision": 17, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:16:35.207Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
20	f	2022-11-28 14:23:55.341722-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 19, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:16:37.961Z", "live_revision": 19, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:16:37.883Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 2, "wagtail_admin_comments": []}	3	2	1	Landing Page
21	f	2022-11-28 14:23:58.165964-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 20, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:16:37.961Z", "live_revision": 19, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:23:55.341Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 2, "wagtail_admin_comments": []}	3	2	1	Landing Page
22	f	2022-11-28 14:24:54.658787-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 21, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:23:58.231Z", "live_revision": 21, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:23:58.165Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
23	f	2022-11-28 14:24:57.000238-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 22, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:23:58.231Z", "live_revision": 21, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:24:54.658Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
24	f	2022-11-28 14:26:04.946781-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 23, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:24:57.051Z", "live_revision": 23, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:24:57.000Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 2, "wagtail_admin_comments": []}	3	2	1	Landing Page
25	f	2022-11-28 14:26:07.055035-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 24, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:24:57.051Z", "live_revision": 23, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:26:04.946Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 2, "wagtail_admin_comments": []}	3	2	1	Landing Page
26	f	2022-11-28 14:27:17.465658-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 25, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:26:07.124Z", "live_revision": 25, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:26:07.055Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
27	f	2022-11-28 14:27:19.807462-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 26, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:26:07.124Z", "live_revision": 25, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:27:17.465Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
28	f	2022-11-28 14:29:21.859748-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 27, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:27:19.872Z", "live_revision": 27, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:27:19.807Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 2, "wagtail_admin_comments": []}	3	2	1	Landing Page
29	f	2022-11-28 14:31:24.145998-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 28, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:29:21.938Z", "live_revision": 28, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:29:21.859Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 1, "wagtail_admin_comments": []}	3	2	1	Landing Page
30	f	2022-11-28 14:43:32.001046-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 29, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:31:24.212Z", "live_revision": 29, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:31:24.145Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 2, "wagtail_admin_comments": []}	3	2	1	Landing Page
31	f	2022-11-28 14:46:20.78162-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 30, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:43:32.065Z", "live_revision": 30, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:43:32.001Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 3, "wagtail_admin_comments": []}	3	2	1	Landing Page
32	f	2022-11-28 15:16:02.774339-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 31, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T14:46:20.844Z", "live_revision": 31, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T14:46:20.781Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 4, "wagtail_admin_comments": []}	3	2	1	Landing Page
33	f	2022-11-28 15:58:24.019531-05	\N	1	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "cfe2178f-2a40-4e1b-bf79-e899d355df0d", "locale": 1, "latest_revision": 32, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-27T15:27:43.553Z", "last_published_at": "2022-11-28T15:16:02.880Z", "live_revision": 32, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 2, "url_path": "/landing-page/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T15:16:02.774Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"up2s4\\">SHOP NOW</h2>", "sub_text": "<h3 data-block-key=\\"f9554\\">BUY THINGS</h3>", "image": 5, "wagtail_admin_comments": []}	3	2	1	Landing Page
34	f	2022-11-28 22:31:00.468373-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": null, "live": true, "has_unpublished_changes": false, "first_published_at": null, "last_published_at": null, "live_revision": null, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Black Moon Games", "draft_title": "Black Moon Games", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": null, "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 8, "wagtail_admin_comments": []}	4	46	1	Black Moon Games
35	f	2022-11-28 22:31:35.727566-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 34, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-28T22:31:00.549Z", "live_revision": 34, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Black Moon Games", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T22:31:00.468Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 8, "wagtail_admin_comments": []}	4	46	1	Home
36	f	2022-11-28 22:34:09.499476-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 35, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-28T22:31:35.794Z", "live_revision": 35, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T22:31:35.727Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": null, "wagtail_admin_comments": []}	4	46	1	Home
37	f	2022-11-28 22:34:12.491999-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 36, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-28T22:31:35.794Z", "live_revision": 35, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T22:34:09.499Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": null, "wagtail_admin_comments": []}	4	46	1	Home
38	f	2022-11-28 22:34:30.030545-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 37, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-28T22:34:12.554Z", "live_revision": 37, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T22:34:12.491Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 8, "wagtail_admin_comments": []}	4	46	1	Home
39	f	2022-11-28 22:36:09.632183-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 38, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-28T22:34:30.126Z", "live_revision": 38, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T22:34:30.030Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 9, "wagtail_admin_comments": []}	4	46	1	Home
40	f	2022-11-28 22:37:30.284936-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 39, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-28T22:36:09.685Z", "live_revision": 39, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T22:36:09.632Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 10, "wagtail_admin_comments": []}	4	46	1	Home
41	f	2022-11-28 23:32:07.67797-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 40, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-28T22:37:30.346Z", "live_revision": 40, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T22:37:30.284Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "img": 13, "wagtail_admin_comments": []}	4	46	1	Home
42	f	2022-11-28 23:32:10.183199-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 41, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-28T22:37:30.346Z", "live_revision": 40, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T23:32:07.677Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "img": 13, "wagtail_admin_comments": []}	4	46	1	Home
43	f	2022-11-28 23:36:20.536538-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 42, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-28T23:32:10.251Z", "live_revision": 42, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T23:32:10.183Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "img": 14, "wagtail_admin_comments": []}	4	46	1	Home
44	f	2022-11-28 23:40:03.886188-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 43, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-28T23:36:20.605Z", "live_revision": 43, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T23:36:20.536Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 15, "wagtail_admin_comments": []}	4	46	1	Home
45	f	2022-11-29 00:34:08.945916-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 44, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-28T23:40:03.995Z", "live_revision": 44, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-28T23:40:03.886Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 16, "wagtail_admin_comments": []}	4	46	1	Home
46	f	2022-11-29 00:49:58.156771-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 45, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T00:34:09.056Z", "live_revision": 45, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T00:34:08.945Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 17, "wagtail_admin_comments": []}	4	46	1	Home
47	f	2022-11-29 01:16:52.065307-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 46, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T00:49:58.227Z", "live_revision": 46, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T00:49:58.156Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 18, "wagtail_admin_comments": []}	4	46	1	Home
48	f	2022-11-29 01:43:50.945467-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 47, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T01:16:52.152Z", "live_revision": 47, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T01:16:52.065Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 19, "wagtail_admin_comments": []}	4	46	1	Home
49	f	2022-11-29 01:46:20.760426-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 48, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T01:43:51.012Z", "live_revision": 48, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T01:43:50.945Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 21, "wagtail_admin_comments": []}	4	46	1	Home
50	f	2022-11-29 01:46:22.931852-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 49, "live": true, "has_unpublished_changes": true, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T01:43:51.012Z", "live_revision": 48, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T01:46:20.760Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 21, "wagtail_admin_comments": []}	4	46	1	Home
51	f	2022-11-29 13:21:22.054135-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 50, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T01:46:23.003Z", "live_revision": 50, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T01:46:22.931Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 22, "wagtail_admin_comments": []}	4	46	1	Home
52	f	2022-11-29 13:22:01.810122-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 51, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T13:21:22.121Z", "live_revision": 51, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T13:21:22.054Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": 22, "wagtail_admin_comments": []}	4	46	1	Home
53	f	2022-11-29 13:23:37.894635-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 52, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T13:22:01.894Z", "live_revision": 52, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T13:22:01.810Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "image": null, "wagtail_admin_comments": []}	4	46	1	Home
54	f	2022-11-29 13:36:15.302566-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 53, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T13:23:37.981Z", "live_revision": 53, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T13:23:37.894Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "hero_image": 21, "brand": 22, "wagtail_admin_comments": []}	4	46	1	Home
55	f	2022-11-29 14:28:41.562882-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 54, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T13:36:15.401Z", "live_revision": 54, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T13:36:15.302Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "hero_image": 21, "nav_brand": 22, "banner_text": "<p data-block-key=\\"w6pae\\">We are moving! Find us in West Lebanon!</p>", "banner_image": 24, "wagtail_admin_comments": []}	4	46	1	Home
56	f	2022-11-29 14:29:29.929164-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 55, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T14:28:41.644Z", "live_revision": 55, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T14:28:41.562Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "hero_image": 21, "nav_brand": 22, "banner_text": "<p data-block-key=\\"w6pae\\">We are moving! Find us in West Lebanon!</p>", "banner_image": 24, "wagtail_admin_comments": []}	4	46	1	Home
57	f	2022-11-29 14:31:53.494679-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 56, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T14:29:30.005Z", "live_revision": 56, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T14:29:29.929Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "hero_image": 21, "nav_brand": 22, "banner_text": "<h2 data-block-key=\\"w6pae\\"><b><i>We are moving! Find us in West Lebanon!</i></b></h2>", "banner_image": 24, "wagtail_admin_comments": []}	4	46	1	Home
58	f	2022-11-29 14:33:31.747265-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 57, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T14:31:53.576Z", "live_revision": 57, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T14:31:53.494Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "hero_image": 21, "nav_brand": 22, "banner_text": "<h2 data-block-key=\\"w6pae\\"><b><i>We are moving! Find us in West Lebanon!</i></b></h2>", "banner_image": 24, "wagtail_admin_comments": []}	4	46	1	Home
59	f	2022-11-29 14:34:00.247638-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 58, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T14:33:31.820Z", "live_revision": 58, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Home", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T14:33:31.747Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "hero_image": 21, "nav_brand": 22, "banner_text": "<h2 data-block-key=\\"w6pae\\"><b><i>We are moving! Find us in West Lebanon!</i></b></h2>", "banner_image": 24, "wagtail_admin_comments": []}	4	46	1	Home
61	f	2022-11-29 14:55:31.704065-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 59, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T14:34:00.312Z", "live_revision": 59, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Black Moon Games", "draft_title": "Home", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T14:34:00.247Z", "alias_of": null, "hero_text": "<p data-block-key=\\"y50as\\">BUY OUR STUFF</p>", "sub_text": "<p data-block-key=\\"tkqa7\\">SHOP NOW</p>", "hero_image": 21, "banner_text": "<h2 data-block-key=\\"w6pae\\"><b><i>We are moving! Find us in West Lebanon!</i></b></h2>", "banner_image": 24, "wagtail_admin_comments": []}	4	46	1	Black Moon Games
62	f	2022-11-29 14:55:56.275693-05	\N	1	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "d9c00900-ea27-4e44-8e35-ef8a395f1db2", "locale": 1, "latest_revision": null, "live": true, "has_unpublished_changes": false, "first_published_at": null, "last_published_at": null, "live_revision": null, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Navbar", "draft_title": "Navbar", "slug": "navbar", "content_type": 47, "url_path": "/black-moon-games/navbar/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": null, "alias_of": null, "nav_text": "<p data-block-key=\\"u423o\\">BMG</p>", "nav_btn": null, "nav_img": 22, "wagtail_admin_comments": []}	6	47	1	Navbar
63	f	2022-11-29 15:01:29.026936-05	\N	1	{"pk": 7, "path": "0001000100010001", "depth": 4, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": null, "live": true, "has_unpublished_changes": false, "first_published_at": null, "last_published_at": null, "live_revision": null, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/navbar/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": null, "alias_of": null, "hero_text": "<h2 data-block-key=\\"6xefn\\"><b>Shop at Black Moon Games!</b></h2>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li></ul>", "hero_image": 21, "wagtail_admin_comments": []}	7	48	1	Landing Page
64	f	2022-11-29 15:03:05.174339-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 63, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-29T15:01:29.106Z", "live_revision": 63, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T15:01:29.026Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"6xefn\\"><b>Shop at Black Moon Games!</b></h2>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li></ul>", "hero_image": 21, "wagtail_admin_comments": []}	7	48	1	Landing Page
65	f	2022-11-30 16:03:04.118299-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 64, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-29T15:03:05.222Z", "live_revision": 64, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T15:03:05.174Z", "alias_of": null, "hero_text": "<h2 data-block-key=\\"6xefn\\"><b>Shop at Black Moon Games!</b></h2>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li><li data-block-key=\\"462qj\\">We smell good</li></ul>", "hero_image": 21, "wagtail_admin_comments": []}	7	48	1	Landing Page
66	f	2022-11-30 16:39:43.468226-05	\N	1	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "d9c00900-ea27-4e44-8e35-ef8a395f1db2", "locale": 1, "latest_revision": 62, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T14:55:56.351Z", "last_published_at": "2022-11-29T14:55:56.351Z", "live_revision": 62, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Navbar", "draft_title": "Navbar", "slug": "navbar", "content_type": 47, "url_path": "/black-moon-games/navbar/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T14:55:56.275Z", "alias_of": null, "nav_text": "<p data-block-key=\\"u423o\\">BMG</p>", "nav_btn": null, "nav_img": 22, "wagtail_admin_comments": []}	6	47	1	Navbar
67	f	2022-11-30 16:40:11.424551-05	\N	1	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "d9c00900-ea27-4e44-8e35-ef8a395f1db2", "locale": 1, "latest_revision": 66, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T14:55:56.351Z", "last_published_at": "2022-11-30T16:39:43.537Z", "live_revision": 66, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Navbar", "draft_title": "Navbar", "slug": "navbar", "content_type": 47, "url_path": "/black-moon-games/navbar/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T16:39:43.468Z", "alias_of": null, "nav_text": "<p data-block-key=\\"u423o\\">BMG</p>", "nav_btn": null, "nav_img": 22, "wagtail_admin_comments": []}	6	47	1	Navbar
68	f	2022-11-30 16:41:53.171102-05	\N	1	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "d9c00900-ea27-4e44-8e35-ef8a395f1db2", "locale": 1, "latest_revision": 67, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T14:55:56.351Z", "last_published_at": "2022-11-30T16:40:11.503Z", "live_revision": 67, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Navbar", "draft_title": "Navbar", "slug": "navbar", "content_type": 47, "url_path": "/black-moon-games/navbar/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T16:40:11.424Z", "alias_of": null, "nav_text": "<p data-block-key=\\"u423o\\">BMG</p>", "nav_btn": null, "nav_img": 25, "wagtail_admin_comments": []}	6	47	1	Navbar
69	f	2022-11-30 16:43:47.004681-05	\N	1	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "d9c00900-ea27-4e44-8e35-ef8a395f1db2", "locale": 1, "latest_revision": 68, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T14:55:56.351Z", "last_published_at": "2022-11-30T16:41:53.290Z", "live_revision": 68, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Navbar", "draft_title": "Navbar", "slug": "navbar", "content_type": 47, "url_path": "/black-moon-games/navbar/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T16:41:53.171Z", "alias_of": null, "nav_text": "<p data-block-key=\\"u423o\\">BMG</p>", "nav_btn": null, "nav_img": 25, "wagtail_admin_comments": []}	6	47	1	Navbar
70	f	2022-11-30 16:45:43.060566-05	\N	1	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "d9c00900-ea27-4e44-8e35-ef8a395f1db2", "locale": 1, "latest_revision": 69, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T14:55:56.351Z", "last_published_at": "2022-11-30T16:43:47.084Z", "live_revision": 69, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Navbar", "draft_title": "Navbar", "slug": "navbar", "content_type": 47, "url_path": "/black-moon-games/navbar/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T16:43:47.004Z", "alias_of": null, "nav_text": "<p data-block-key=\\"u423o\\">BMG</p>", "nav_btn": null, "nav_img": 25, "wagtail_admin_comments": []}	6	47	1	Navbar
71	f	2022-11-30 19:01:41.907281-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 65, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T16:03:04.183Z", "live_revision": 65, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T16:03:04.118Z", "alias_of": null, "hero_text": "<p data-block-key=\\"6xefn\\">&lt;h1&gt;</p><p data-block-key=\\"fcrq8\\">Board Games</p><p data-block-key=\\"6da72\\">Tabletop Games</p><p data-block-key=\\"cjss4\\">Puzzles</p><p data-block-key=\\"5s0db\\">TCGS</p><p data-block-key=\\"et252\\">&lt;/h1&gt;</p>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li><li data-block-key=\\"462qj\\">We smell good</li></ul>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
72	f	2022-11-30 19:02:10.923235-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 71, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:01:41.958Z", "live_revision": 71, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:01:41.907Z", "alias_of": null, "hero_text": "<p data-block-key=\\"6xefn\\">Board Games</p><p data-block-key=\\"6da72\\">Tabletop Games</p><p data-block-key=\\"cjss4\\">Puzzles</p><p data-block-key=\\"5s0db\\">TCGS</p>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li><li data-block-key=\\"462qj\\">We smell good</li></ul>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
73	f	2022-11-30 19:03:53.870939-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 72, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:02:10.990Z", "live_revision": 72, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:02:10.923Z", "alias_of": null, "hero_text": "<p data-block-key=\\"6xefn\\">&lt;h1&gt;</p><p data-block-key=\\"2p3kc\\">Board Games</p><p data-block-key=\\"6da72\\">Tabletop Games</p><p data-block-key=\\"cjss4\\">Puzzles</p><p data-block-key=\\"5s0db\\">TCGS</p><p data-block-key=\\"1cg7l\\">&lt;/h1&gt;</p>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li><li data-block-key=\\"462qj\\">We smell good</li></ul>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
74	f	2022-11-30 19:11:51.266137-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 73, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:03:53.931Z", "live_revision": 73, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:03:53.870Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board Games</h1><h1 data-block-key=\\"6da72\\">Tabletop Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li><li data-block-key=\\"462qj\\">We smell good</li></ul>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
75	f	2022-11-30 19:13:21.240863-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 74, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:11:51.339Z", "live_revision": 74, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:11:51.266Z", "alias_of": null, "hero_text": "<h6 data-block-key=\\"6xefn\\">Board Games</h6><h6 data-block-key=\\"6da72\\">Tabletop Games</h6><h6 data-block-key=\\"cjss4\\">Puzzles</h6><h6 data-block-key=\\"5s0db\\">TCGS</h6>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li><li data-block-key=\\"462qj\\">We smell good</li></ul>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
76	f	2022-11-30 19:13:58.614807-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 75, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:13:21.283Z", "live_revision": 75, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:13:21.240Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board Games</h1><h1 data-block-key=\\"6da72\\">Tabletop Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li><li data-block-key=\\"462qj\\">We smell good</li></ul>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
94	f	2022-12-05 14:07:42.561279-05	\N	1	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "83a34932-7f07-4ab7-9eda-eb3c303c2997", "locale": 1, "latest_revision": 93, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-02T15:50:14.263Z", "last_published_at": "2022-12-05T13:51:50.413Z", "live_revision": 93, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Banner", "draft_title": "Banner", "slug": "banner", "content_type": 49, "url_path": "/black-moon-games/banner/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-05T13:51:50.348Z", "alias_of": null, "banner_text": "<h5 data-block-key=\\"fdq72\\">We are moving in February, 2023!</h5>", "banner_subtext": "<p data-block-key=\\"lswbq\\">Check out our new storefront on route 12A in West Lebanon!</p><p data-block-key=\\"ckfir\\">More product, more events, more games.</p>", "banner_link": "https://goo.gl/maps/Jq4uWhjdrwiaCexa6", "banner_image": null, "wagtail_admin_comments": []}	8	49	1	Banner
77	f	2022-11-30 19:17:41.675533-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 76, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:13:58.679Z", "live_revision": 76, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:13:58.614Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board </h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop </h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li><li data-block-key=\\"462qj\\">We smell good</li></ul>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
78	f	2022-11-30 19:18:50.972058-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 77, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:17:41.741Z", "live_revision": 77, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:17:41.675Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h2 data-block-key=\\"55iul\\">Games</h2><h3 data-block-key=\\"6da72\\">Tabletop</h3><h4 data-block-key=\\"4id13\\">Games</h4><h5 data-block-key=\\"cjss4\\">Puzzles</h5><h6 data-block-key=\\"5s0db\\">TCGS</h6>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li><li data-block-key=\\"462qj\\">We smell good</li></ul>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
79	f	2022-11-30 19:19:54.384544-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 78, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:18:51.038Z", "live_revision": 78, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:18:50.972Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Buy our stuff!</h3><ul><li data-block-key=\\"cih1k\\">We are the best</li><li data-block-key=\\"3fs2o\\">We rock</li><li data-block-key=\\"e12t4\\">We are cool</li><li data-block-key=\\"462qj\\">We smell good</li></ul>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
80	f	2022-11-30 19:23:48.327201-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 79, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:19:54.449Z", "live_revision": 79, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:19:54.384Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3><h5 data-block-key=\\"4j67i\\">Shop online, or pick up in store.</h5><h5 data-block-key=\\"4jekp\\">Earn rewards for every purchase!</h5>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
81	f	2022-11-30 19:24:09.299337-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 80, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:23:48.382Z", "live_revision": 80, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:23:48.327Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3><h6 data-block-key=\\"4j67i\\">Shop online, or pick up in store.</h6><h6 data-block-key=\\"4jekp\\">Earn rewards for every purchase!</h6>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
95	f	2022-12-05 14:55:07.139706-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": null, "live": true, "has_unpublished_changes": false, "first_published_at": null, "last_published_at": null, "live_revision": null, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "new-products", "content_type": 50, "url_path": "/black-moon-games/new-products/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": null, "alias_of": null, "item_1_text": "<p data-block-key=\\"tye5q\\">Cool new thing!</p>", "item_2_text": "<p data-block-key=\\"mq0ew\\">Another cool new thing!</p>", "item_3_text": "<p data-block-key=\\"s43iy\\">More cool things!</p>", "item_4_text": "<p data-block-key=\\"yzmqq\\">But wait, there&#x27;s more!</p>", "item_1_img": 21, "item_2_img": 26, "item_3_img": 27, "item_4_img": 24, "wagtail_admin_comments": []}	9	50	1	New Products
82	f	2022-11-30 19:34:25.215972-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 81, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:24:09.376Z", "live_revision": 81, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:24:09.299Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3><p data-block-key=\\"c7gu1\\"></p><hr/><p data-block-key=\\"3h806\\"></p><h6 data-block-key=\\"4j67i\\">Shop online, or pick up in store.</h6><h6 data-block-key=\\"4jekp\\">Earn rewards for every purchase!</h6>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
83	f	2022-11-30 19:34:42.819145-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 82, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:34:25.295Z", "live_revision": 82, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:34:25.215Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3><p data-block-key=\\"c7gu1\\"></p><hr/><p data-block-key=\\"3h806\\"></p><p data-block-key=\\"fngo9\\"></p><p data-block-key=\\"6sept\\"></p><h6 data-block-key=\\"4j67i\\">Shop online, or pick up in store.</h6><h6 data-block-key=\\"4jekp\\">Earn rewards for every purchase!</h6>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
84	f	2022-11-30 19:35:26.318713-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 83, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:34:42.875Z", "live_revision": 83, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:34:42.819Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1>", "sub_text": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3><p data-block-key=\\"c7gu1\\"></p><hr/><h6 data-block-key=\\"3h806\\"><b>Shop online or pick up in store.</b></h6><h6 data-block-key=\\"4jekp\\"><b>Earn rewards for every purchase!</b></h6>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
85	f	2022-11-30 19:37:07.044958-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 84, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:35:26.385Z", "live_revision": 84, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:35:26.318Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3><p data-block-key=\\"c7gu1\\"></p><hr/><p data-block-key=\\"aq3v2\\"></p>", "sub_text_two": "<h6 data-block-key=\\"3wibh\\"><b>Shop online or pick up in store.</b></h6><h6 data-block-key=\\"3ejo7\\"><b>Earn rewards for every purchase!</b></h6>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
86	f	2022-11-30 19:37:56.108158-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 85, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:37:07.113Z", "live_revision": 85, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:37:07.044Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3><p data-block-key=\\"c7gu1\\"></p><hr/><p data-block-key=\\"aq3v2\\"></p>", "sub_text_two": "<p data-block-key=\\"3wibh\\">Shop online or pick up in store.</p><p data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</p>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
87	f	2022-11-30 19:39:44.572762-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 86, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:37:56.152Z", "live_revision": 86, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:37:56.108Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<p data-block-key=\\"3wibh\\">Shop online or pick up in store.</p><p data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</p>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
88	f	2022-12-02 15:50:14.194505-05	\N	1	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "83a34932-7f07-4ab7-9eda-eb3c303c2997", "locale": 1, "latest_revision": null, "live": true, "has_unpublished_changes": false, "first_published_at": null, "last_published_at": null, "live_revision": null, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Announcements", "draft_title": "Announcements", "slug": "announcements", "content_type": 49, "url_path": "/black-moon-games/announcements/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": null, "alias_of": null, "banner_text": "<h3 data-block-key=\\"hyzo6\\">Some cool announcement!</h3>", "banner_subtext": "<h4 data-block-key=\\"bwzhy\\">Some cool new thing at the store!</h4>", "banner_image": 24, "wagtail_admin_comments": []}	8	49	1	Announcements
89	f	2022-12-02 15:52:48.361953-05	\N	1	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "83a34932-7f07-4ab7-9eda-eb3c303c2997", "locale": 1, "latest_revision": 88, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-02T15:50:14.263Z", "last_published_at": "2022-12-02T15:50:14.263Z", "live_revision": 88, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Banner", "draft_title": "Announcements", "slug": "banner", "content_type": 49, "url_path": "/black-moon-games/announcements/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-02T15:50:14.194Z", "alias_of": null, "banner_text": "<h3 data-block-key=\\"hyzo6\\">Some cool announcement!</h3>", "banner_subtext": "<h4 data-block-key=\\"bwzhy\\">Some cool new thing at the store!</h4>", "banner_image": 24, "wagtail_admin_comments": []}	8	49	1	Banner
90	f	2022-12-02 16:10:25.364418-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 87, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-11-30T19:39:44.637Z", "live_revision": 87, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T19:39:44.572Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<p data-block-key=\\"3wibh\\">Shop online or pick up in store.</p><p data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</p>", "hero_image": 21, "wagtail_admin_comments": []}	7	48	1	Landing Page
91	f	2022-12-02 16:29:01.114837-05	\N	1	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "d9c00900-ea27-4e44-8e35-ef8a395f1db2", "locale": 1, "latest_revision": 70, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T14:55:56.351Z", "last_published_at": "2022-11-30T16:45:43.128Z", "live_revision": 70, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Navbar", "draft_title": "Navbar", "slug": "navbar", "content_type": 47, "url_path": "/black-moon-games/navbar/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-30T16:45:43.060Z", "alias_of": null, "nav_text": "<p data-block-key=\\"u423o\\">BMG</p>", "nav_button": null, "logo": 25, "wagtail_admin_comments": []}	6	47	1	Navbar
92	f	2022-12-05 13:51:37.399778-05	\N	1	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "83a34932-7f07-4ab7-9eda-eb3c303c2997", "locale": 1, "latest_revision": 89, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-02T15:50:14.263Z", "last_published_at": "2022-12-02T15:52:48.408Z", "live_revision": 89, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Banner", "draft_title": "Banner", "slug": "banner", "content_type": 49, "url_path": "/black-moon-games/banner/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-02T15:52:48.361Z", "alias_of": null, "banner_text": "", "banner_subtext": "", "banner_link": null, "banner_image": null, "wagtail_admin_comments": []}	8	49	1	Banner
93	f	2022-12-05 13:51:50.348752-05	\N	1	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "83a34932-7f07-4ab7-9eda-eb3c303c2997", "locale": 1, "latest_revision": 92, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-02T15:50:14.263Z", "last_published_at": "2022-12-05T13:51:37.457Z", "live_revision": 92, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Banner", "draft_title": "Banner", "slug": "banner", "content_type": 49, "url_path": "/black-moon-games/banner/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-05T13:51:37.399Z", "alias_of": null, "banner_text": "", "banner_subtext": "", "banner_link": null, "banner_image": null, "wagtail_admin_comments": []}	8	49	1	Banner
96	f	2022-12-05 15:13:21.206703-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": 95, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-05T14:55:07.243Z", "last_published_at": "2022-12-05T14:55:07.243Z", "live_revision": 95, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "new-products", "content_type": 50, "url_path": "/black-moon-games/new-products/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-05T14:55:07.139Z", "alias_of": null, "item_1": "[{\\"type\\": \\"image\\", \\"value\\": 21, \\"id\\": \\"6329d8b5-0acb-4a81-a720-af5c8b88d601\\"}, {\\"type\\": \\"description\\", \\"value\\": \\"<p data-block-key=\\\\\\"dpwgx\\\\\\">Wicked cool new thing!</p>\\", \\"id\\": \\"2adb8439-61e4-4615-9b3a-c0caedf2d773\\"}, {\\"type\\": \\"url\\", \\"value\\": \\"https://www.google.com\\", \\"id\\": \\"ef4708e6-25d3-45e4-ac31-8841f8c5f038\\"}]", "item_1_text": "<p data-block-key=\\"tye5q\\">Cool new thing!</p>", "item_2_text": "<p data-block-key=\\"mq0ew\\">Another cool new thing!</p>", "item_3_text": "<p data-block-key=\\"s43iy\\">More cool things!</p>", "item_4_text": "<p data-block-key=\\"yzmqq\\">But wait, there&#x27;s more!</p>", "item_1_img": 21, "item_2_img": 26, "item_3_img": 27, "item_4_img": 24, "wagtail_admin_comments": []}	9	50	1	New Products
97	f	2022-12-05 15:16:35.78684-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": 96, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-05T14:55:07.243Z", "last_published_at": "2022-12-05T15:13:21.279Z", "live_revision": 96, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "new-products", "content_type": 50, "url_path": "/black-moon-games/new-products/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-05T15:13:21.206Z", "alias_of": null, "item_1_stream": "[{\\"type\\": \\"image\\", \\"value\\": 21, \\"id\\": \\"6329d8b5-0acb-4a81-a720-af5c8b88d601\\"}, {\\"type\\": \\"description\\", \\"value\\": \\"<p data-block-key=\\\\\\"dpwgx\\\\\\">Wicked cool new thing!</p>\\", \\"id\\": \\"2adb8439-61e4-4615-9b3a-c0caedf2d773\\"}, {\\"type\\": \\"url\\", \\"value\\": \\"https://www.google.com\\", \\"id\\": \\"ef4708e6-25d3-45e4-ac31-8841f8c5f038\\"}]", "item_1_text": "<p data-block-key=\\"tye5q\\">Cool new thing!</p>", "item_2_text": "<p data-block-key=\\"mq0ew\\">Another cool new thing!</p>", "item_3_text": "<p data-block-key=\\"s43iy\\">More cool things!</p>", "item_4_text": "<p data-block-key=\\"yzmqq\\">But wait, there&#x27;s more!</p>", "item_1_img": 21, "item_2_img": 26, "item_3_img": 27, "item_4_img": 24, "wagtail_admin_comments": []}	9	50	1	New Products
98	f	2022-12-05 15:22:02.982329-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": 97, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-05T14:55:07.243Z", "last_published_at": "2022-12-05T15:16:35.865Z", "live_revision": 97, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "new-products", "content_type": 50, "url_path": "/black-moon-games/new-products/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-05T15:16:35.786Z", "alias_of": null, "item_1": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p data-block-key=\\\\\\"zi53b\\\\\\">Cool description</p>\\", \\"id\\": \\"e354ecf1-0e72-42c6-bb73-6c14f202554b\\"}, {\\"type\\": \\"image\\", \\"value\\": 24, \\"id\\": \\"db604135-2a01-43c6-a6b3-ffd20de0c032\\"}, {\\"type\\": \\"url\\", \\"value\\": \\"https://www.google.com\\", \\"id\\": \\"fd869d25-4261-423b-91fa-56a07c64dfcb\\"}]", "item_1_text": "<p data-block-key=\\"tye5q\\">Cool new thing!</p>", "item_2_text": "<p data-block-key=\\"mq0ew\\">Another cool new thing!</p>", "item_3_text": "<p data-block-key=\\"s43iy\\">More cool things!</p>", "item_4_text": "<p data-block-key=\\"yzmqq\\">But wait, there&#x27;s more!</p>", "item_1_img": 21, "item_2_img": 26, "item_3_img": 27, "item_4_img": 24, "wagtail_admin_comments": []}	9	50	1	New Products
99	f	2022-12-06 00:02:45.182177-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": 98, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-05T14:55:07.243Z", "last_published_at": "2022-12-05T15:22:03.070Z", "live_revision": 98, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "new-products", "content_type": 50, "url_path": "/black-moon-games/new-products/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-05T15:22:02.982Z", "alias_of": null, "new_products": "[{\\"type\\": \\"product\\", \\"value\\": {\\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">new product</p>\\", \\"image\\": 26, \\"url\\": \\"http://localhost:8000/api/v2/pages/9/\\", \\"alt\\": \\"heart icon\\"}, \\"id\\": \\"a1be3666-208c-4195-8424-2f0ebbf42404\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">another product</p>\\", \\"image\\": 21, \\"url\\": \\"http://localhost:8000/api/v2/pages/9/\\", \\"alt\\": \\"a cat\\"}, \\"id\\": \\"3cd06190-114d-4fe8-95f6-0949488c09c0\\"}]", "wagtail_admin_comments": []}	9	50	1	New Products
100	f	2022-12-06 00:15:26.238046-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": 99, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-05T14:55:07.243Z", "last_published_at": "2022-12-06T00:02:45.256Z", "live_revision": 99, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "new-products", "content_type": 50, "url_path": "/black-moon-games/new-products/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T00:02:45.182Z", "alias_of": null, "new_products": "[{\\"type\\": \\"product\\", \\"value\\": {\\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">new product</p>\\", \\"image\\": 26, \\"url\\": \\"http://localhost:8000/api/v2/pages/9/\\", \\"alt\\": \\"heart icon\\"}, \\"id\\": \\"a1be3666-208c-4195-8424-2f0ebbf42404\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">another product</p>\\", \\"image\\": 21, \\"url\\": \\"http://localhost:8000/api/v2/pages/9/\\", \\"alt\\": \\"a cat\\"}, \\"id\\": \\"3cd06190-114d-4fe8-95f6-0949488c09c0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">more product</p>\\", \\"image\\": 24, \\"url\\": \\"https://blackmoongames-dev.herokuapp.com/api/v2/pages/9/\\", \\"alt\\": \\"d20 atom icon\\"}, \\"id\\": \\"b3f7e1eb-9f9c-48ae-ae33-1488d38729e0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">one more product</p>\\", \\"image\\": 23, \\"url\\": \\"https://blackmoongames-dev.herokuapp.com/api/v2/pages/9/\\", \\"alt\\": \\"brain image\\"}, \\"id\\": \\"ca96148c-b92f-41fa-bebb-acdcc87b5499\\"}]", "wagtail_admin_comments": []}	9	50	1	New Products
101	f	2022-12-06 00:26:53.322112-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": 100, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-05T14:55:07.243Z", "last_published_at": "2022-12-06T00:15:26.297Z", "live_revision": 100, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "new-products", "content_type": 50, "url_path": "/black-moon-games/new-products/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T00:15:26.238Z", "alias_of": null, "new_products": "[{\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"a5i0w\\\\\\">New Thing 1</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">new product</p>\\", \\"image\\": 26, \\"url\\": \\"http://localhost:8000/api/v2/pages/9/\\", \\"alt\\": \\"heart icon\\"}, \\"id\\": \\"a1be3666-208c-4195-8424-2f0ebbf42404\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"sajx6\\\\\\">New Thing 2</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">another product</p>\\", \\"image\\": 21, \\"url\\": \\"http://localhost:8000/api/v2/pages/9/\\", \\"alt\\": \\"a cat\\"}, \\"id\\": \\"3cd06190-114d-4fe8-95f6-0949488c09c0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"oeczd\\\\\\">New Thing 3</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">more product</p>\\", \\"image\\": 24, \\"url\\": \\"https://blackmoongames-dev.herokuapp.com/api/v2/pages/9/\\", \\"alt\\": \\"d20 atom icon\\"}, \\"id\\": \\"b3f7e1eb-9f9c-48ae-ae33-1488d38729e0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"na0i5\\\\\\">New Thing 4</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">one more product</p>\\", \\"image\\": 23, \\"url\\": \\"https://blackmoongames-dev.herokuapp.com/api/v2/pages/9/\\", \\"alt\\": \\"brain image\\"}, \\"id\\": \\"ca96148c-b92f-41fa-bebb-acdcc87b5499\\"}]", "wagtail_admin_comments": []}	9	50	1	New Products
102	f	2022-12-06 00:27:22.730962-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": 101, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-05T14:55:07.243Z", "last_published_at": "2022-12-06T00:26:53.382Z", "live_revision": 101, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "new-products", "content_type": 50, "url_path": "/black-moon-games/new-products/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T00:26:53.322Z", "alias_of": null, "new_products": "[{\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"a5i0w\\\\\\">New Thing 1</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">A cool description</p>\\", \\"image\\": 26, \\"url\\": \\"http://localhost:8000/api/v2/pages/9/\\", \\"alt\\": \\"heart icon\\"}, \\"id\\": \\"a1be3666-208c-4195-8424-2f0ebbf42404\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"sajx6\\\\\\">New Thing 2</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">A cool description</p>\\", \\"image\\": 21, \\"url\\": \\"http://localhost:8000/api/v2/pages/9/\\", \\"alt\\": \\"a cat\\"}, \\"id\\": \\"3cd06190-114d-4fe8-95f6-0949488c09c0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"oeczd\\\\\\">New Thing 3</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">A cool description</p>\\", \\"image\\": 24, \\"url\\": \\"https://blackmoongames-dev.herokuapp.com/api/v2/pages/9/\\", \\"alt\\": \\"d20 atom icon\\"}, \\"id\\": \\"b3f7e1eb-9f9c-48ae-ae33-1488d38729e0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"na0i5\\\\\\">New Thing 4</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">A cool description</p>\\", \\"image\\": 23, \\"url\\": \\"https://blackmoongames-dev.herokuapp.com/api/v2/pages/9/\\", \\"alt\\": \\"brain image\\"}, \\"id\\": \\"ca96148c-b92f-41fa-bebb-acdcc87b5499\\"}]", "wagtail_admin_comments": []}	9	50	1	New Products
103	f	2022-12-06 01:03:32.386397-05	\N	1	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "83a34932-7f07-4ab7-9eda-eb3c303c2997", "locale": 1, "latest_revision": 94, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-02T15:50:14.263Z", "last_published_at": "2022-12-05T14:07:42.606Z", "live_revision": 94, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Banner", "draft_title": "Banner", "slug": "banner", "content_type": 49, "url_path": "/black-moon-games/banner/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-05T14:07:42.561Z", "alias_of": null, "banner_text": "<h5 data-block-key=\\"fdq72\\">We are moving in February, 2023!</h5>", "banner_subtext": "<p data-block-key=\\"lswbq\\">Check out our new storefront in the North Country Plaza on route 12A in West Lebanon!</p><p data-block-key=\\"ckfir\\">More product, more events, more games.</p><p data-block-key=\\"egcgt\\">267 Plainfield Road, West Lebanon, NH 03784</p>", "banner_link": "https://goo.gl/maps/nXnTqYoqGUUTVg93A", "banner_image": null, "wagtail_admin_comments": []}	8	49	1	Banner
104	f	2022-12-06 13:23:36.56943-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": 102, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-05T14:55:07.243Z", "last_published_at": "2022-12-06T00:27:22.781Z", "live_revision": 102, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "new-products", "content_type": 50, "url_path": "/black-moon-games/new-products/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T00:27:22.730Z", "alias_of": null, "new_products": "[{\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"a5i0w\\\\\\">New Thing 1</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">A cool description</p>\\", \\"image\\": 26, \\"link\\": \\"\\", \\"alt\\": \\"heart icon\\"}, \\"id\\": \\"a1be3666-208c-4195-8424-2f0ebbf42404\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"sajx6\\\\\\">New Thing 2</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">A cool description</p>\\", \\"image\\": 21, \\"link\\": \\"\\", \\"alt\\": \\"a cat\\"}, \\"id\\": \\"3cd06190-114d-4fe8-95f6-0949488c09c0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"oeczd\\\\\\">New Thing 3</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">A cool description</p>\\", \\"image\\": 27, \\"link\\": \\"\\", \\"alt\\": \\"bicycle\\"}, \\"id\\": \\"b3f7e1eb-9f9c-48ae-ae33-1488d38729e0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"na0i5\\\\\\">New Thing 4</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">A cool description</p>\\", \\"image\\": 23, \\"link\\": \\"\\", \\"alt\\": \\"brain image\\"}, \\"id\\": \\"ca96148c-b92f-41fa-bebb-acdcc87b5499\\"}]", "wagtail_admin_comments": []}	9	50	1	New Products
105	f	2022-12-06 13:24:21.606272-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": 104, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-05T14:55:07.243Z", "last_published_at": "2022-12-06T13:23:36.619Z", "live_revision": 104, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "new-products", "content_type": 50, "url_path": "/black-moon-games/new-products/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T13:23:36.569Z", "alias_of": null, "new_products": "[{\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"a5i0w\\\\\\">New Thing 1</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">A cool description</p>\\", \\"image\\": 26, \\"link\\": \\"\\", \\"alt\\": \\"heart icon\\"}, \\"id\\": \\"a1be3666-208c-4195-8424-2f0ebbf42404\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"sajx6\\\\\\">New Thing 2</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">A cool description</p>\\", \\"image\\": 21, \\"link\\": \\"\\", \\"alt\\": \\"a cat\\"}, \\"id\\": \\"3cd06190-114d-4fe8-95f6-0949488c09c0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"oeczd\\\\\\">New Thing 3</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">A cool description</p>\\", \\"image\\": 27, \\"link\\": \\"\\", \\"alt\\": \\"bicycle\\"}, \\"id\\": \\"b3f7e1eb-9f9c-48ae-ae33-1488d38729e0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"na0i5\\\\\\">New Thing 4</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">A cool description</p>\\", \\"image\\": 23, \\"link\\": \\"\\", \\"alt\\": \\"brain image\\"}, \\"id\\": \\"ca96148c-b92f-41fa-bebb-acdcc87b5499\\"}]", "wagtail_admin_comments": []}	9	50	1	New Products
106	f	2022-12-06 13:49:07.98468-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": 105, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-05T14:55:07.243Z", "last_published_at": "2022-12-06T13:24:21.653Z", "live_revision": 105, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "home", "content_type": 50, "url_path": "/black-moon-games/new-products/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T13:24:21.606Z", "alias_of": null, "new_products": "[{\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"a5i0w\\\\\\">New Thing 1</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">A cool description</p>\\", \\"image\\": 26, \\"link\\": \\"\\", \\"alt\\": \\"heart icon\\"}, \\"id\\": \\"a1be3666-208c-4195-8424-2f0ebbf42404\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"sajx6\\\\\\">New Thing 2</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">A cool description</p>\\", \\"image\\": 21, \\"link\\": \\"\\", \\"alt\\": \\"a cat\\"}, \\"id\\": \\"3cd06190-114d-4fe8-95f6-0949488c09c0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"oeczd\\\\\\">New Thing 3</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">A cool description</p>\\", \\"image\\": 27, \\"link\\": \\"\\", \\"alt\\": \\"bicycle\\"}, \\"id\\": \\"b3f7e1eb-9f9c-48ae-ae33-1488d38729e0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"na0i5\\\\\\">New Thing 4</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">A cool description</p>\\", \\"image\\": 23, \\"link\\": \\"\\", \\"alt\\": \\"brain image\\"}, \\"id\\": \\"ca96148c-b92f-41fa-bebb-acdcc87b5499\\"}]", "wagtail_admin_comments": []}	9	50	1	New Products
107	f	2022-12-06 13:52:28.196876-05	\N	1	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "a41904eb-2281-4b17-81aa-7dc271fbdd5c", "locale": 1, "latest_revision": 106, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-05T14:55:07.243Z", "last_published_at": "2022-12-06T13:49:08.058Z", "live_revision": 106, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "New Products", "draft_title": "New Products", "slug": "home", "content_type": 50, "url_path": "/black-moon-games/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T13:49:07.984Z", "alias_of": null, "new_products": "[{\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"a5i0w\\\\\\">New Thing 1</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">A cool description</p>\\", \\"image\\": 26, \\"link\\": \\"\\", \\"alt\\": \\"heart icon\\"}, \\"id\\": \\"a1be3666-208c-4195-8424-2f0ebbf42404\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"sajx6\\\\\\">New Thing 2</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"7jhbo\\\\\\">A cool description</p>\\", \\"image\\": 21, \\"link\\": \\"\\", \\"alt\\": \\"a cat\\"}, \\"id\\": \\"3cd06190-114d-4fe8-95f6-0949488c09c0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"oeczd\\\\\\">New Thing 3</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">A cool description</p>\\", \\"image\\": 27, \\"link\\": \\"\\", \\"alt\\": \\"bicycle\\"}, \\"id\\": \\"b3f7e1eb-9f9c-48ae-ae33-1488d38729e0\\"}, {\\"type\\": \\"product\\", \\"value\\": {\\"name\\": \\"<p data-block-key=\\\\\\"na0i5\\\\\\">New Thing 4</p>\\", \\"description\\": \\"<p data-block-key=\\\\\\"43bmt\\\\\\">A cool description</p>\\", \\"image\\": 23, \\"link\\": \\"\\", \\"alt\\": \\"brain image\\"}, \\"id\\": \\"ca96148c-b92f-41fa-bebb-acdcc87b5499\\"}]", "wagtail_admin_comments": []}	9	50	1	New Products
108	f	2022-12-06 14:33:36.920654-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": null, "live": true, "has_unpublished_changes": false, "first_published_at": null, "last_published_at": null, "live_revision": null, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": null, "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"h9gn2\\">How it works:</h5><h6 data-block-key=\\"c03d\\">Buying</h6><ol><li data-block-key=\\"309uk\\">Submit your list online using our digital storefront</li><li data-block-key=\\"dbtfv\\">We will gather the requested singles and call you when your order is ready for pickup</li><li data-block-key=\\"e65k8\\">There is no limit to how many cards you can put on your list</li></ol><h6 data-block-key=\\"na53\\">Selling</h6><ol><li data-block-key=\\"drp2g\\">Submit your buylist online using our digital storefront<br/>Bring your cards into the store for a review</li><li data-block-key=\\"d12s6\\">We will offer your choice of cash or store credit based on the value of the cards</li><li data-block-key=\\"bluek\\">There is no limit to how many cards you can submit on an online buylist</li><li data-block-key=\\"3k9j7\\">No more than 10 cards may be sold per customer per day on a walk-in bases<br/></li></ol>", "logo": 28, "wagtail_admin_comments": []}	10	52	1	Magic Singles
109	f	2022-12-06 14:41:29.834223-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 108, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T14:33:36.999Z", "live_revision": 108, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T14:33:36.920Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"h9gn2\\">How it works:</h5><h6 data-block-key=\\"c03d\\">Buying</h6><ol><li data-block-key=\\"309uk\\">Submit your list online using our digital storefront</li><li data-block-key=\\"dbtfv\\">We will gather the requested singles and call you when your order is ready for pickup</li><li data-block-key=\\"e65k8\\">There is no limit to how many cards you can put on your list</li></ol><h6 data-block-key=\\"na53\\">Selling</h6><ol><li data-block-key=\\"drp2g\\">Submit your buylist online using our digital storefront<br/>Bring your cards into the store for a review</li><li data-block-key=\\"d12s6\\">We will offer your choice of cash or store credit based on the value of the cards</li><li data-block-key=\\"bluek\\">There is no limit to how many cards you can submit on an online buylist</li><li data-block-key=\\"3k9j7\\">No more than 10 cards may be sold per customer per day on a walk-in bases<br/></li></ol>", "logo": 28, "wagtail_admin_comments": []}	10	52	1	Magic Singles
110	f	2022-12-06 14:43:33.711261-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 109, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T14:41:29.895Z", "live_revision": 109, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T14:41:29.834Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"h9gn2\\">How it works:</h5><h6 data-block-key=\\"c03d\\">Buying</h6><ol><li data-block-key=\\"309uk\\">Submit your list online using our digital storefront</li><li data-block-key=\\"dbtfv\\">We will gather the requested singles and call you when your order is ready for pickup</li><li data-block-key=\\"e65k8\\">There is no limit to how many cards you can put on your list</li></ol><h6 data-block-key=\\"na53\\">Selling</h6><ol><li data-block-key=\\"drp2g\\">Submit your buylist online using our digital storefront<br/>Bring your cards into the store for a review</li><li data-block-key=\\"d12s6\\">We will offer your choice of cash or store credit based on the value of the cards</li><li data-block-key=\\"bluek\\">There is no limit to how many cards you can submit on an online buylist</li><li data-block-key=\\"3k9j7\\">No more than 10 cards may be sold per customer per day on a walk-in bases<br/></li></ol>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
111	f	2022-12-06 14:45:22.604912-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 110, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T14:43:33.807Z", "live_revision": 110, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T14:43:33.711Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"h9gn2\\">Buying</h5><ul><li data-block-key=\\"309uk\\">Submit your list online using our digital storefront</li><li data-block-key=\\"dbtfv\\">We will gather the requested singles and call you when your order is ready for pickup</li><li data-block-key=\\"e65k8\\">There is no limit to how many cards you can put on your list</li></ul><h6 data-block-key=\\"na53\\">Selling</h6><ul><li data-block-key=\\"drp2g\\">Submit your buylist online using our digital storefront<br/>Bring your cards into the store for a review</li><li data-block-key=\\"d12s6\\">We will offer your choice of cash or store credit based on the value of the cards</li><li data-block-key=\\"bluek\\">There is no limit to how many cards you can submit on an online buylist</li><li data-block-key=\\"3k9j7\\">No more than 10 cards may be sold per customer per day on a walk-in bases<br/></li></ul>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
112	f	2022-12-06 14:46:46.209128-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 111, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T14:45:22.694Z", "live_revision": 111, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T14:45:22.604Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"h9gn2\\">Buying</h5><ol><li data-block-key=\\"309uk\\">Submit your list online using our digital storefront</li><li data-block-key=\\"dbtfv\\">We will gather the requested singles and call you when your order is ready for pickup</li><li data-block-key=\\"e65k8\\">There is no limit to how many cards you can put on your list</li></ol><h5 data-block-key=\\"na53\\">Selling</h5><ol><li data-block-key=\\"drp2g\\">Submit your buylist online using our digital storefront<br/>Bring your cards into the store for a review</li><li data-block-key=\\"d12s6\\">We will offer your choice of cash or store credit based on the value of the cards</li><li data-block-key=\\"bluek\\">There is no limit to how many cards you can submit on an online buylist</li><li data-block-key=\\"3k9j7\\">No more than 10 cards may be sold per customer per day on a walk-in bases<br/></li></ol>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
113	f	2022-12-06 14:52:26.014792-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 112, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T14:46:46.303Z", "live_revision": 112, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T14:46:46.209Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"h9gn2\\">Buying</h5><ol><li data-block-key=\\"309uk\\">Submit your list online using our digital storefront</li></ol><p data-block-key=\\"dbtfv\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"e65k8\\">3. There is no limit to how many cards you can put on your list</p><h5 data-block-key=\\"na53\\">Selling</h5><ol><li data-block-key=\\"drp2g\\">Submit your buylist online using our digital storefront<br/>Bring your cards into the store for a review</li><li data-block-key=\\"d12s6\\">We will offer your choice of cash or store credit based on the value of the cards</li><li data-block-key=\\"bluek\\">There is no limit to how many cards you can submit on an online buylist</li><li data-block-key=\\"3k9j7\\">No more than 10 cards may be sold per customer per day on a walk-in bases<br/></li></ol>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
114	f	2022-12-06 14:52:53.888218-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 113, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T14:52:26.089Z", "live_revision": 113, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T14:52:26.014Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"h9gn2\\">Buying</h5><ol><li data-block-key=\\"309uk\\">Submit your list online using our digital storefront</li></ol><p data-block-key=\\"dbtfv\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"e65k8\\">3. There is no limit to how many cards you can put on your list</p><h5 data-block-key=\\"na53\\">Selling</h5><ol><li data-block-key=\\"drp2g\\">Submit your buylist online using our digital storefront<br/>Bring your cards into the store for a review</li><li data-block-key=\\"d12s6\\">We will offer your choice of cash or store credit based on the value of the cards</li><li data-block-key=\\"bluek\\">There is no limit to how many cards you can submit on an online buylist</li><li data-block-key=\\"3k9j7\\">No more than 10 cards may be sold per customer per day on a walk-in bases<br/></li></ol>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
115	f	2022-12-06 14:54:09.973274-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 114, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T14:52:53.952Z", "live_revision": 114, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T14:52:53.888Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"h9gn2\\">Buying</h5><p data-block-key=\\"36k15\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"dbtfv\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"e65k8\\">3. There is no limit to how many cards you can put on your list</p><h5 data-block-key=\\"na53\\">Selling</h5><p data-block-key=\\"drp2g\\">1. Submit your buylist online using our digital storefront<br/>2. Bring your cards into the store for a review</p><p data-block-key=\\"d12s6\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"bluek\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"3k9j7\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases<br/></p>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
116	f	2022-12-06 14:54:47.030284-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 115, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T14:54:10.045Z", "live_revision": 115, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T14:54:09.973Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"h9gn2\\">Buying</h5><blockquote data-block-key=\\"36k15\\">1. Submit your list online using our digital storefront</blockquote><blockquote data-block-key=\\"dbtfv\\">2. We will gather the requested singles and call you when your order is ready for pickup</blockquote><blockquote data-block-key=\\"e65k8\\">3. There is no limit to how many cards you can put on your list</blockquote><h5 data-block-key=\\"na53\\">Selling</h5><p data-block-key=\\"drp2g\\">1. Submit your buylist online using our digital storefront<br/>2. Bring your cards into the store for a review</p><p data-block-key=\\"d12s6\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"bluek\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"3k9j7\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases<br/></p>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
117	f	2022-12-06 14:55:52.245424-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 116, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T14:54:47.133Z", "live_revision": 116, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T14:54:47.030Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"h9gn2\\">Buying</h5><p data-block-key=\\"36k15\\">Submit your list online using our digital storefront</p><p data-block-key=\\"dbtfv\\">We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"e65k8\\">There is no limit to how many cards you can put on your list</p><h5 data-block-key=\\"na53\\">Selling</h5><p data-block-key=\\"drp2g\\"> Submit your buylist online using our digital storefront<br/>Bring your cards into the store for a review</p><p data-block-key=\\"d12s6\\">We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"bluek\\">There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"3k9j7\\">No more than 10 cards may be sold per customer per day on a walk-in bases<br/></p>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
118	f	2022-12-06 15:02:55.325414-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 117, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T14:55:52.301Z", "live_revision": 117, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T14:55:52.245Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "Buying\\r\\nSubmit your list online using our digital storefront\\r\\nWe will gather the requested singles and call you when your order is ready for pickup\\r\\nThere is no limit to how many cards you can put on your list\\r\\nSelling\\r\\nSubmit your buylist online using our digital storefront\\r\\nBring your cards into the store for a review\\r\\nWe will offer your choice of cash or store credit based on the value of the cards\\r\\nThere is no limit to how many cards you can submit on an online buylist\\r\\nNo more than 10 cards may be sold per customer per day on a walk-in bases", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
119	f	2022-12-06 15:11:14.906141-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 118, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:02:55.398Z", "live_revision": 118, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:02:55.325Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "Buying\\r\\n1. Submit your list online using our digital storefront\\r\\n2. We will gather the requested singles and call you when your order is ready for pickup\\r\\n3. There is no limit to how many cards you can put on your list\\r\\nSelling\\r\\n1. Submit your buylist online using our digital storefront\\r\\n2. Bring your cards into the store for a review\\r\\n3. We will offer your choice of cash or store credit based on the value of the cards\\r\\n4. There is no limit to how many cards you can submit on an online buylist\\r\\n5. No more than 10 cards may be sold per customer per day on a walk-in bases", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
120	f	2022-12-06 15:14:18.094714-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 119, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:11:14.993Z", "live_revision": 119, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:11:14.906Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"vjq76\\">Buying </h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront </p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup </p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list </p><h5 data-block-key=\\"fco72\\">Selling </h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront </p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review </p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards </p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist </p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
121	f	2022-12-06 15:15:29.716414-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 120, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:14:18.165Z", "live_revision": 120, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:14:18.094Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><p data-block-key=\\"c3gvd\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront</p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review</p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
122	f	2022-12-06 15:15:51.765915-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 121, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:15:29.776Z", "live_revision": 121, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:15:29.716Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"vjq76\\">Buying</h5><ol><li data-block-key=\\"elcve\\">Submit your list online using our digital storefront</li><li data-block-key=\\"drmrd\\">We will gather the requested singles and call you when your order is ready for pickup</li><li data-block-key=\\"a1ag\\">There is no limit to how many cards you can put on your list</li></ol><p data-block-key=\\"c3gvd\\"></p><hr/><p data-block-key=\\"9gdtj\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><ol><li data-block-key=\\"cohge\\">Submit your buylist online using our digital storefront</li><li data-block-key=\\"6pqgj\\">Bring your cards into the store for a review</li><li data-block-key=\\"1b7pt\\">We will offer your choice of cash or store credit based on the value of the cards</li><li data-block-key=\\"1epqq\\">There is no limit to how many cards you can submit on an online buylist</li><li data-block-key=\\"350s6\\">No more than 10 cards may be sold per customer per day on a walk-in bases</li></ol>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
123	f	2022-12-06 15:16:11.606844-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 122, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:15:51.817Z", "live_revision": 122, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:15:51.765Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"vjq76\\">Buying</h5><ol><li data-block-key=\\"elcve\\">Submit your list online using our digital storefront</li><li data-block-key=\\"drmrd\\">We will gather the requested singles and call you when your order is ready for pickup</li><li data-block-key=\\"a1ag\\">There is no limit to how many cards you can put on your list</li></ol><h5 data-block-key=\\"fco72\\">Selling</h5><ol><li data-block-key=\\"cohge\\">Submit your buylist online using our digital storefront</li><li data-block-key=\\"6pqgj\\">Bring your cards into the store for a review</li><li data-block-key=\\"1b7pt\\">We will offer your choice of cash or store credit based on the value of the cards</li><li data-block-key=\\"1epqq\\">There is no limit to how many cards you can submit on an online buylist</li><li data-block-key=\\"350s6\\">No more than 10 cards may be sold per customer per day on a walk-in bases</li></ol>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
124	f	2022-12-06 15:17:56.949857-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 123, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:16:11.656Z", "live_revision": 123, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:16:11.606Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><h5 data-block-key=\\"fco72\\">Selling</h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront</p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review</p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
125	f	2022-12-06 15:19:00.094495-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 124, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:17:57.037Z", "live_revision": 124, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:17:56.949Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4>", "sub_text": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><p data-block-key=\\"3hp21\\"></p><p data-block-key=\\"ae1kj\\"></p><hr/><p data-block-key=\\"egtkr\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><ol><li data-block-key=\\"cohge\\">Submit your buylist online using our digital storefront</li><li data-block-key=\\"6pqgj\\">Bring your cards into the store for a review</li><li data-block-key=\\"1b7pt\\">We will offer your choice of cash or store credit based on the value of the cards</li><li data-block-key=\\"1epqq\\">There is no limit to how many cards you can submit on an online buylist</li><li data-block-key=\\"350s6\\">No more than 10 cards may be sold per customer per day on a walk-in bases</li></ol>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
126	f	2022-12-06 15:19:46.457385-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 125, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:19:00.179Z", "live_revision": 125, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:19:00.094Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4><p data-block-key=\\"5dfda\\"></p><hr/><p data-block-key=\\"2m9m0\\"></p>", "sub_text": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><p data-block-key=\\"3hp21\\"></p><hr/><p data-block-key=\\"egtkr\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront</p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review</p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
127	f	2022-12-06 15:20:17.160714-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 126, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:19:46.522Z", "live_revision": 126, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:19:46.457Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4><p data-block-key=\\"5dfda\\"></p><hr/><p data-block-key=\\"2m9m0\\"></p>", "sub_text": "<h5 data-block-key=\\"vjq76\\">Buying</h5><ol><li data-block-key=\\"elcve\\">Submit your list online using our digital storefront</li><li data-block-key=\\"drmrd\\">We will gather the requested singles and call you when your order is ready for pickup</li><li data-block-key=\\"a1ag\\">There is no limit to how many cards you can put on your list</li></ol><hr/><p data-block-key=\\"egtkr\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><ol><li data-block-key=\\"cohge\\">Submit your buylist online using our digital storefront</li><li data-block-key=\\"6pqgj\\">Bring your cards into the store for a review</li><li data-block-key=\\"1b7pt\\">We will offer your choice of cash or store credit based on the value of the cards</li><li data-block-key=\\"1epqq\\">There is no limit to how many cards you can submit on an online buylist</li><li data-block-key=\\"350s6\\">No more than 10 cards may be sold per customer per day on a walk-in bases</li></ol><hr/><p data-block-key=\\"e3k18\\"></p>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
128	f	2022-12-06 15:21:00.954639-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 127, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:20:17.233Z", "live_revision": 127, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:20:17.160Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4><p data-block-key=\\"5dfda\\"></p><hr/><p data-block-key=\\"2m9m0\\"></p>", "sub_text": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><hr/><p data-block-key=\\"egtkr\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront</p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review</p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p><hr/><p data-block-key=\\"e3k18\\"></p>", "logo": 29, "wagtail_admin_comments": []}	10	52	1	Magic Singles
129	f	2022-12-06 15:38:54.356334-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 128, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:21:01.046Z", "live_revision": 128, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:21:00.954Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4><p data-block-key=\\"5dfda\\"></p><hr/><p data-block-key=\\"2m9m0\\"></p>", "sub_text_one": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><hr/><p data-block-key=\\"egtkr\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront</p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review</p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p><hr/><p data-block-key=\\"e3k18\\"></p>", "sub_text_two": "<p data-block-key=\\"58k08\\">We sell boosters and boxes of these TCGs</p>", "logo_1": 29, "logo_2": 30, "logo_3": 31, "wagtail_admin_comments": []}	10	52	1	Magic Singles
130	f	2022-12-06 15:43:49.404448-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 129, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:38:54.447Z", "live_revision": 129, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:38:54.356Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4><p data-block-key=\\"5dfda\\"></p><hr/><p data-block-key=\\"2m9m0\\"></p>", "sub_text_one": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><hr/><p data-block-key=\\"egtkr\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront</p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review</p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p><hr/><p data-block-key=\\"e3k18\\"></p>", "sub_text_two": "<h4 data-block-key=\\"58k08\\">We sell boosters and boxes of these TCGs</h4>", "logo_1": 29, "logo_2": 30, "logo_3": 31, "wagtail_admin_comments": []}	10	52	1	Magic Singles
131	f	2022-12-06 16:00:54.018635-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 130, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T15:43:49.500Z", "live_revision": 130, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "TCGs", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T15:43:49.404Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4><p data-block-key=\\"5dfda\\"></p><hr/><p data-block-key=\\"2m9m0\\"></p>", "sub_text_one": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><hr/><p data-block-key=\\"egtkr\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront</p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review</p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p><hr/><p data-block-key=\\"e3k18\\"></p>", "sub_text_two": "<h4 data-block-key=\\"58k08\\">We sell boosters and boxes of these TCGs!</h4>", "logo_1": 29, "logo_2": 30, "logo_3": 31, "wagtail_admin_comments": []}	10	52	1	TCGs
132	f	2022-12-06 16:01:22.551374-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 131, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T16:00:54.090Z", "live_revision": 131, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Magic Singles", "draft_title": "TCGs", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T16:00:54.018Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4><p data-block-key=\\"5dfda\\"></p><hr/><p data-block-key=\\"2m9m0\\"></p>", "sub_text_one": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><hr/><p data-block-key=\\"egtkr\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront</p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review</p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p><hr/><p data-block-key=\\"e3k18\\"></p>", "sub_text_two": "<h4 data-block-key=\\"58k08\\">We sell boosters and boxes of these TCGs!</h4>", "logo_1": 29, "logo_2": 30, "logo_3": 31, "wagtail_admin_comments": []}	10	52	1	Magic Singles
133	f	2022-12-06 16:01:42.079126-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 132, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T16:01:22.602Z", "live_revision": 132, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "TCGS", "draft_title": "Magic Singles", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T16:01:22.551Z", "alias_of": null, "header": "<h3 data-block-key=\\"10crq\\">Magic Singles</h3>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4><p data-block-key=\\"5dfda\\"></p><hr/><p data-block-key=\\"2m9m0\\"></p>", "sub_text_one": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><hr/><p data-block-key=\\"egtkr\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront</p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review</p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p><hr/><p data-block-key=\\"e3k18\\"></p>", "sub_text_two": "<h4 data-block-key=\\"58k08\\">We sell boosters and boxes of these TCGs!</h4>", "logo_1": 29, "logo_2": 30, "logo_3": 31, "wagtail_admin_comments": []}	10	52	1	TCGS
134	f	2022-12-06 16:03:38.057165-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 133, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T16:01:42.151Z", "live_revision": 133, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "TCGS", "draft_title": "TCGS", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T16:01:42.079Z", "alias_of": null, "header": "<h2 data-block-key=\\"10crq\\">Magic Singles</h2>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4><p data-block-key=\\"5dfda\\"></p><hr/><p data-block-key=\\"2m9m0\\"></p>", "sub_text_one": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><hr/><p data-block-key=\\"egtkr\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront</p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review</p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p><hr/><p data-block-key=\\"e3k18\\"></p>", "sub_text_two": "<h4 data-block-key=\\"58k08\\">We sell boosters and boxes of these TCGs!</h4>", "logo_1": 29, "logo_2": 30, "logo_3": 31, "wagtail_admin_comments": []}	10	52	1	TCGS
135	f	2022-12-06 16:06:36.41607-05	\N	1	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "0973800e-d9be-4229-af49-6bccc51508d0", "locale": 1, "latest_revision": 134, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-06T14:33:36.999Z", "last_published_at": "2022-12-06T16:03:38.166Z", "live_revision": 134, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "TCGS", "draft_title": "TCGS", "slug": "magic-singles", "content_type": 52, "url_path": "/black-moon-games/magic-singles/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T16:03:38.057Z", "alias_of": null, "header": "<h2 data-block-key=\\"10crq\\">Magic Singles</h2>", "text": "<h4 data-block-key=\\"n5fyo\\">Looking to buy or sell Magic the Gathering singles?</h4><p data-block-key=\\"5dfda\\"></p><hr/><p data-block-key=\\"2m9m0\\"></p>", "sub_text_one": "<h5 data-block-key=\\"vjq76\\">Buying</h5><p data-block-key=\\"elcve\\">1. Submit your list online using our digital storefront</p><p data-block-key=\\"drmrd\\">2. We will gather the requested singles and call you when your order is ready for pickup</p><p data-block-key=\\"a1ag\\">3. There is no limit to how many cards you can put on your list</p><hr/><p data-block-key=\\"egtkr\\"></p><h5 data-block-key=\\"fco72\\">Selling</h5><p data-block-key=\\"cohge\\">1. Submit your buylist online using our digital storefront</p><p data-block-key=\\"6pqgj\\">2. Bring your cards into the store for a review</p><p data-block-key=\\"1b7pt\\">3. We will offer your choice of cash or store credit based on the value of the cards</p><p data-block-key=\\"1epqq\\">4. There is no limit to how many cards you can submit on an online buylist</p><p data-block-key=\\"350s6\\">5. No more than 10 cards may be sold per customer per day on a walk-in bases</p><hr/><p data-block-key=\\"e3k18\\"></p>", "sub_text_two": "<h3 data-block-key=\\"58k08\\">We sell boosters and boxes of these TCGs!</h3>", "logo_1": 29, "logo_2": 30, "logo_3": 31, "wagtail_admin_comments": []}	10	52	1	TCGS
136	f	2022-12-06 23:00:46.816308-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 90, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-02T16:10:25.413Z", "live_revision": 90, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-02T16:10:25.364Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
142	f	2022-12-07 15:22:50.513656-05	\N	1	{"pk": 4, "path": "00010001", "depth": 2, "numchild": 5, "translation_key": "3b6742e8-46f9-41d1-a6e5-082df20a933b", "locale": 1, "latest_revision": 61, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-28T22:31:00.549Z", "last_published_at": "2022-11-29T14:55:31.768Z", "live_revision": 61, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Black Moon Games", "draft_title": "Black Moon Games", "slug": "black-moon-games", "content_type": 46, "url_path": "/black-moon-games/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-11-29T14:55:31.704Z", "alias_of": null, "banner_text": "<h2 data-block-key=\\"w6pae\\"><b><i>Black Moon Games, Lebanon&#x27;s Friendly Local Game Store!</i></b></h2>", "banner_image": null, "wagtail_admin_comments": []}	4	46	1	Black Moon Games
137	f	2022-12-06 23:03:59.787592-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 136, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-06T23:00:46.913Z", "live_revision": 136, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T23:00:46.816Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "hero_image": 24, "wagtail_admin_comments": []}	7	48	1	Landing Page
138	f	2022-12-06 23:05:06.286866-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 137, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-06T23:03:59.851Z", "live_revision": 137, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T23:03:59.787Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "hero_image": null, "wagtail_admin_comments": []}	7	48	1	Landing Page
139	f	2022-12-06 23:13:43.543825-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 138, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-06T23:05:06.379Z", "live_revision": 138, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T23:05:06.286Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "hero_image": 22, "wagtail_admin_comments": []}	7	48	1	Landing Page
140	f	2022-12-06 23:17:18.053499-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 139, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-06T23:13:43.630Z", "live_revision": 139, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T23:13:43.543Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "hero_image": 22, "wagtail_admin_comments": []}	7	48	1	Landing Page
141	f	2022-12-06 23:23:10.335634-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 140, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-06T23:17:18.104Z", "live_revision": 140, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T23:17:18.053Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "hero_image": 32, "wagtail_admin_comments": []}	7	48	1	Landing Page
170	f	2022-12-09 19:42:00.267633-05	\N	1	{"pk": 34, "path": "000100010006", "depth": 3, "numchild": 0, "translation_key": "d9a0e4e4-546e-4472-b3e7-86652671b262", "locale": 1, "latest_revision": null, "live": true, "has_unpublished_changes": false, "first_published_at": null, "last_published_at": null, "live_revision": null, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Friday Night Magic", "draft_title": "Friday Night Magic", "slug": "friday-night-magic", "content_type": 53, "url_path": "/black-moon-games/friday-night-magic/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": null, "alias_of": null, "name": "Friday Night Magic", "location": "Black Moon Games", "description": "Join us every Friday for varying Magic formats for fun and prizes!\\r\\n\\r\\n--->You can not use store credit or gift cards to pay for gamespace events<---", "start_date": "2022-12-09", "start_time": "16:00:00", "end_date": "2022-12-09", "end_time": "20:00:00", "recurrence": "WEEKLY", "store_link": "https://www.shop-black-moon.com/product/friday-night-magic-pre-registration/6359?cp=true&sa=false&sbp=false&q=false&category_id=136", "wagtail_admin_comments": []}	34	53	1	Friday Night Magic
171	f	2022-12-09 19:56:50.225718-05	\N	1	{"pk": 35, "path": "000100010007", "depth": 3, "numchild": 0, "translation_key": "c1085c9d-fa77-4019-8c11-7c5d776e8f16", "locale": 1, "latest_revision": null, "live": true, "has_unpublished_changes": false, "first_published_at": null, "last_published_at": null, "live_revision": null, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)", "draft_title": "Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)", "slug": "flesh-and-blood-tcg-classic-constructed-charity-tournament-pre-registration-dec-18th", "content_type": 53, "url_path": "/black-moon-games/flesh-and-blood-tcg-classic-constructed-charity-tournament-pre-registration-dec-18th/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": null, "alias_of": null, "name": "Flesh and Blood TCG Classic Constructed Charity To", "location": "Black Moon Games", "description": "Join us for our first Classic Constructed Flesh and Blood Tournament on Sunday December 18th!\\r\\n\\r\\n\\r\\n\\r\\nFormat: Classic Constructed https://fabtcg.com/resources/gameplay-formats/classic-constructed/\\r\\n\\r\\n\\r\\n\\r\\nTime: Starts promptly at 1PM after our Learn to Play session.\\r\\n\\r\\n\\r\\n\\r\\nEntry: $10. Limited to 16 players.\\r\\n\\r\\n\\r\\n\\r\\nPrizes: We are giving out a full Armory Kit for this event, so everyone regardless of final standings will walk away with some cool promos! Additionally, there will be store credit prizes based on attendance paid out to winning records.", "start_date": "2022-12-18", "start_time": "13:00:00", "end_date": "2022-12-18", "end_time": "18:00:00", "recurrence": "NONE", "store_link": "https://www.shop-black-moon.com/product/flesh-and-blood-tcg-classic-constructed-charity-tournament-pre-registration-dec-18th-/7959?cp=true&sa=false&sb", "wagtail_admin_comments": []}	35	53	1	Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)
172	f	2022-12-15 17:40:52.976178-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 141, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-06T23:23:10.445Z", "live_revision": 141, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-06T23:23:10.335Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">What&#x27;s new at Black Moon Games?</h3>", "hero_image": 32, "wagtail_admin_comments": []}	7	48	1	Landing Page
173	f	2022-12-15 17:44:21.102529-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 172, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:40:53.029Z", "live_revision": 172, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:40:52.976Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">What&#x27;s new at Black Moon Games?</h3><p data-block-key=\\"761sd\\">This is a place to describe any cool new happenings at the store. New products, promotions, general updates and ongoing news.</p>", "hero_image": 32, "wagtail_admin_comments": []}	7	48	1	Landing Page
174	f	2022-12-15 17:45:37.9903-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 173, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:44:21.174Z", "live_revision": 173, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:44:21.102Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">What&#x27;s new at Black Moon Games?</h3><p data-block-key=\\"761sd\\"></p><p data-block-key=\\"6m50r\\">This is a place to describe any cool new happenings at the store. New products, promotions, general updates and ongoing news.</p><p data-block-key=\\"18rr4\\"></p><p data-block-key=\\"qv3u\\">Attach a nice big image below to draw user&#x27;s attention.</p>", "hero_image": 32, "wagtail_admin_comments": []}	7	48	1	Landing Page
175	f	2022-12-15 17:47:14.315068-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 174, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:45:38.059Z", "live_revision": 174, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:45:37.990Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">This is a place to describe any cool new happenings at the store. New products, promotions, general updates and ongoing news.</h3><p data-block-key=\\"18rr4\\"></p><h4 data-block-key=\\"qv3u\\">Attach a nice big image below to draw user&#x27;s attention.</h4>", "hero_image": 32, "wagtail_admin_comments": []}	7	48	1	Landing Page
176	f	2022-12-15 17:55:21.432683-05	\N	1	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "12b7fa48-d321-4fb2-8ed1-ed061493c70f", "locale": 1, "latest_revision": 175, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-11-29T15:01:29.106Z", "last_published_at": "2022-12-15T17:47:14.403Z", "live_revision": 175, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "Landing Page", "draft_title": "Landing Page", "slug": "landing-page", "content_type": 48, "url_path": "/black-moon-games/landing-page/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T17:47:14.315Z", "alias_of": null, "hero_text": "<h1 data-block-key=\\"6xefn\\">Board</h1><h1 data-block-key=\\"55iul\\">Games</h1><h1 data-block-key=\\"6da72\\">Tabletop</h1><h1 data-block-key=\\"4id13\\">Games</h1><h1 data-block-key=\\"cjss4\\">Puzzles</h1><h1 data-block-key=\\"5s0db\\">TCGS</h1><p data-block-key=\\"2iouu\\"></p><p data-block-key=\\"1ig8a\\"></p>", "sub_text_one": "<h3 data-block-key=\\"1g5ik\\">Get it here.</h3>", "sub_text_two": "<h5 data-block-key=\\"3wibh\\">Shop online or pick up in store.</h5><h5 data-block-key=\\"3ejo7\\">Earn rewards for every purchase!</h5>", "whats_new_header": "<h2 data-block-key=\\"e21o0\\">What&#x27;s New?</h2>", "whats_new_text": "<h3 data-block-key=\\"klsvn\\">This is a place to describe any cool new happenings at the store. New products, promotions, general updates and ongoing news.</h3><h4 data-block-key=\\"qv3u\\">Attach a nice big image below to draw user&#x27;s attention.</h4>", "hero_image": 32, "hero_image_description": "Black Moon Games Logo", "wagtail_admin_comments": []}	7	48	1	Landing Page
177	f	2022-12-15 18:26:52.702908-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": null, "live": true, "has_unpublished_changes": false, "first_published_at": null, "last_published_at": null, "live_revision": null, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": null, "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "", "map_widget_url": "", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	36	54	1	About
178	f	2022-12-15 18:29:51.0799-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 177, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:26:52.773Z", "live_revision": 177, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:26:52.702Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "", "map_widget_url": "", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	36	54	1	About
179	f	2022-12-15 18:34:02.810211-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 178, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:29:51.145Z", "live_revision": 178, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:29:51.079Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	36	54	1	About
180	f	2022-12-15 18:34:47.401093-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 179, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:34:02.871Z", "live_revision": 179, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:34:02.810Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "", "about_text": "", "about_image": null, "wagtail_admin_comments": []}	36	54	1	About
181	f	2022-12-15 18:36:31.226323-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 180, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:34:47.444Z", "live_revision": 180, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:34:47.401Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\">       <br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	36	54	1	About
182	f	2022-12-15 18:41:21.210394-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 181, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:36:31.296Z", "live_revision": 181, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:36:31.226Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<p data-block-key=\\"9e0x2\\">Store Hours<br/><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	36	54	1	About
183	f	2022-12-15 18:42:11.300479-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 182, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:41:21.288Z", "live_revision": 182, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:41:21.210Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h3 data-block-key=\\"5n770\\">Black Moon Games</h3><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<h3 data-block-key=\\"9e0x2\\">Store Hours</h3><p data-block-key=\\"330io\\"><i>Monday 12PM - 7PM</i><br/><i>Tuesday 12PM - 7PM</i><br/><i>Wednesday 12PM - 7PM</i><br/><i>Thursday 12PM - 9PM</i><br/><i>Friday 12PM - 10PM</i><br/><i>Saturday 10AM - 8PM</i><br/><i>Sunday 12PM - 6PM</i><br/></p>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	36	54	1	About
184	f	2022-12-15 18:43:48.010077-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 183, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:42:11.364Z", "live_revision": 183, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:42:11.300Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	36	54	1	About
185	f	2022-12-15 18:46:35.200651-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 184, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:43:48.062Z", "live_revision": 184, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:43:48.010Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly </h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\">(603) 678-8643</p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"51f3d\\"></p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	36	54	1	About
186	f	2022-12-15 18:49:25.146723-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 185, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:46:35.285Z", "live_revision": 185, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:46:35.200Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><blockquote data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</blockquote><blockquote data-block-key=\\"bm12f\\">Lebanon, NH 03766</blockquote><blockquote data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></blockquote><blockquote data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</blockquote><p data-block-key=\\"51f3d\\"></p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	36	54	1	About
187	f	2022-12-15 18:50:06.535186-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 186, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:49:25.218Z", "live_revision": 186, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:49:25.146Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><ul><li data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</li><li data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</li><li data-block-key=\\"cnhdi\\">We hope to see you soon!</li><li data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></li></ul>", "about_image": 33, "wagtail_admin_comments": []}	36	54	1	About
188	f	2022-12-15 18:52:38.585081-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 187, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:50:06.596Z", "live_revision": 187, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:50:06.535Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<blockquote data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</blockquote><blockquote data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</blockquote><blockquote data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</blockquote><blockquote data-block-key=\\"cnhdi\\">We hope to see you soon!</blockquote><blockquote data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></blockquote>", "about_image": 33, "wagtail_admin_comments": []}	36	54	1	About
189	f	2022-12-15 18:53:21.945715-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 188, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:52:38.634Z", "live_revision": 188, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:52:38.585Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<p data-block-key=\\"cmoxl\\">We love games.</p>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><p data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</p><p data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</p><p data-block-key=\\"cnhdi\\">We hope to see you soon!</p><p data-block-key=\\"1hjnm\\"></p><hr/><p data-block-key=\\"d0hta\\"></p><p data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></p>", "about_image": 33, "wagtail_admin_comments": []}	36	54	1	About
190	f	2022-12-15 18:56:23.226075-05	\N	1	{"pk": 36, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "e648fc76-0f98-4c14-92d8-7d7c8871ad2a", "locale": 1, "latest_revision": 189, "live": true, "has_unpublished_changes": false, "first_published_at": "2022-12-15T18:26:52.773Z", "last_published_at": "2022-12-15T18:53:22.019Z", "live_revision": 189, "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "title": "About", "draft_title": "About", "slug": "about", "content_type": 54, "url_path": "/black-moon-games/about/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "latest_revision_created_at": "2022-12-15T18:53:21.945Z", "alias_of": null, "page_header": "<h1 data-block-key=\\"tb5sa\\">About Black Moon Games</h1>", "location": "<h2 data-block-key=\\"5n770\\">Black Moon Games</h2><h4 data-block-key=\\"c74s5\\">Lebanon&#x27;s Friendly</h4><h4 data-block-key=\\"ck8i\\">Local Game Store!</h4><p data-block-key=\\"fpj7r\\">2 Mascoma Street, #3</p><p data-block-key=\\"bm12f\\">Lebanon, NH 03766</p><p data-block-key=\\"btc8a\\"><i>(603) 678-8643</i></p><p data-block-key=\\"71nj7\\">blackmoonnh@gmail.com</p><p data-block-key=\\"fs2th\\"><i>Est. 2014</i></p>", "hours": "<h2 data-block-key=\\"9e0x2\\">Store Hours</h2><ul><li data-block-key=\\"330io\\">Monday 12PM - 7PM</li><li data-block-key=\\"dsgu2\\">Tuesday 12PM - 7PM</li><li data-block-key=\\"340g\\">Wednesday 12PM - 7PM</li><li data-block-key=\\"2t7qb\\">Thursday 12PM - 9PM</li><li data-block-key=\\"fnj7h\\">Friday 12PM - 10PM</li><li data-block-key=\\"8snti\\">Saturday 10AM - 8PM</li><li data-block-key=\\"evq3d\\">Sunday 12PM - 6PM</li></ul>", "map_widget_url": "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.320352496584!2d-72.25523368428799!3d43.641502861204586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb4b45603cbafbb%3A0x91af481f22d410cf!2sBlack%20Moon%20Games!5e0!3m2!1sen!2sus!4v167085546", "about_header": "<h3 data-block-key=\\"cmoxl\\">We love games.</h3>", "about_text": "<p data-block-key=\\"usqw3\\"><br/>Black Moon Games earns its namesake from my former group of fantasy Dungeons and Dragons mercenaries... The Black Moon Mercenary Guild!</p><p data-block-key=\\"3do4h\\">Now a prominent fixture of the community in New Hampshire\\u2019s Upper Valley, we offer the widest selection of board games, tabletop games, trading cards, and puzzles in the area.</p><p data-block-key=\\"fa3v9\\">You can find us directly underneath the Lebanon Village Market, next to Sunrise Buffet and the Laundry Spa. Just head towards the Lebanon village square and turn into one of the parking lots by the Market and head down the stairs.</p><p data-block-key=\\"cnhdi\\">We hope to see you soon!</p><p data-block-key=\\"1hjnm\\"></p><hr/><p data-block-key=\\"d0hta\\"></p><p data-block-key=\\"6jiau\\"><i>-- Tony Vandenberg, Owner</i></p>", "about_image": 33, "wagtail_admin_comments": []}	36	54	1	About
\.


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
3	https://gregarious-valkyrie-3805b8.netlify.app	80	t	4	Black Moon Games
\.


--
-- Data for Name: wagtailcore_task; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_task (id, name, active, content_type_id) FROM stdin;
1	Moderators approval	t	4
\.


--
-- Data for Name: wagtailcore_taskstate; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_taskstate (id, status, started_at, finished_at, content_type_id, task_id, workflow_state_id, finished_by_id, comment, page_revision_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_workflow; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_workflow (id, name, active) FROM stdin;
1	Moderators approval	t
\.


--
-- Data for Name: wagtailcore_workflowpage; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_workflowpage (page_id, workflow_id) FROM stdin;
1	1
\.


--
-- Data for Name: wagtailcore_workflowstate; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_workflowstate (id, status, created_at, current_task_state_id, page_id, requested_by_id, workflow_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_workflowtask; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailcore_workflowtask (id, sort_order, task_id, workflow_id) FROM stdin;
1	0	1	1
\.


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id, file_size, file_hash) FROM stdin;
\.


--
-- Data for Name: wagtaildocs_uploadeddocument; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtaildocs_uploadeddocument (id, file, uploaded_by_user_id) FROM stdin;
\.


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, width, height, last_updated, hash, thumbnail_url, cache_until) FROM stdin;
\.


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailforms_formsubmission (id, submit_time, page_id, form_data) FROM stdin;
\.


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id, file_hash) FROM stdin;
21	caticon	original_images/caticon.jpg	400	400	2022-11-29 01:46:08.161343-05	\N	\N	\N	\N	1	12330	1	41ed0615d03a4ae02a30d825b0d6b2909fac13e9
22	logo	original_images/Blackmoon_Alt3_300.png	1369	941	2022-11-29 13:20:33.605986-05	\N	\N	\N	\N	1	243339	1	36a07718e4a02356a362f621d7871abc74253dfc
23	brain	original_images/brain.jpg	1024	768	2022-11-29 13:53:42.609134-05	\N	\N	\N	\N	1	60154	1	b270d080bbb8410aa16b357da15d64727641d2b8
24	d20atom	original_images/d20atom.png	62	60	2022-11-29 14:28:38.265708-05	\N	\N	\N	\N	1	5545	1	888d1e1ee6da1c2e42b33d3b5e0e2267bb367098
25	bmg-logo-100	original_images/bmg-logo-100.png	100	69	2022-11-30 16:41:50.115518-05	\N	\N	\N	\N	1	4936	1	473d6cf84e8b7da3375e496de3abc140fea355fc
26	heart	original_images/heart.jpg	213	236	2022-12-05 14:53:49.121297-05	\N	\N	\N	\N	1	5941	1	bda698c90953d46dd85ebd6a6f7b7322f81273f1
27	bicycle	original_images/bicycle.jpg	960	720	2022-12-05 14:54:36.479403-05	\N	\N	\N	\N	1	142907	1	6cc560bdac27ad858ed5e7993da56e7401c06b25
28	mtg-logo	original_images/mtg-logo.png	100	29	2022-12-06 14:33:33.719501-05	\N	\N	\N	\N	1	3256	1	10414315f1360a318bed1fbab1cd1376ff31de0a
29	Logo-Magic-The-Gathering	original_images/Logo-Magic-The-Gathering.jpg	800	500	2022-12-06 14:43:30.41677-05	\N	\N	\N	\N	1	10344	1	2039942f581360cdc1f619d07f4d0fdcc4e0d849
30	pokemon logo	original_images/pokemonlogo.png	314	161	2022-12-06 15:37:37.573648-05	\N	\N	\N	\N	1	10753	1	ea69f824b0e0d541901ccd2e79ddaa9f05619c75
31	flesh and blood logo	original_images/fleshandbloodlogo.jpeg	310	163	2022-12-06 15:38:47.832911-05	\N	\N	\N	\N	1	13079	1	e45011a618e686b4a66a71f96a060f46b245c31f
32	bmg-logo-512	original_images/bmg-logo-512.png	512	352	2022-12-06 23:23:06.92169-05	\N	\N	\N	\N	1	43782	1	a6a6c739e6a0c375dad5e678ef9b1413360cedb8
33	tv_128	original_images/tv_128.png	128	128	2022-12-15 18:36:27.381573-05	\N	\N	\N	\N	1	38149	1	09584c1c6c1cda16272c06bfae6ddb0686b5acb6
\.


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, filter_spec, image_id) FROM stdin;
65	images/caticon.max-165x165.jpg	165	165		max-165x165	21
66	images/caticon.2e16d0ba.fill-200x200.jpg	200	200	2e16d0ba	fill-200x200	21
67	images/Blackmoon_Alt3_300.max-165x165.png	165	113		max-165x165	22
68	images/Blackmoon_Alt3_300.2e16d0ba.fill-200x200.png	200	200	2e16d0ba	fill-200x200	22
69	images/Blackmoon_Alt3_300.2e16d0ba.fill-100x100.png	100	100	2e16d0ba	fill-100x100	22
70	images/Blackmoon_Alt3_300.2e16d0ba.fill-24x24.png	24	24	2e16d0ba	fill-24x24	22
71	images/brain.max-165x165.jpg	165	123		max-165x165	23
72	images/d20atom.max-165x165.png	62	60		max-165x165	24
73	images/d20atom.2e16d0ba.fill-48x48.png	48	48	2e16d0ba	fill-48x48	24
74	images/Blackmoon_Alt3_300.2e16d0ba.fill-48x48.png	48	48	2e16d0ba	fill-48x48	22
75	images/bmg-logo-100.max-165x165.png	100	69		max-165x165	25
76	images/bmg-logo-100.2e16d0ba.fill-48x48.png	48	48	2e16d0ba	fill-48x48	25
77	images/d20atom.2e16d0ba.fill-100x100.png	60	60	2e16d0ba	fill-100x100	24
78	images/heart.max-165x165.jpg	148	165		max-165x165	26
79	images/caticon.original.jpg	400	400		original	21
80	images/caticon.max-800x600.jpg	400	400		max-800x600	21
81	images/bicycle.max-165x165.jpg	165	123		max-165x165	27
82	images/caticon.2e16d0ba.fill-128x128.jpg	128	128	2e16d0ba	fill-128x128	21
83	images/heart.2e16d0ba.fill-128x128.jpg	128	128	2e16d0ba	fill-128x128	26
84	images/bicycle.2e16d0ba.fill-128x128.jpg	128	128	2e16d0ba	fill-128x128	27
85	images/d20atom.2e16d0ba.fill-128x128.png	60	60	2e16d0ba	fill-128x128	24
86	images/d20atom.width-1000.png	62	60		width-1000	24
87	images/heart.width-1000.jpg	213	236		width-1000	26
88	images/caticon.width-1000.jpg	400	400		width-1000	21
89	images/brain.width-1000.jpg	1000	750		width-1000	23
90	images/brain.2e16d0ba.fill-128x128.jpg	128	128	2e16d0ba	fill-128x128	23
91	images/mtg-logo.max-165x165.png	100	29		max-165x165	28
92	images/mtg-logo.2e16d0ba.fill-128x128.png	30	29	2e16d0ba	fill-128x128	28
93	images/mtg-logo.2e16d0ba.fill-256x256.png	30	29	2e16d0ba	fill-256x256	28
94	images/Logo-Magic-The-Gathering.max-165x165.jpg	165	103		max-165x165	29
95	images/Logo-Magic-The-Gathering.2e16d0ba.fill-256x256.jpg	256	256	2e16d0ba	fill-256x256	29
96	images/pokemonlogo.max-165x165.png	165	84		max-165x165	30
97	images/fleshandbloodlogo.max-165x165.jpg	165	86		max-165x165	31
98	images/Logo-Magic-The-Gathering.2e16d0ba.fill-128x128.jpg	128	128	2e16d0ba	fill-128x128	29
99	images/pokemonlogo.2e16d0ba.fill-128x128.png	128	128	2e16d0ba	fill-128x128	30
100	images/fleshandbloodlogo.2e16d0ba.fill-128x128.jpg	128	128	2e16d0ba	fill-128x128	31
101	images/pokemonlogo.2e16d0ba.fill-256x256.png	162	161	2e16d0ba	fill-256x256	30
102	images/fleshandbloodlogo.2e16d0ba.fill-256x256.jpg	164	163	2e16d0ba	fill-256x256	31
103	images/pokemonlogo.2e16d0ba.fill-64x64.png	64	64	2e16d0ba	fill-64x64	30
104	images/pokemonlogo.2e16d0ba.fill-512x512.png	162	161	2e16d0ba	fill-512x512	30
105	images/d20atom.2e16d0ba.fill-200x200.png	60	60	2e16d0ba	fill-200x200	24
106	images/Blackmoon_Alt3_300.2e16d0ba.fill-256x256.png	256	256	2e16d0ba	fill-256x256	22
107	images/Blackmoon_Alt3_300.2e16d0ba.fill-512x512.png	512	512	2e16d0ba	fill-512x512	22
108	images/Blackmoon_Alt3_300.2e16d0ba.fill-1024x1024.png	941	941	2e16d0ba	fill-1024x1024	22
109	images/Blackmoon_Alt3_300.2e16d0ba.fill-128x128.png	128	128	2e16d0ba	fill-128x128	22
110	images/bmg-logo-512.max-165x165.png	165	113		max-165x165	32
111	images/bmg-logo-512.2e16d0ba.fill-128x128.png	128	128	2e16d0ba	fill-128x128	32
112	images/bmg-logo-512.2e16d0ba.fill-512x512.png	352	352	2e16d0ba	fill-512x512	32
113	images/bmg-logo-512.2e16d0ba.fill-256x256.png	256	256	2e16d0ba	fill-256x256	32
114	images/bicycle.width-1000.jpg	960	720		width-1000	27
115	images/tv_128.max-165x165.png	128	128		max-165x165	33
116	images/tv_128.2e16d0ba.fill-128x128.png	128	128	2e16d0ba	fill-128x128	33
\.


--
-- Data for Name: wagtailimages_uploadedimage; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailimages_uploadedimage (id, file, uploaded_by_user_id) FROM stdin;
\.


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id, automatically_created, created_at, redirect_page_route_path) FROM stdin;
1	/navbar/landing-page	t		7	3	t	2022-11-29 15:02:24.292124-05	
2	/announcements	t		8	3	t	2022-12-02 15:52:48.48939-05	
\.


--
-- Data for Name: wagtailsearch_indexentry; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailsearch_indexentry (id, object_id, title_norm, content_type_id, autocomplete, body, title) FROM stdin;
1	3	0.7916667	2	Landing Page		Landing Page
9	1	2	1	Root		Root
11	4	0.609375	46	Black Moon Games		Black Moon Games
24	21	0.96428573	6	caticon		caticon
25	22	0.5	6	logo logo	logo	logo
26	23	1.2	6	brain		brain
27	24	0.877551	6	d20atom		d20atom
29	6	1.2708334	47	Navbar		Navbar
30	7	0.6759259	48	Landing Page		Landing Page
31	25	0.7083333	6	bmg-logo-100		bmg-logo-100
32	8	0.6853147	49	Banner		Banner
33	26	1.6	6	heart		heart
34	27	1.1318681	6	bicycle		bicycle
35	9	0.6845238	50	New Products		New Products
36	28	1.025	6	mtg-logo magic the gathering logo	magic the gathering logo	mtg-logo
37	10	0.65384614	52	TCGS		TCGS
38	29	0.39215687	6	Logo-Magic-The-Gathering magic the gathering logo	magic the gathering logo	Logo-Magic-The-Gathering
39	30	0.7962963	6	pokemon logo pokemon	pokemon	pokemon logo
40	31	0.50526315	6	flesh and blood logo flesh and blood	flesh and blood	flesh and blood logo
41	32	0.8125	6	bmg-logo-512		bmg-logo-512
65	34	0.56349206	53	Friday Night Magic		Friday Night Magic
66	35	0.15673982	53	Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)		Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)
67	36	2.652174	54	About		About
68	33	2.1597223	6	tv_128 game store owner	game store owner	tv_128
\.


--
-- Data for Name: wagtailsearch_indexentry_fts; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailsearch_indexentry_fts (autocomplete, body, title) FROM stdin;
Landing Page		Landing Page
Root		Root
Black Moon Games		Black Moon Games
caticon		caticon
logo logo	logo	logo
brain		brain
d20atom		d20atom
Navbar		Navbar
Landing Page		Landing Page
bmg-logo-100		bmg-logo-100
Banner		Banner
heart		heart
bicycle		bicycle
New Products		New Products
mtg-logo magic the gathering logo	magic the gathering logo	mtg-logo
TCGS		TCGS
Logo-Magic-The-Gathering magic the gathering logo	magic the gathering logo	Logo-Magic-The-Gathering
pokemon logo pokemon	pokemon	pokemon logo
flesh and blood logo flesh and blood	flesh and blood	flesh and blood logo
bmg-logo-512		bmg-logo-512
Friday Night Magic		Friday Night Magic
Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)		Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)
About		About
tv_128 game store owner	game store owner	tv_128
\.


--
-- Data for Name: wagtailsearch_indexentry_fts_config; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailsearch_indexentry_fts_config (k, v) FROM stdin;
version	4
\.


--
-- Data for Name: wagtailsearch_indexentry_fts_content; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailsearch_indexentry_fts_content (id, c0, c1, c2) FROM stdin;
1	Landing Page		Landing Page
9	Root		Root
11	Black Moon Games		Black Moon Games
24	caticon		caticon
25	logo logo	logo	logo
26	brain		brain
27	d20atom		d20atom
29	Navbar		Navbar
30	Landing Page		Landing Page
31	bmg-logo-100		bmg-logo-100
32	Banner		Banner
33	heart		heart
34	bicycle		bicycle
35	New Products		New Products
36	mtg-logo magic the gathering logo	magic the gathering logo	mtg-logo
37	TCGS		TCGS
38	Logo-Magic-The-Gathering magic the gathering logo	magic the gathering logo	Logo-Magic-The-Gathering
39	pokemon logo pokemon	pokemon	pokemon logo
40	flesh and blood logo flesh and blood	flesh and blood	flesh and blood logo
41	bmg-logo-512		bmg-logo-512
65	Friday Night Magic		Friday Night Magic
66	Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)		Flesh and Blood TCG Classic Constructed Charity Tournament Pre-Registration (Dec. 18th)
67	About		About
68	tv_128 game store owner	game store owner	tv_128
\.


--
-- Data for Name: wagtailsearch_indexentry_fts_data; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailsearch_indexentry_fts_data (id, block) FROM stdin;
1	\\x18471037
10	\\x000000000209847500091101010101010201010301010401010501010601010701010801010000
137438953473	\\x00000011063061626f757443090201020204
274877906945	\\x00000011063061626f757443090201020204
412316860417	\\x00000011063061626f757443090201020204
549755813889	\\x00000011063061626f757443090201020204
687194767361	\\x00000011063061626f757443090201020204
824633720833	\\x00000011063061626f757443090201020204
962072674305	\\x00000011063061626f757443090201020204
1099511627777	\\x00000011063061626f757443090201020204
2336462209025	\\x000002bb04303130301f080401020402023238440803010203020338746842080d01020d0103353132290804010204010561626f757443080201020202026e64281003060101030102031a0803010203010662616e6e65722008020102020206696379636c6522080201020202046c61636b0b080201020203036f6f64281004060101040102041a080401020402026d671f08020102020a080201020202047261696e1a0802010202010763617469636f6e180802010202020668617269747942080801020802066c6173736963420806010206020a6f6e7374727563746564420807010207010764323061746f6d1b08020102020202656342080c01020c0105666c657368281002060101020102021a080201020202057269646179410802010202010467616d654408040101020501730b0804010204030774686572696e67240806010104021005050101040102050105686561727421080201020201076c616e64696e670108020102021d080201020202036f676f19100203010102010202060803010203051003060101050102030210020901010501020201080301020301080501020501080301020301056d61676963240804010102021003050101020102031b080401020402036f6f6e0b08030102030202746724080201020201066e61766261721d08020102020202657723080201020202046967687441080301020301056f776e65724408060101040104706167650108030102031d080301020302066f6b656d6f6e271002040101020102020202726542080a01020a03066f6475637473230803010203010c726567697374726174696f6e42080b01020b02036f6f74090802010202010573746f72654408050101030103746367420805010205040173250802010202020268652408050101030210040501010301020402096f75726e616d656e74420809010209020176440802010202040b0a0b0b0d140e0e0c15100c0f0e0e120f0a170d0c09190d153b1d0b0a0e0a0c0d12120a0e140b0d0b091411
\.


--
-- Data for Name: wagtailsearch_indexentry_fts_docsize; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailsearch_indexentry_fts_docsize (id, sz) FROM stdin;
1	\\x020002
9	\\x010001
11	\\x030003
24	\\x010001
25	\\x020101
26	\\x010001
27	\\x010001
29	\\x010001
30	\\x020002
31	\\x030003
32	\\x010001
33	\\x010001
34	\\x010001
35	\\x020002
36	\\x060402
37	\\x010001
38	\\x080404
39	\\x030102
40	\\x070304
41	\\x030003
65	\\x030003
66	\\x0c000c
67	\\x010001
68	\\x050302
\.


--
-- Data for Name: wagtailsearch_indexentry_fts_idx; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailsearch_indexentry_fts_idx (segid, term, pgno) FROM stdin;
1		2
2		2
3		2
4		2
5		2
6		2
7		2
8		2
17		2
\.


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: kyle
--

COPY public.wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language, current_time_zone, avatar, updated_comments_notifications, dismissibles) FROM stdin;
1	t	t	t	1				t	{"whats_new_in_wagtail_version_4": true, "help": true, "whats-new-in-wagtail-4.1": true, "editor-guide": true}
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 18, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 219, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 54, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 238, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 5, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 6, true);


--
-- Name: wagtail_headless_preview_pagepreview_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtail_headless_preview_pagepreview_id_seq', 118, true);


--
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailadmin_admin_id_seq', 1, true);


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_collection_id_seq', 1, true);


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_groups_id_seq', 1, true);


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_id_seq', 1, true);


--
-- Name: wagtailcore_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_comment_id_seq', 1, true);


--
-- Name: wagtailcore_commentreply_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_commentreply_id_seq', 1, true);


--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_groupapprovaltask_groups_id_seq', 1, true);


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_groupcollectionpermission_id_seq', 12, true);


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_grouppagepermission_id_seq', 7, true);


--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_locale_id_seq', 1, true);


--
-- Name: wagtailcore_modellogentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_modellogentry_id_seq', 11, true);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 36, true);


--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_pagelogentry_id_seq', 400, true);


--
-- Name: wagtailcore_pagesubscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_pagesubscription_id_seq', 34, true);


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 1, true);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 1, true);


--
-- Name: wagtailcore_referenceindex_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_referenceindex_id_seq', 281, true);


--
-- Name: wagtailcore_revision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_revision_id_seq', 190, true);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 3, true);


--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_task_id_seq', 1, true);


--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_taskstate_id_seq', 1, true);


--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_workflow_id_seq', 1, true);


--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_workflowstate_id_seq', 1, true);


--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailcore_workflowtask_id_seq', 1, true);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, true);


--
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtaildocs_uploadeddocument_id_seq', 1, true);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, true);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 1, true);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 33, true);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 116, true);


--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailimages_uploadedimage_id_seq', 1, true);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 2, true);


--
-- Name: wagtailsearch_indexentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailsearch_indexentry_id_seq', 68, true);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailsearch_query_id_seq', 1, true);


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailsearch_querydailyhits_id_seq', 1, true);


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyle
--

SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 1, true);


--
-- Name: django_migrations idx_28295_django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT idx_28295_django_migrations_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions idx_28304_auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT idx_28304_auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups idx_28310_auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT idx_28310_auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions idx_28316_auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT idx_28316_auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log idx_28322_django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT idx_28322_django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type idx_28331_django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT idx_28331_django_content_type_pkey PRIMARY KEY (id);


--
-- Name: auth_permission idx_28340_auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT idx_28340_auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_group idx_28349_auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT idx_28349_auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_user idx_28358_auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT idx_28358_auth_user_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission idx_28367_wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT idx_28367_wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection idx_28376_wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT idx_28376_wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupcollectionpermission idx_28385_wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT idx_28385_wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_groups idx_28391_wagtailcore_pageviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT idx_28391_wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction idx_28397_wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT idx_28397_wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction idx_28406_wagtailcore_collectionviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT idx_28406_wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction_groups idx_28415_wagtailcore_collectionviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT idx_28415_wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: django_session idx_28419_sqlite_autoindex_django_session_1; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT idx_28419_sqlite_autoindex_django_session_1 PRIMARY KEY (session_key);


--
-- Name: taggit_taggeditem idx_28427_taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT idx_28427_taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag idx_28433_taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT idx_28433_taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: wagtailadmin_admin idx_28442_wagtailadmin_admin_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailadmin_admin
    ADD CONSTRAINT idx_28442_wagtailadmin_admin_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site idx_28448_wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT idx_28448_wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_task idx_28457_wagtailcore_task_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT idx_28457_wagtailcore_task_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflow idx_28466_wagtailcore_workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflow
    ADD CONSTRAINT idx_28466_wagtailcore_workflow_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflowstate idx_28475_wagtailcore_workflowstate_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT idx_28475_wagtailcore_workflowstate_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflowpage idx_28482_wagtailcore_workflowpage_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT idx_28482_wagtailcore_workflowpage_pkey PRIMARY KEY (page_id);


--
-- Name: wagtailcore_workflowtask idx_28487_wagtailcore_workflowtask_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT idx_28487_wagtailcore_workflowtask_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupapprovaltask idx_28491_wagtailcore_groupapprovaltask_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT idx_28491_wagtailcore_groupapprovaltask_pkey PRIMARY KEY (task_ptr_id);


--
-- Name: wagtailcore_groupapprovaltask_groups idx_28496_wagtailcore_groupapprovaltask_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT idx_28496_wagtailcore_groupapprovaltask_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_locale idx_28502_wagtailcore_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_locale
    ADD CONSTRAINT idx_28502_wagtailcore_locale_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page idx_28511_wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT idx_28511_wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_commentreply idx_28520_wagtailcore_commentreply_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_commentreply
    ADD CONSTRAINT idx_28520_wagtailcore_commentreply_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagesubscription idx_28529_wagtailcore_pagesubscription_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pagesubscription
    ADD CONSTRAINT idx_28529_wagtailcore_pagesubscription_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_modellogentry idx_28535_wagtailcore_modellogentry_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_modellogentry
    ADD CONSTRAINT idx_28535_wagtailcore_modellogentry_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagelogentry idx_28544_wagtailcore_pagelogentry_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT idx_28544_wagtailcore_pagelogentry_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_comment idx_28553_wagtailcore_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT idx_28553_wagtailcore_comment_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_taskstate idx_28562_wagtailcore_taskstate_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT idx_28562_wagtailcore_taskstate_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_revision idx_28571_wagtailcore_revision_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_revision
    ADD CONSTRAINT idx_28571_wagtailcore_revision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_referenceindex idx_28580_wagtailcore_referenceindex_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_referenceindex
    ADD CONSTRAINT idx_28580_wagtailcore_referenceindex_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_document idx_28589_wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT idx_28589_wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_uploadeddocument idx_28598_wagtaildocs_uploadeddocument_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT idx_28598_wagtaildocs_uploadeddocument_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed idx_28607_wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT idx_28607_wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailforms_formsubmission idx_28616_wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT idx_28616_wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition idx_28625_wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT idx_28625_wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_uploadedimage idx_28634_wagtailimages_uploadedimage_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT idx_28634_wagtailimages_uploadedimage_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_image idx_28643_wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT idx_28643_wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect idx_28652_wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT idx_28652_wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query idx_28661_wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT idx_28661_wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits idx_28670_wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT idx_28670_wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_indexentry idx_28676_wagtailsearch_indexentry_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_indexentry
    ADD CONSTRAINT idx_28676_wagtailsearch_indexentry_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_indexentry_fts_data idx_28689_wagtailsearch_indexentry_fts_data_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_indexentry_fts_data
    ADD CONSTRAINT idx_28689_wagtailsearch_indexentry_fts_data_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_indexentry_fts_idx idx_28695_sqlite_autoindex_wagtailsearch_indexentry_fts_idx_1; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_indexentry_fts_idx
    ADD CONSTRAINT idx_28695_sqlite_autoindex_wagtailsearch_indexentry_fts_idx_1 PRIMARY KEY (segid, term);


--
-- Name: wagtailsearch_indexentry_fts_content idx_28701_wagtailsearch_indexentry_fts_content_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_indexentry_fts_content
    ADD CONSTRAINT idx_28701_wagtailsearch_indexentry_fts_content_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_indexentry_fts_docsize idx_28707_wagtailsearch_indexentry_fts_docsize_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_indexentry_fts_docsize
    ADD CONSTRAINT idx_28707_wagtailsearch_indexentry_fts_docsize_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_indexentry_fts_config idx_28713_sqlite_autoindex_wagtailsearch_indexentry_fts_config_; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_indexentry_fts_config
    ADD CONSTRAINT idx_28713_sqlite_autoindex_wagtailsearch_indexentry_fts_config_ PRIMARY KEY (k);


--
-- Name: wagtailusers_userprofile idx_28721_wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT idx_28721_wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: home_homepage idx_28728_home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT idx_28728_home_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: navbar_navbar idx_28734_navbar_navbar_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.navbar_navbar
    ADD CONSTRAINT idx_28734_navbar_navbar_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: banner_banner idx_28740_banner_banner_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.banner_banner
    ADD CONSTRAINT idx_28740_banner_banner_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: products_newproducts idx_28746_products_newproducts_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.products_newproducts
    ADD CONSTRAINT idx_28746_products_newproducts_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: wagtail_headless_preview_pagepreview idx_28754_wagtail_headless_preview_pagepreview_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtail_headless_preview_pagepreview
    ADD CONSTRAINT idx_28754_wagtail_headless_preview_pagepreview_pkey PRIMARY KEY (id);


--
-- Name: singles_singlespage idx_28761_singles_singlespage_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.singles_singlespage
    ADD CONSTRAINT idx_28761_singles_singlespage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: events_event idx_28767_events_event_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.events_event
    ADD CONSTRAINT idx_28767_events_event_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: landing_landingpage idx_28773_landing_landingpage_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.landing_landingpage
    ADD CONSTRAINT idx_28773_landing_landingpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: about_aboutpage idx_28779_about_aboutpage_pkey; Type: CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.about_aboutpage
    ADD CONSTRAINT idx_28779_about_aboutpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: idx_28304_auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28304_auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: idx_28304_auth_group_permissions_group_id_permission_id_0cd325b; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28304_auth_group_permissions_group_id_permission_id_0cd325b ON public.auth_group_permissions USING btree (group_id, permission_id);


--
-- Name: idx_28304_auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28304_auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: idx_28310_auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28310_auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: idx_28310_auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28310_auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: idx_28310_auth_user_groups_user_id_group_id_94350c0c_uniq; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28310_auth_user_groups_user_id_group_id_94350c0c_uniq ON public.auth_user_groups USING btree (user_id, group_id);


--
-- Name: idx_28316_auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28316_auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: idx_28316_auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28316_auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: idx_28316_auth_user_user_permissions_user_id_permission_id_14a6; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28316_auth_user_user_permissions_user_id_permission_id_14a6 ON public.auth_user_user_permissions USING btree (user_id, permission_id);


--
-- Name: idx_28322_django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28322_django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: idx_28322_django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28322_django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: idx_28331_django_content_type_app_label_model_76bd3d3b_uniq; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28331_django_content_type_app_label_model_76bd3d3b_uniq ON public.django_content_type USING btree (app_label, model);


--
-- Name: idx_28340_auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28340_auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: idx_28340_auth_permission_content_type_id_codename_01ab375a_uni; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28340_auth_permission_content_type_id_codename_01ab375a_uni ON public.auth_permission USING btree (content_type_id, codename);


--
-- Name: idx_28349_sqlite_autoindex_auth_group_1; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28349_sqlite_autoindex_auth_group_1 ON public.auth_group USING btree (name);


--
-- Name: idx_28358_sqlite_autoindex_auth_user_1; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28358_sqlite_autoindex_auth_user_1 ON public.auth_user USING btree (username);


--
-- Name: idx_28367_wagtailcore_grouppagepermission_group_id_fc07e671; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28367_wagtailcore_grouppagepermission_group_id_fc07e671 ON public.wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: idx_28367_wagtailcore_grouppagepermission_group_id_page_id_perm; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28367_wagtailcore_grouppagepermission_group_id_page_id_perm ON public.wagtailcore_grouppagepermission USING btree (group_id, page_id, permission_type);


--
-- Name: idx_28367_wagtailcore_grouppagepermission_page_id_710b114a; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28367_wagtailcore_grouppagepermission_page_id_710b114a ON public.wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: idx_28376_sqlite_autoindex_wagtailcore_collection_1; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28376_sqlite_autoindex_wagtailcore_collection_1 ON public.wagtailcore_collection USING btree (path);


--
-- Name: idx_28385_wagtailcore_groupcollectionpermission_collection_id_5; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28385_wagtailcore_groupcollectionpermission_collection_id_5 ON public.wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: idx_28385_wagtailcore_groupcollectionpermission_group_id_05d614; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28385_wagtailcore_groupcollectionpermission_group_id_05d614 ON public.wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: idx_28385_wagtailcore_groupcollectionpermission_group_id_collec; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28385_wagtailcore_groupcollectionpermission_group_id_collec ON public.wagtailcore_groupcollectionpermission USING btree (group_id, collection_id, permission_id);


--
-- Name: idx_28385_wagtailcore_groupcollectionpermission_permission_id_1; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28385_wagtailcore_groupcollectionpermission_permission_id_1 ON public.wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: idx_28391_wagtailcore_pageviewrestriction_groups_group_id_6460f; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28391_wagtailcore_pageviewrestriction_groups_group_id_6460f ON public.wagtailcore_pageviewrestriction_groups USING btree (group_id);


--
-- Name: idx_28391_wagtailcore_pageviewrestriction_groups_pageviewrestri; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28391_wagtailcore_pageviewrestriction_groups_pageviewrestri ON public.wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id, group_id);


--
-- Name: idx_28397_wagtailcore_pageviewrestriction_page_id_15a8bea6; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28397_wagtailcore_pageviewrestriction_page_id_15a8bea6 ON public.wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: idx_28406_wagtailcore_collectionviewrestriction_collection_id_7; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28406_wagtailcore_collectionviewrestriction_collection_id_7 ON public.wagtailcore_collectionviewrestriction USING btree (collection_id);


--
-- Name: idx_28415_wagtailcore_collectionviewrestriction_groups_collecti; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28415_wagtailcore_collectionviewrestriction_groups_collecti ON public.wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);


--
-- Name: idx_28415_wagtailcore_collectionviewrestriction_groups_group_id; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28415_wagtailcore_collectionviewrestriction_groups_group_id ON public.wagtailcore_collectionviewrestriction_groups USING btree (group_id);


--
-- Name: idx_28419_django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28419_django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: idx_28427_taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28427_taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: idx_28427_taggit_taggeditem_content_type_id_object_id_196cc965_; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28427_taggit_taggeditem_content_type_id_object_id_196cc965_ ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: idx_28427_taggit_taggeditem_content_type_id_object_id_tag_id_4b; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28427_taggit_taggeditem_content_type_id_object_id_tag_id_4b ON public.taggit_taggeditem USING btree (content_type_id, object_id, tag_id);


--
-- Name: idx_28427_taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28427_taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: idx_28427_taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28427_taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: idx_28433_sqlite_autoindex_taggit_tag_1; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28433_sqlite_autoindex_taggit_tag_1 ON public.taggit_tag USING btree (name);


--
-- Name: idx_28433_sqlite_autoindex_taggit_tag_2; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28433_sqlite_autoindex_taggit_tag_2 ON public.taggit_tag USING btree (slug);


--
-- Name: idx_28448_wagtailcore_site_hostname_96b20b46; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28448_wagtailcore_site_hostname_96b20b46 ON public.wagtailcore_site USING btree (hostname);


--
-- Name: idx_28448_wagtailcore_site_hostname_port_2c626d70_uniq; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28448_wagtailcore_site_hostname_port_2c626d70_uniq ON public.wagtailcore_site USING btree (hostname, port);


--
-- Name: idx_28448_wagtailcore_site_root_page_id_e02fb95c; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28448_wagtailcore_site_root_page_id_e02fb95c ON public.wagtailcore_site USING btree (root_page_id);


--
-- Name: idx_28457_wagtailcore_task_content_type_id_249ab8ba; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28457_wagtailcore_task_content_type_id_249ab8ba ON public.wagtailcore_task USING btree (content_type_id);


--
-- Name: idx_28475_sqlite_autoindex_wagtailcore_workflowstate_1; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28475_sqlite_autoindex_wagtailcore_workflowstate_1 ON public.wagtailcore_workflowstate USING btree (current_task_state_id);


--
-- Name: idx_28475_unique_in_progress_workflow; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28475_unique_in_progress_workflow ON public.wagtailcore_workflowstate USING btree (page_id);


--
-- Name: idx_28475_wagtailcore_workflowstate_page_id_6c962862; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28475_wagtailcore_workflowstate_page_id_6c962862 ON public.wagtailcore_workflowstate USING btree (page_id);


--
-- Name: idx_28475_wagtailcore_workflowstate_requested_by_id_4090bca3; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28475_wagtailcore_workflowstate_requested_by_id_4090bca3 ON public.wagtailcore_workflowstate USING btree (requested_by_id);


--
-- Name: idx_28475_wagtailcore_workflowstate_workflow_id_1f18378f; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28475_wagtailcore_workflowstate_workflow_id_1f18378f ON public.wagtailcore_workflowstate USING btree (workflow_id);


--
-- Name: idx_28482_wagtailcore_workflowpage_workflow_id_56f56ff6; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28482_wagtailcore_workflowpage_workflow_id_56f56ff6 ON public.wagtailcore_workflowpage USING btree (workflow_id);


--
-- Name: idx_28487_wagtailcore_workflowtask_task_id_ce7716fe; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28487_wagtailcore_workflowtask_task_id_ce7716fe ON public.wagtailcore_workflowtask USING btree (task_id);


--
-- Name: idx_28487_wagtailcore_workflowtask_workflow_id_b9717175; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28487_wagtailcore_workflowtask_workflow_id_b9717175 ON public.wagtailcore_workflowtask USING btree (workflow_id);


--
-- Name: idx_28487_wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28487_wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b ON public.wagtailcore_workflowtask USING btree (workflow_id, task_id);


--
-- Name: idx_28496_wagtailcore_groupapprovaltask_groups_group_id_2e64b61; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28496_wagtailcore_groupapprovaltask_groups_group_id_2e64b61 ON public.wagtailcore_groupapprovaltask_groups USING btree (group_id);


--
-- Name: idx_28496_wagtailcore_groupapprovaltask_groups_groupapprovaltas; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28496_wagtailcore_groupapprovaltask_groups_groupapprovaltas ON public.wagtailcore_groupapprovaltask_groups USING btree (groupapprovaltask_id, group_id);


--
-- Name: idx_28502_sqlite_autoindex_wagtailcore_locale_1; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28502_sqlite_autoindex_wagtailcore_locale_1 ON public.wagtailcore_locale USING btree (language_code);


--
-- Name: idx_28511_sqlite_autoindex_wagtailcore_page_1; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28511_sqlite_autoindex_wagtailcore_page_1 ON public.wagtailcore_page USING btree (path);


--
-- Name: idx_28511_wagtailcore_page_alias_of_id_12945502; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28511_wagtailcore_page_alias_of_id_12945502 ON public.wagtailcore_page USING btree (alias_of_id);


--
-- Name: idx_28511_wagtailcore_page_content_type_id_c28424df; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28511_wagtailcore_page_content_type_id_c28424df ON public.wagtailcore_page USING btree (content_type_id);


--
-- Name: idx_28511_wagtailcore_page_first_published_at_2b5dd637; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28511_wagtailcore_page_first_published_at_2b5dd637 ON public.wagtailcore_page USING btree (first_published_at);


--
-- Name: idx_28511_wagtailcore_page_latest_revision_id_e60fef51; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28511_wagtailcore_page_latest_revision_id_e60fef51 ON public.wagtailcore_page USING btree (latest_revision_id);


--
-- Name: idx_28511_wagtailcore_page_live_revision_id_930bd822; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28511_wagtailcore_page_live_revision_id_930bd822 ON public.wagtailcore_page USING btree (live_revision_id);


--
-- Name: idx_28511_wagtailcore_page_locale_id_3c7e30a6; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28511_wagtailcore_page_locale_id_3c7e30a6 ON public.wagtailcore_page USING btree (locale_id);


--
-- Name: idx_28511_wagtailcore_page_locked_by_id_bcb86245; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28511_wagtailcore_page_locked_by_id_bcb86245 ON public.wagtailcore_page USING btree (locked_by_id);


--
-- Name: idx_28511_wagtailcore_page_owner_id_fbf7c332; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28511_wagtailcore_page_owner_id_fbf7c332 ON public.wagtailcore_page USING btree (owner_id);


--
-- Name: idx_28511_wagtailcore_page_slug_e7c11b8f; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28511_wagtailcore_page_slug_e7c11b8f ON public.wagtailcore_page USING btree (slug);


--
-- Name: idx_28511_wagtailcore_page_translation_key_locale_id_9b041bad_u; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28511_wagtailcore_page_translation_key_locale_id_9b041bad_u ON public.wagtailcore_page USING btree (translation_key, locale_id);


--
-- Name: idx_28520_wagtailcore_commentreply_comment_id_afc7e027; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28520_wagtailcore_commentreply_comment_id_afc7e027 ON public.wagtailcore_commentreply USING btree (comment_id);


--
-- Name: idx_28520_wagtailcore_commentreply_user_id_d0b3b9c3; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28520_wagtailcore_commentreply_user_id_d0b3b9c3 ON public.wagtailcore_commentreply USING btree (user_id);


--
-- Name: idx_28529_wagtailcore_pagesubscription_page_id_a085e7a6; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28529_wagtailcore_pagesubscription_page_id_a085e7a6 ON public.wagtailcore_pagesubscription USING btree (page_id);


--
-- Name: idx_28529_wagtailcore_pagesubscription_page_id_user_id_0cef73ed; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28529_wagtailcore_pagesubscription_page_id_user_id_0cef73ed ON public.wagtailcore_pagesubscription USING btree (page_id, user_id);


--
-- Name: idx_28529_wagtailcore_pagesubscription_user_id_89d7def9; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28529_wagtailcore_pagesubscription_user_id_89d7def9 ON public.wagtailcore_pagesubscription USING btree (user_id);


--
-- Name: idx_28535_wagtailcore_modellogentry_action_d2d856ee; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28535_wagtailcore_modellogentry_action_d2d856ee ON public.wagtailcore_modellogentry USING btree (action);


--
-- Name: idx_28535_wagtailcore_modellogentry_content_changed_8bc39742; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28535_wagtailcore_modellogentry_content_changed_8bc39742 ON public.wagtailcore_modellogentry USING btree (content_changed);


--
-- Name: idx_28535_wagtailcore_modellogentry_content_type_id_68849e77; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28535_wagtailcore_modellogentry_content_type_id_68849e77 ON public.wagtailcore_modellogentry USING btree (content_type_id);


--
-- Name: idx_28535_wagtailcore_modellogentry_object_id_e0e7d4ef; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28535_wagtailcore_modellogentry_object_id_e0e7d4ef ON public.wagtailcore_modellogentry USING btree (object_id);


--
-- Name: idx_28535_wagtailcore_modellogentry_revision_id_df6ca33a; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28535_wagtailcore_modellogentry_revision_id_df6ca33a ON public.wagtailcore_modellogentry USING btree (revision_id);


--
-- Name: idx_28535_wagtailcore_modellogentry_timestamp_9694521b; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28535_wagtailcore_modellogentry_timestamp_9694521b ON public.wagtailcore_modellogentry USING btree ("timestamp");


--
-- Name: idx_28535_wagtailcore_modellogentry_user_id_0278d1bf; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28535_wagtailcore_modellogentry_user_id_0278d1bf ON public.wagtailcore_modellogentry USING btree (user_id);


--
-- Name: idx_28544_wagtailcore_pagelogentry_action_c2408198; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28544_wagtailcore_pagelogentry_action_c2408198 ON public.wagtailcore_pagelogentry USING btree (action);


--
-- Name: idx_28544_wagtailcore_pagelogentry_content_changed_99f27ade; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28544_wagtailcore_pagelogentry_content_changed_99f27ade ON public.wagtailcore_pagelogentry USING btree (content_changed);


--
-- Name: idx_28544_wagtailcore_pagelogentry_content_type_id_74e7708a; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28544_wagtailcore_pagelogentry_content_type_id_74e7708a ON public.wagtailcore_pagelogentry USING btree (content_type_id);


--
-- Name: idx_28544_wagtailcore_pagelogentry_page_id_8464e327; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28544_wagtailcore_pagelogentry_page_id_8464e327 ON public.wagtailcore_pagelogentry USING btree (page_id);


--
-- Name: idx_28544_wagtailcore_pagelogentry_revision_id_8043d103; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28544_wagtailcore_pagelogentry_revision_id_8043d103 ON public.wagtailcore_pagelogentry USING btree (revision_id);


--
-- Name: idx_28544_wagtailcore_pagelogentry_timestamp_deb774c4; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28544_wagtailcore_pagelogentry_timestamp_deb774c4 ON public.wagtailcore_pagelogentry USING btree ("timestamp");


--
-- Name: idx_28544_wagtailcore_pagelogentry_user_id_604ccfd8; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28544_wagtailcore_pagelogentry_user_id_604ccfd8 ON public.wagtailcore_pagelogentry USING btree (user_id);


--
-- Name: idx_28553_wagtailcore_comment_page_id_108444b5; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28553_wagtailcore_comment_page_id_108444b5 ON public.wagtailcore_comment USING btree (page_id);


--
-- Name: idx_28553_wagtailcore_comment_resolved_by_id_a282aa0e; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28553_wagtailcore_comment_resolved_by_id_a282aa0e ON public.wagtailcore_comment USING btree (resolved_by_id);


--
-- Name: idx_28553_wagtailcore_comment_revision_created_id_1d058279; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28553_wagtailcore_comment_revision_created_id_1d058279 ON public.wagtailcore_comment USING btree (revision_created_id);


--
-- Name: idx_28553_wagtailcore_comment_user_id_0c577ca6; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28553_wagtailcore_comment_user_id_0c577ca6 ON public.wagtailcore_comment USING btree (user_id);


--
-- Name: idx_28562_wagtailcore_taskstate_content_type_id_0a758fdc; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28562_wagtailcore_taskstate_content_type_id_0a758fdc ON public.wagtailcore_taskstate USING btree (content_type_id);


--
-- Name: idx_28562_wagtailcore_taskstate_finished_by_id_13f98229; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28562_wagtailcore_taskstate_finished_by_id_13f98229 ON public.wagtailcore_taskstate USING btree (finished_by_id);


--
-- Name: idx_28562_wagtailcore_taskstate_page_revision_id_9f52c88e; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28562_wagtailcore_taskstate_page_revision_id_9f52c88e ON public.wagtailcore_taskstate USING btree (page_revision_id);


--
-- Name: idx_28562_wagtailcore_taskstate_task_id_c3677c34; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28562_wagtailcore_taskstate_task_id_c3677c34 ON public.wagtailcore_taskstate USING btree (task_id);


--
-- Name: idx_28562_wagtailcore_taskstate_workflow_state_id_9239a775; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28562_wagtailcore_taskstate_workflow_state_id_9239a775 ON public.wagtailcore_taskstate USING btree (workflow_state_id);


--
-- Name: idx_28571_base_content_object_idx; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28571_base_content_object_idx ON public.wagtailcore_revision USING btree (base_content_type_id, object_id);


--
-- Name: idx_28571_content_object_idx; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28571_content_object_idx ON public.wagtailcore_revision USING btree (content_type_id, object_id);


--
-- Name: idx_28571_wagtailcore_revision_approved_go_live_at_88d3dee5; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28571_wagtailcore_revision_approved_go_live_at_88d3dee5 ON public.wagtailcore_revision USING btree (approved_go_live_at);


--
-- Name: idx_28571_wagtailcore_revision_base_content_type_id_5b4ef7bd; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28571_wagtailcore_revision_base_content_type_id_5b4ef7bd ON public.wagtailcore_revision USING btree (base_content_type_id);


--
-- Name: idx_28571_wagtailcore_revision_content_type_id_c8cb69c0; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28571_wagtailcore_revision_content_type_id_c8cb69c0 ON public.wagtailcore_revision USING btree (content_type_id);


--
-- Name: idx_28571_wagtailcore_revision_created_at_81450aa6; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28571_wagtailcore_revision_created_at_81450aa6 ON public.wagtailcore_revision USING btree (created_at);


--
-- Name: idx_28571_wagtailcore_revision_submitted_for_moderation_362afbf; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28571_wagtailcore_revision_submitted_for_moderation_362afbf ON public.wagtailcore_revision USING btree (submitted_for_moderation);


--
-- Name: idx_28571_wagtailcore_revision_user_id_03df83b0; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28571_wagtailcore_revision_user_id_03df83b0 ON public.wagtailcore_revision USING btree (user_id);


--
-- Name: idx_28580_wagtailcore_referenceindex_base_content_type_id_313cf; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28580_wagtailcore_referenceindex_base_content_type_id_313cf ON public.wagtailcore_referenceindex USING btree (base_content_type_id);


--
-- Name: idx_28580_wagtailcore_referenceindex_base_content_type_id_objec; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28580_wagtailcore_referenceindex_base_content_type_id_objec ON public.wagtailcore_referenceindex USING btree (base_content_type_id, object_id, to_content_type_id, to_object_id, content_path_hash);


--
-- Name: idx_28580_wagtailcore_referenceindex_content_type_id_766e0336; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28580_wagtailcore_referenceindex_content_type_id_766e0336 ON public.wagtailcore_referenceindex USING btree (content_type_id);


--
-- Name: idx_28580_wagtailcore_referenceindex_to_content_type_id_93690bb; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28580_wagtailcore_referenceindex_to_content_type_id_93690bb ON public.wagtailcore_referenceindex USING btree (to_content_type_id);


--
-- Name: idx_28589_wagtaildocs_document_collection_id_23881625; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28589_wagtaildocs_document_collection_id_23881625 ON public.wagtaildocs_document USING btree (collection_id);


--
-- Name: idx_28589_wagtaildocs_document_uploaded_by_user_id_17258b41; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28589_wagtaildocs_document_uploaded_by_user_id_17258b41 ON public.wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: idx_28598_wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd6; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28598_wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd6 ON public.wagtaildocs_uploadeddocument USING btree (uploaded_by_user_id);


--
-- Name: idx_28607_sqlite_autoindex_wagtailembeds_embed_1; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28607_sqlite_autoindex_wagtailembeds_embed_1 ON public.wagtailembeds_embed USING btree (hash);


--
-- Name: idx_28607_wagtailembeds_embed_cache_until_26c94bb0; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28607_wagtailembeds_embed_cache_until_26c94bb0 ON public.wagtailembeds_embed USING btree (cache_until);


--
-- Name: idx_28616_wagtailforms_formsubmission_page_id_e48e93e7; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28616_wagtailforms_formsubmission_page_id_e48e93e7 ON public.wagtailforms_formsubmission USING btree (page_id);


--
-- Name: idx_28625_wagtailimages_rendition_filter_spec_1cba3201; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28625_wagtailimages_rendition_filter_spec_1cba3201 ON public.wagtailimages_rendition USING btree (filter_spec);


--
-- Name: idx_28625_wagtailimages_rendition_image_id_3e1fd774; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28625_wagtailimages_rendition_image_id_3e1fd774 ON public.wagtailimages_rendition USING btree (image_id);


--
-- Name: idx_28625_wagtailimages_rendition_image_id_filter_spec_focal_po; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28625_wagtailimages_rendition_image_id_filter_spec_focal_po ON public.wagtailimages_rendition USING btree (image_id, filter_spec, focal_point_key);


--
-- Name: idx_28634_wagtailimages_uploadedimage_uploaded_by_user_id_85921; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28634_wagtailimages_uploadedimage_uploaded_by_user_id_85921 ON public.wagtailimages_uploadedimage USING btree (uploaded_by_user_id);


--
-- Name: idx_28643_wagtailimages_image_collection_id_c2f8af7e; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28643_wagtailimages_image_collection_id_c2f8af7e ON public.wagtailimages_image USING btree (collection_id);


--
-- Name: idx_28643_wagtailimages_image_created_at_86fa6cd4; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28643_wagtailimages_image_created_at_86fa6cd4 ON public.wagtailimages_image USING btree (created_at);


--
-- Name: idx_28643_wagtailimages_image_file_hash_fb5bbb23; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28643_wagtailimages_image_file_hash_fb5bbb23 ON public.wagtailimages_image USING btree (file_hash);


--
-- Name: idx_28643_wagtailimages_image_uploaded_by_user_id_5d73dc75; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28643_wagtailimages_image_uploaded_by_user_id_5d73dc75 ON public.wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: idx_28652_wagtailredirects_redirect_old_path_bb35247b; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28652_wagtailredirects_redirect_old_path_bb35247b ON public.wagtailredirects_redirect USING btree (old_path);


--
-- Name: idx_28652_wagtailredirects_redirect_old_path_site_id_783622d7_u; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28652_wagtailredirects_redirect_old_path_site_id_783622d7_u ON public.wagtailredirects_redirect USING btree (old_path, site_id);


--
-- Name: idx_28652_wagtailredirects_redirect_redirect_page_id_b5728a8f; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28652_wagtailredirects_redirect_redirect_page_id_b5728a8f ON public.wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: idx_28652_wagtailredirects_redirect_site_id_780a0e1e; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28652_wagtailredirects_redirect_site_id_780a0e1e ON public.wagtailredirects_redirect USING btree (site_id);


--
-- Name: idx_28661_sqlite_autoindex_wagtailsearch_query_1; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28661_sqlite_autoindex_wagtailsearch_query_1 ON public.wagtailsearch_query USING btree (query_string);


--
-- Name: idx_28670_wagtailsearch_querydailyhits_query_id_2185994b; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28670_wagtailsearch_querydailyhits_query_id_2185994b ON public.wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: idx_28670_wagtailsearch_querydailyhits_query_id_date_1dd232e6_u; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28670_wagtailsearch_querydailyhits_query_id_date_1dd232e6_u ON public.wagtailsearch_querydailyhits USING btree (query_id, date);


--
-- Name: idx_28676_wagtailsearch_indexentry_content_type_id_62ed694f; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28676_wagtailsearch_indexentry_content_type_id_62ed694f ON public.wagtailsearch_indexentry USING btree (content_type_id);


--
-- Name: idx_28676_wagtailsearch_indexentry_content_type_id_object_id_bc; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28676_wagtailsearch_indexentry_content_type_id_object_id_bc ON public.wagtailsearch_indexentry USING btree (content_type_id, object_id);


--
-- Name: idx_28721_sqlite_autoindex_wagtailusers_userprofile_1; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28721_sqlite_autoindex_wagtailusers_userprofile_1 ON public.wagtailusers_userprofile USING btree (user_id);


--
-- Name: idx_28728_home_homepage_banner_image_id_ccdec6a2; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28728_home_homepage_banner_image_id_ccdec6a2 ON public.home_homepage USING btree (banner_image_id);


--
-- Name: idx_28734_navbar_navbar_logo_id_b63f9309; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28734_navbar_navbar_logo_id_b63f9309 ON public.navbar_navbar USING btree (logo_id);


--
-- Name: idx_28734_navbar_navbar_nav_button_id_d6976f4a; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28734_navbar_navbar_nav_button_id_d6976f4a ON public.navbar_navbar USING btree (nav_button_id);


--
-- Name: idx_28740_banner_banner_banner_image_id_2cf5d17f; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28740_banner_banner_banner_image_id_2cf5d17f ON public.banner_banner USING btree (banner_image_id);


--
-- Name: idx_28754_sqlite_autoindex_wagtail_headless_preview_pagepreview; Type: INDEX; Schema: public; Owner: kyle
--

CREATE UNIQUE INDEX idx_28754_sqlite_autoindex_wagtail_headless_preview_pagepreview ON public.wagtail_headless_preview_pagepreview USING btree (token);


--
-- Name: idx_28754_wagtail_headless_preview_pagepreview_content_type_id_; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28754_wagtail_headless_preview_pagepreview_content_type_id_ ON public.wagtail_headless_preview_pagepreview USING btree (content_type_id);


--
-- Name: idx_28761_singles_singlespage_logo_1_id_22f1106c; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28761_singles_singlespage_logo_1_id_22f1106c ON public.singles_singlespage USING btree (logo_1_id);


--
-- Name: idx_28761_singles_singlespage_logo_2_id_d78b6141; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28761_singles_singlespage_logo_2_id_d78b6141 ON public.singles_singlespage USING btree (logo_2_id);


--
-- Name: idx_28761_singles_singlespage_logo_3_id_f237e9bb; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28761_singles_singlespage_logo_3_id_f237e9bb ON public.singles_singlespage USING btree (logo_3_id);


--
-- Name: idx_28773_landing_landingpage_hero_image_id_7d682491; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28773_landing_landingpage_hero_image_id_7d682491 ON public.landing_landingpage USING btree (hero_image_id);


--
-- Name: idx_28779_about_aboutpage_about_image_id_dbbfd871; Type: INDEX; Schema: public; Owner: kyle
--

CREATE INDEX idx_28779_about_aboutpage_about_image_id_dbbfd871 ON public.about_aboutpage USING btree (about_image_id);


--
-- Name: about_aboutpage about_aboutpage_about_image_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.about_aboutpage
    ADD CONSTRAINT about_aboutpage_about_image_id_fkey FOREIGN KEY (about_image_id) REFERENCES public.wagtailimages_image(id);


--
-- Name: about_aboutpage about_aboutpage_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.about_aboutpage
    ADD CONSTRAINT about_aboutpage_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_group_permissions auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_permission auth_permission_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: auth_user_groups auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_user_groups auth_user_groups_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: banner_banner banner_banner_banner_image_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.banner_banner
    ADD CONSTRAINT banner_banner_banner_image_id_fkey FOREIGN KEY (banner_image_id) REFERENCES public.wagtailimages_image(id);


--
-- Name: banner_banner banner_banner_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.banner_banner
    ADD CONSTRAINT banner_banner_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: django_admin_log django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: django_admin_log django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: events_event events_event_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.events_event
    ADD CONSTRAINT events_event_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: home_homepage home_homepage_banner_image_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_banner_image_id_fkey FOREIGN KEY (banner_image_id) REFERENCES public.wagtailimages_image(id);


--
-- Name: home_homepage home_homepage_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: landing_landingpage landing_landingpage_hero_image_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.landing_landingpage
    ADD CONSTRAINT landing_landingpage_hero_image_id_fkey FOREIGN KEY (hero_image_id) REFERENCES public.wagtailimages_image(id);


--
-- Name: landing_landingpage landing_landingpage_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.landing_landingpage
    ADD CONSTRAINT landing_landingpage_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: navbar_navbar navbar_navbar_logo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.navbar_navbar
    ADD CONSTRAINT navbar_navbar_logo_id_fkey FOREIGN KEY (logo_id) REFERENCES public.wagtailimages_image(id);


--
-- Name: navbar_navbar navbar_navbar_nav_button_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.navbar_navbar
    ADD CONSTRAINT navbar_navbar_nav_button_id_fkey FOREIGN KEY (nav_button_id) REFERENCES public.wagtailimages_image(id);


--
-- Name: navbar_navbar navbar_navbar_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.navbar_navbar
    ADD CONSTRAINT navbar_navbar_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: products_newproducts products_newproducts_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.products_newproducts
    ADD CONSTRAINT products_newproducts_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: singles_singlespage singles_singlespage_logo_1_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.singles_singlespage
    ADD CONSTRAINT singles_singlespage_logo_1_id_fkey FOREIGN KEY (logo_1_id) REFERENCES public.wagtailimages_image(id);


--
-- Name: singles_singlespage singles_singlespage_logo_2_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.singles_singlespage
    ADD CONSTRAINT singles_singlespage_logo_2_id_fkey FOREIGN KEY (logo_2_id) REFERENCES public.wagtailimages_image(id);


--
-- Name: singles_singlespage singles_singlespage_logo_3_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.singles_singlespage
    ADD CONSTRAINT singles_singlespage_logo_3_id_fkey FOREIGN KEY (logo_3_id) REFERENCES public.wagtailimages_image(id);


--
-- Name: singles_singlespage singles_singlespage_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.singles_singlespage
    ADD CONSTRAINT singles_singlespage_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id);


--
-- Name: wagtail_headless_preview_pagepreview wagtail_headless_preview_pagepreview_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtail_headless_preview_pagepreview
    ADD CONSTRAINT wagtail_headless_preview_pagepreview_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewres_collectionviewrestriction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewres_collectionviewrestriction_id_fkey FOREIGN KEY (collectionviewrestriction_id) REFERENCES public.wagtailcore_collectionviewrestriction(id);


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: wagtailcore_comment wagtailcore_comment_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailcore_comment wagtailcore_comment_resolved_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_resolved_by_id_fkey FOREIGN KEY (resolved_by_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailcore_comment wagtailcore_comment_revision_created_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_revision_created_id_fkey FOREIGN KEY (revision_created_id) REFERENCES public.wagtailcore_revision(id);


--
-- Name: wagtailcore_comment wagtailcore_comment_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailcore_commentreply wagtailcore_commentreply_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_commentreply
    ADD CONSTRAINT wagtailcore_commentreply_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.wagtailcore_comment(id);


--
-- Name: wagtailcore_commentreply wagtailcore_commentreply_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_commentreply
    ADD CONSTRAINT wagtailcore_commentreply_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapprovaltask_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprovaltask_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapprovaltask_groups_groupapprovaltask_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprovaltask_groups_groupapprovaltask_id_fkey FOREIGN KEY (groupapprovaltask_id) REFERENCES public.wagtailcore_groupapprovaltask(task_ptr_id);


--
-- Name: wagtailcore_groupapprovaltask wagtailcore_groupapprovaltask_task_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT wagtailcore_groupapprovaltask_task_ptr_id_fkey FOREIGN KEY (task_ptr_id) REFERENCES public.wagtailcore_task(id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailcore_modellogentry wagtailcore_modellogentry_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_modellogentry
    ADD CONSTRAINT wagtailcore_modellogentry_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_page wagtailcore_page_alias_of_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_alias_of_id_fkey FOREIGN KEY (alias_of_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailcore_page wagtailcore_page_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_page wagtailcore_page_latest_revision_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_latest_revision_id_fkey FOREIGN KEY (latest_revision_id) REFERENCES public.wagtailcore_revision(id);


--
-- Name: wagtailcore_page wagtailcore_page_live_revision_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_fkey FOREIGN KEY (live_revision_id) REFERENCES public.wagtailcore_revision(id);


--
-- Name: wagtailcore_page wagtailcore_page_locale_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locale_id_fkey FOREIGN KEY (locale_id) REFERENCES public.wagtailcore_locale(id);


--
-- Name: wagtailcore_page wagtailcore_page_locked_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locked_by_id_fkey FOREIGN KEY (locked_by_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailcore_page wagtailcore_page_owner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailcore_pagelogentry wagtailcore_pagelogentry_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT wagtailcore_pagelogentry_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_pagesubscription wagtailcore_pagesubscription_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pagesubscription
    ADD CONSTRAINT wagtailcore_pagesubscription_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailcore_pagesubscription wagtailcore_pagesubscription_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pagesubscription
    ADD CONSTRAINT wagtailcore_pagesubscription_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_gro_pageviewrestriction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_gro_pageviewrestriction_id_fkey FOREIGN KEY (pageviewrestriction_id) REFERENCES public.wagtailcore_pageviewrestriction(id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailcore_referenceindex wagtailcore_referenceindex_base_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_referenceindex
    ADD CONSTRAINT wagtailcore_referenceindex_base_content_type_id_fkey FOREIGN KEY (base_content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_referenceindex wagtailcore_referenceindex_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_referenceindex
    ADD CONSTRAINT wagtailcore_referenceindex_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_referenceindex wagtailcore_referenceindex_to_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_referenceindex
    ADD CONSTRAINT wagtailcore_referenceindex_to_content_type_id_fkey FOREIGN KEY (to_content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_revision wagtailcore_revision_base_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_revision
    ADD CONSTRAINT wagtailcore_revision_base_content_type_id_fkey FOREIGN KEY (base_content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_revision wagtailcore_revision_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_revision
    ADD CONSTRAINT wagtailcore_revision_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_revision wagtailcore_revision_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_revision
    ADD CONSTRAINT wagtailcore_revision_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailcore_site wagtailcore_site_root_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_fkey FOREIGN KEY (root_page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailcore_task wagtailcore_task_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT wagtailcore_task_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_finished_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_finished_by_id_fkey FOREIGN KEY (finished_by_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_page_revision_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_page_revision_id_fkey FOREIGN KEY (page_revision_id) REFERENCES public.wagtailcore_revision(id);


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_task_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_task_id_fkey FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id);


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_workflow_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_workflow_state_id_fkey FOREIGN KEY (workflow_state_id) REFERENCES public.wagtailcore_workflowstate(id);


--
-- Name: wagtailcore_workflowpage wagtailcore_workflowpage_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflowpage_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailcore_workflowpage wagtailcore_workflowpage_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflowpage_workflow_id_fkey FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id);


--
-- Name: wagtailcore_workflowstate wagtailcore_workflowstate_current_task_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_current_task_state_id_fkey FOREIGN KEY (current_task_state_id) REFERENCES public.wagtailcore_taskstate(id);


--
-- Name: wagtailcore_workflowstate wagtailcore_workflowstate_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailcore_workflowstate wagtailcore_workflowstate_requested_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_requested_by_id_fkey FOREIGN KEY (requested_by_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailcore_workflowstate wagtailcore_workflowstate_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_workflow_id_fkey FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id);


--
-- Name: wagtailcore_workflowtask wagtailcore_workflowtask_task_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_task_id_fkey FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id);


--
-- Name: wagtailcore_workflowtask wagtailcore_workflowtask_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_workflow_id_fkey FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id);


--
-- Name: wagtaildocs_document wagtaildocs_document_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id);


--
-- Name: wagtaildocs_document wagtaildocs_document_uploaded_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_fkey FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id);


--
-- Name: wagtaildocs_uploadeddocument wagtaildocs_uploadeddocument_uploaded_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT wagtaildocs_uploadeddocument_uploaded_by_user_id_fkey FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailforms_formsubmission wagtailforms_formsubmission_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailimages_image wagtailimages_image_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id);


--
-- Name: wagtailimages_image wagtailimages_image_uploaded_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_fkey FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_image_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_fkey FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id);


--
-- Name: wagtailimages_uploadedimage wagtailimages_uploadedimage_uploaded_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT wagtailimages_uploadedimage_uploaded_by_user_id_fkey FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_redirect_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_redirect_page_id_fkey FOREIGN KEY (redirect_page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_site_id_fkey FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id);


--
-- Name: wagtailsearch_indexentry wagtailsearch_indexentry_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_indexentry
    ADD CONSTRAINT wagtailsearch_indexentry_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_fkey FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kyle
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- PostgreSQL database dump complete
--

