-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Data for Name: M_DataType; Type: TABLE DATA; Schema: public; Owner: user
--userinfo
INSERT INTO public."userinfo" (user_id,lastname, firstname, birthday, sex, city,create_datetime) 
VALUES ('1','試験', '太郎','19980304','1','Tokyo',now());
INSERT INTO public."userinfo" (user_id,lastname, firstname, birthday, sex, city,create_datetime) 
VALUES ('2','Bruce', 'Lee','19930625','2','Gothm',now());

--login
INSERT INTO public."login" (user_id,mail, password,create_datetime) 
VALUES ('1','datatest@el.com','199803041Tokyo',now());

INSERT INTO public."login" (user_id,mail, password,create_datetime) 
VALUES ('2','BruceLee@el.com','Goyhm199306252',now());




--certificate
INSERT INTO public."certificate"(certificate_id,certificate_category,certificate_name,certificate_description,create_datetime)
 VALUES('1','level_test','Java SE Bronze','「Java SE 11」は、2017年9月に発表された新しいリリース・モデルへの移行後初の LTS リリースであり、企業システムやクラウド・サービス、スマート・デバイスなどで活用されるアプリケーション開発の生産性向上に重点をおいています。この資格を取得することで、業界標準に準拠した高度なスキルを証明します。
Oracle Certified Java Programmer, Bronze SE 認定資格は、言語未経験者向けの入門資格で Java 言語を使用したオブジェクト指向プログラミングの基本的な知識を有すること を評価することを目的としています。Oracle Certified Java Programmer, Bronze SE 認定資格を取得するためには、Java SE Bronze (1Z0-818-JPN) 試験 の合格が必要です。',now());

INSERT INTO public."certificate"(certificate_id,certificate_category,certificate_name,certificate_description,create_datetime)
VALUES('2','Java','第九章総仕上げ問題','Java SE Bronze 練習問題',now());

INSERT INTO public."certificate"(certificate_id,certificate_category,certificate_name,certificate_description,create_datetime)
 VALUES('3','情報処理技術者試験','基本情報技術者試験','基本情報技術者試験の対象者は高度IT人材となるために必要な基本的知識・技能をもち、実践的な活用能力を身に付けた者です。',now());
 
INSERT INTO public."certificate"(certificate_id,certificate_category,certificate_name,certificate_description,create_datetime)
VALUES('4','情報処理技術者試験','応用情報技術者試験','ITエンジニアとしてのレベルアップを図るには、応用情報技術者試験がお勧めです。技術から管理、経営まで、幅広い知識と応用力が身に付き、システム開発、IT基盤構築などの局面で、高いパフォーマンスを発揮することができます。',now());

INSERT INTO public."certificate"(certificate_id,certificate_category,certificate_name,certificate_description,create_datetime)
VALUES('5','情報処理技術者試験','ITパスポート試験','職業人が共通に備えておくべき情報技術に関する基礎的な知識をもち、情報技術に携わる業務に就くか、担当業務に対して情報技術を活用していこうとする者。',now());

INSERT INTO public."certificate"(certificate_id,certificate_category,certificate_name,certificate_description,create_datetime)
VALUES('6','AWS資格証','AWS Certified DevOps Engineer - Professional','この資格は、組織がクラウドイニシアチブを実装するための重要なスキルを持つ人材を特定して育成するのに役立ちます。AWS Certified DevOps Engineer - Professional を取得すると、AWS インフラストラクチャとアプリケーションのテストとデプロイを自動化する能力が認定されます。',now());

INSERT INTO public."certificate"(certificate_id,certificate_category,certificate_name,certificate_description,create_datetime)
VALUES('7','AWS資格証','AWS Certified Solutions Architect ? Associate','この資格は、組織がクラウドイニシアチブを実装するための重要なスキルを持つ人材を特定して育成するのに役立ちます。AWS Certified Solutions Architect ? Associate を取得すると、AWS 上で分散システムを設計、実装する能力が認定されます。',now());

INSERT INTO public."certificate"(certificate_id,certificate_category,certificate_name,certificate_description,create_datetime)
VALUES('8','AWS資格証','AWS Certified Developer-Associate','この資格は、組織がクラウドイニシアチブを実装するための重要なスキルを持つ人材を特定して育成するのに役立ちます。AWS Certified Developer - Associate を取得すると、クラウドベースのアプリケーションで書き込みおよびデプロイを行う能力を認定します。',now());

INSERT INTO public."certificate"(certificate_id,certificate_category,certificate_name,certificate_description,create_datetime)
 VALUES('9','AWS資格証','AWS Certified Cloud Practitioner','AWS Certified Cloud Practitioner は、AWS プラットフォームの基本的な知識をお持ちの方を対象としています。組織がクラウドイニシアチブを実装するための重要な知識を持つ人材を特定して育成するのに役立ちます。AWS Certified Cloud Practitioner を取得することで、クラウドへの理解と基礎的な AWS の知識が認定されます。',now());
 
INSERT INTO public."certificate"(certificate_id,certificate_category,certificate_name,certificate_description,create_datetime)
VALUES('10','AWS資格証','AWS Certified Solutions Architect - Professional','この資格は、組織がクラウドイニシアチブを実装するための重要なスキルを持つ人材を特定して育成するのに役立ちます。AWS Certified Solutions Architect - Professional を取得すると、多様で複雑な要件下において、AWS のアプリケーションを設計、デプロイ、評価する能力が認定されます。',now());


--certificate_event

INSERT INTO public."certificate_event"(certificate_event_id,user_id,certificate_id,certificate_status,expected_date,acquisition_date,create_datetime,update_datetime)
VALUES('1','1','3','1','2023-05-01','2023-04-01',now(),null);
INSERT INTO public."certificate_event"(certificate_event_id,user_id,certificate_id,certificate_status,expected_date,acquisition_date,create_datetime,update_datetime)
VALUES('2','1','4','0','2023-05-01',null,now(),null);
INSERT INTO public."certificate_event"(certificate_event_id,user_id,certificate_id,certificate_status,expected_date,acquisition_date,create_datetime,update_datetime)
VALUES('3','1','5','0','2023-05-01',null,now(),null);
INSERT INTO public."certificate_event"(certificate_event_id,user_id,certificate_id,certificate_status,expected_date,acquisition_date,create_datetime,update_datetime)
VALUES('4','1','6','1','2023-05-01','2023-05-08',now(),null);
INSERT INTO public."certificate_event"(certificate_event_id,user_id,certificate_id,certificate_status,expected_date,acquisition_date,create_datetime,update_datetime)
VALUES('5','2','3','1','2023-05-01','2023-05-29',now(),null);
INSERT INTO public."certificate_event"(certificate_event_id,user_id,certificate_id,certificate_status,expected_date,acquisition_date,create_datetime,update_datetime)
VALUES('6','2','4','0','2023-05-01',null,now(),null);

-- SEQUENCE
SELECT pg_catalog.setval('public."User_userinfo_use_id_seq"', 2, true);

SELECT pg_catalog.setval('public."User_login_user_id_seq"', 2, true);

SELECT pg_catalog.setval('public."Product_certificate_certificate_id_seq"', 10, true);

SELECT pg_catalog.setval('public."Certificate_certificate_event_id_seq"', 7, true);
