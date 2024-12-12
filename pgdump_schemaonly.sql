--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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
-- Name: attempt_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attempt_answers (
    email character varying(255) NOT NULL,
    attempt_date_time timestamp without time zone NOT NULL,
    question_text character varying(255) NOT NULL,
    user_answer boolean NOT NULL,
    is_correct boolean NOT NULL
);


ALTER TABLE public.attempt_answers OWNER TO postgres;

--
-- Name: attempts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attempts (
    email character varying(255) NOT NULL,
    attempt_date_time timestamp without time zone NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL,
    total_score integer NOT NULL,
    duration integer NOT NULL
);


ALTER TABLE public.attempts OWNER TO postgres;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    category_name character varying(255) NOT NULL,
    description character varying(255)
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: difficulty_levels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.difficulty_levels (
    difficulty_level character varying(255) NOT NULL,
    description character varying(255)
);


ALTER TABLE public.difficulty_levels OWNER TO postgres;

--
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    question_text character varying(255) NOT NULL,
    category_name character varying(255) NOT NULL,
    difficulty_level character varying(255) NOT NULL,
    correct_answer boolean NOT NULL
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    email character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    password_hash character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: attempt_answers attempt_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attempt_answers
    ADD CONSTRAINT attempt_answers_pkey PRIMARY KEY (email, attempt_date_time, question_text);


--
-- Name: attempts attempts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attempts
    ADD CONSTRAINT attempts_pkey PRIMARY KEY (email, attempt_date_time);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_name);


--
-- Name: difficulty_levels difficulty_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.difficulty_levels
    ADD CONSTRAINT difficulty_levels_pkey PRIMARY KEY (difficulty_level);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (question_text);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (email);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: attempt_answers attempt_answers_email_attempt_date_time_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attempt_answers
    ADD CONSTRAINT attempt_answers_email_attempt_date_time_fkey FOREIGN KEY (email, attempt_date_time) REFERENCES public.attempts(email, attempt_date_time);


--
-- Name: attempt_answers attempt_answers_question_text_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attempt_answers
    ADD CONSTRAINT attempt_answers_question_text_fkey FOREIGN KEY (question_text) REFERENCES public.questions(question_text);


--
-- Name: attempts attempts_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attempts
    ADD CONSTRAINT attempts_email_fkey FOREIGN KEY (email) REFERENCES public.users(email);


--
-- Name: questions questions_category_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_category_name_fkey FOREIGN KEY (category_name) REFERENCES public.categories(category_name);


--
-- Name: questions questions_difficulty_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_difficulty_level_fkey FOREIGN KEY (difficulty_level) REFERENCES public.difficulty_levels(difficulty_level);


--
-- PostgreSQL database dump complete
--

