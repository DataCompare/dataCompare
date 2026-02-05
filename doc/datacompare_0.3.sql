/*
 Navicat Premium Dump SQL

 Source Server         : postgresql
 Source Server Type    : PostgreSQL
 Source Server Version : 150007 (150007)
 Source Host           : localhost:5432
 Source Catalog        : pgcompare
 Source Schema         : pgcompare

 Target Server Type    : PostgreSQL
 Target Server Version : 150007 (150007)
 File Encoding         : 65001

 Date: 05/02/2026 11:57:23
*/


-- ----------------------------
-- Sequence structure for common_data_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."common_data_id_seq";
CREATE SEQUENCE "pgcompare"."common_data_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for configurations_config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."configurations_config_id_seq";
CREATE SEQUENCE "pgcompare"."configurations_config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_config_id_seq";
CREATE SEQUENCE "pgcompare"."dc_config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_operation_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_operation_log_id_seq";
CREATE SEQUENCE "pgcompare"."dc_operation_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_project_pid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_project_pid_seq";
CREATE SEQUENCE "pgcompare"."dc_project_pid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_reconciliation_results_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_reconciliation_results_id_seq";
CREATE SEQUENCE "pgcompare"."dc_reconciliation_results_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_resource_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_resource_id_seq";
CREATE SEQUENCE "pgcompare"."dc_resource_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_result_cid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_result_cid_seq";
CREATE SEQUENCE "pgcompare"."dc_result_cid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_role_id_seq";
CREATE SEQUENCE "pgcompare"."dc_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_role_resource_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_role_resource_id_seq";
CREATE SEQUENCE "pgcompare"."dc_role_resource_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_table_column_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_table_column_column_id_seq";
CREATE SEQUENCE "pgcompare"."dc_table_column_column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_table_tid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_table_tid_seq";
CREATE SEQUENCE "pgcompare"."dc_table_tid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_user_id_seq";
CREATE SEQUENCE "pgcompare"."dc_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for dc_user_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."dc_user_role_id_seq";
CREATE SEQUENCE "pgcompare"."dc_user_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for job_data_contrast_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."job_data_contrast_id_seq";
CREATE SEQUENCE "pgcompare"."job_data_contrast_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for job_jdbc_datasource_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pgcompare"."job_jdbc_datasource_id_seq";
CREATE SEQUENCE "pgcompare"."job_jdbc_datasource_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for common_data
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."common_data";
CREATE TABLE "pgcompare"."common_data" (
  "id" int4 NOT NULL DEFAULT nextval('"pgcompare".common_data_id_seq'::regclass),
  "category" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP(0),
  "pid" int8
)
;

-- ----------------------------
-- Table structure for dc_config
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_config";
CREATE TABLE "pgcompare"."dc_config" (
  "id" int8 NOT NULL DEFAULT nextval('"pgcompare".dc_config_id_seq'::regclass),
  "param_type" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "param_key" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "param_value" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "param_name" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "modify_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "valid" int4 DEFAULT 1
)
;
COMMENT ON TABLE "pgcompare"."dc_config" IS '系统配置信息表';

-- ----------------------------
-- Table structure for dc_configurations
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_configurations";
CREATE TABLE "pgcompare"."dc_configurations" (
  "config_id" int8 NOT NULL DEFAULT nextval('"pgcompare".configurations_config_id_seq'::regclass),
  "config_key" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "config_value" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "config_type" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "project_id" int8,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP
)
;
COMMENT ON COLUMN "pgcompare"."dc_configurations"."config_id" IS '配置项唯一标识符';
COMMENT ON COLUMN "pgcompare"."dc_configurations"."config_key" IS '配置项的键（例如：source-dbname, repo-host）';
COMMENT ON COLUMN "pgcompare"."dc_configurations"."config_value" IS '配置项的值（例如：localhost, testcompare）';
COMMENT ON COLUMN "pgcompare"."dc_configurations"."config_type" IS '配置项的类型（例如：system, repository, source, target）';
COMMENT ON COLUMN "pgcompare"."dc_configurations"."project_id" IS '关联的项目 ID（可选）';
COMMENT ON COLUMN "pgcompare"."dc_configurations"."created_at" IS '配置项的创建时间';
COMMENT ON COLUMN "pgcompare"."dc_configurations"."updated_at" IS '配置项的最后更新时间';
COMMENT ON TABLE "pgcompare"."dc_configurations" IS '存储系统配置、仓库配置、源数据库配置和目标数据库配置的表';

-- ----------------------------
-- Table structure for dc_operation_log
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_operation_log";
CREATE TABLE "pgcompare"."dc_operation_log" (
  "id" int8 NOT NULL DEFAULT nextval('"pgcompare".dc_operation_log_id_seq'::regclass),
  "business_type" int2 NOT NULL,
  "method" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "request_method" varchar(10) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "description" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "req_ip" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "req_param" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "resp" varchar(1000) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "error_msg" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_id" int8,
  "create_by" varchar(12) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_time" timestamp(6),
  "update_id" int8,
  "update_by" varchar(12) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "update_time" timestamp(6),
  "is_deleted" int2,
  "delete_time" timestamp(6),
  "oper_name" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "oper_location" varchar(200) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "status" int2
)
;
COMMENT ON TABLE "pgcompare"."dc_operation_log" IS '系统操作日志';

-- ----------------------------
-- Table structure for dc_project
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_project";
CREATE TABLE "pgcompare"."dc_project" (
  "pid" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "project_name" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'default'::text,
  "project_config" jsonb
)
;

-- ----------------------------
-- Table structure for dc_reconciliation_results
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_reconciliation_results";
CREATE TABLE "pgcompare"."dc_reconciliation_results" (
  "id" int8 NOT NULL DEFAULT nextval('"pgcompare".dc_reconciliation_results_id_seq'::regclass),
  "pid" int8 NOT NULL,
  "tid" int8 NOT NULL,
  "table_name" varchar(255) COLLATE "pg_catalog"."default",
  "pk" varchar(20) COLLATE "pg_catalog"."default",
  "compare_status" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "equal_count" int8 DEFAULT 0,
  "not_equal_count" int8 DEFAULT 0,
  "missing_source_count" int8 DEFAULT 0,
  "missing_target_count" int8 DEFAULT 0,
  "result_details" text COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamptz(6) DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Table structure for dc_resource
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_resource";
CREATE TABLE "pgcompare"."dc_resource" (
  "id" int8 NOT NULL DEFAULT nextval('"pgcompare".dc_resource_id_seq'::regclass),
  "parent_id" int4 NOT NULL,
  "ui_path" varchar(200) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "menu_type" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "status" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "menu_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "route_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "route_path" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "component" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "meta" varchar(455) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "weight" int4,
  "create_id" int8 NOT NULL,
  "create_by" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "update_id" int8,
  "update_by" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6),
  "is_deleted" int2 NOT NULL DEFAULT '0'::smallint,
  "delete_time" timestamp(6)
)
;
COMMENT ON TABLE "pgcompare"."dc_resource" IS '资源表';

-- ----------------------------
-- Table structure for dc_result
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_result";
CREATE TABLE "pgcompare"."dc_result" (
  "cid" int4 NOT NULL DEFAULT nextval('"pgcompare".dc_result_cid_seq'::regclass),
  "rid" numeric,
  "tid" int8,
  "table_name" text COLLATE "pg_catalog"."default",
  "status" varchar COLLATE "pg_catalog"."default",
  "compare_start" timestamptz(6),
  "equal_cnt" int4,
  "missing_source_cnt" int4,
  "missing_target_cnt" int4,
  "not_equal_cnt" int4,
  "source_cnt" int4,
  "target_cnt" int4,
  "compare_end" timestamptz(6),
  "result_message" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for dc_role
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_role";
CREATE TABLE "pgcompare"."dc_role" (
  "id" int8 NOT NULL DEFAULT nextval('"pgcompare".dc_role_id_seq'::regclass),
  "role_name" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "role_code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "status" varchar(1) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "role_desc" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "type" int2 NOT NULL,
  "create_id" int8 NOT NULL,
  "create_by" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "update_id" int8,
  "update_by" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6),
  "is_deleted" int2 DEFAULT '0'::smallint,
  "delete_time" timestamp(6)
)
;
COMMENT ON TABLE "pgcompare"."dc_role" IS '角色表';

-- ----------------------------
-- Table structure for dc_role_resource
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_role_resource";
CREATE TABLE "pgcompare"."dc_role_resource" (
  "id" int8 NOT NULL DEFAULT nextval('"pgcompare".dc_role_resource_id_seq'::regclass),
  "role_id" int8 NOT NULL,
  "resource_id" int8 NOT NULL,
  "create_id" int8,
  "create_by" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "update_id" int8,
  "update_by" varchar(16) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "is_deleted" int2 NOT NULL DEFAULT '0'::smallint,
  "delete_time" timestamp(6)
)
;
COMMENT ON TABLE "pgcompare"."dc_role_resource" IS '角色资源关联表';

-- ----------------------------
-- Table structure for dc_source
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_source";
CREATE TABLE "pgcompare"."dc_source" (
  "tid" int8,
  "table_name" text COLLATE "pg_catalog"."default",
  "batch_nbr" int4,
  "pk" jsonb,
  "pk_hash" varchar(100) COLLATE "pg_catalog"."default",
  "column_hash" varchar(100) COLLATE "pg_catalog"."default",
  "compare_result" char(1) COLLATE "pg_catalog"."default",
  "thread_nbr" int4
)
;

-- ----------------------------
-- Table structure for dc_table
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_table";
CREATE TABLE "pgcompare"."dc_table" (
  "pid" int8 NOT NULL DEFAULT 1,
  "tid" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "table_alias" text COLLATE "pg_catalog"."default",
  "status" varchar(10) COLLATE "pg_catalog"."default" DEFAULT 'disabled'::character varying,
  "batch_nbr" int4 DEFAULT 1,
  "parallel_degree" int4 DEFAULT 1
)
;

-- ----------------------------
-- Table structure for dc_table_column
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_table_column";
CREATE TABLE "pgcompare"."dc_table_column" (
  "tid" int8 NOT NULL,
  "column_id" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "column_alias" text COLLATE "pg_catalog"."default" NOT NULL,
  "status" varchar(15) COLLATE "pg_catalog"."default" DEFAULT 'compare'::character varying
)
;

-- ----------------------------
-- Table structure for dc_table_column_map
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_table_column_map";
CREATE TABLE "pgcompare"."dc_table_column_map" (
  "tid" int8 NOT NULL,
  "column_id" int8 NOT NULL,
  "column_origin" varchar(10) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'source'::character varying,
  "column_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "data_type" text COLLATE "pg_catalog"."default" NOT NULL,
  "data_class" varchar(20) COLLATE "pg_catalog"."default" DEFAULT 'string'::character varying,
  "data_length" int4,
  "number_precision" int4,
  "number_scale" int4,
  "column_nullable" bool DEFAULT true,
  "column_primarykey" bool DEFAULT false,
  "map_expression" text COLLATE "pg_catalog"."default",
  "supported" bool DEFAULT true,
  "preserve_case" bool DEFAULT false,
  "map_type" varchar(15) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'column'::character varying
)
;

-- ----------------------------
-- Table structure for dc_table_history
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_table_history";
CREATE TABLE "pgcompare"."dc_table_history" (
  "tid" int8 NOT NULL,
  "load_id" varchar(100) COLLATE "pg_catalog"."default",
  "batch_nbr" int4 NOT NULL,
  "start_dt" timestamptz(6) NOT NULL,
  "end_dt" timestamptz(6),
  "action_result" jsonb,
  "action_type" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "row_count" int8
)
;

-- ----------------------------
-- Table structure for dc_table_map
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_table_map";
CREATE TABLE "pgcompare"."dc_table_map" (
  "tid" int8 NOT NULL,
  "dest_type" varchar(20) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'target'::character varying,
  "schema_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "table_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "parallel_degree" int4 DEFAULT 1,
  "mod_column" varchar(200) COLLATE "pg_catalog"."default",
  "table_filter" varchar(200) COLLATE "pg_catalog"."default",
  "schema_preserve_case" bool DEFAULT false,
  "table_preserve_case" bool DEFAULT false
)
;

-- ----------------------------
-- Table structure for dc_target
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_target";
CREATE TABLE "pgcompare"."dc_target" (
  "tid" int8,
  "table_name" text COLLATE "pg_catalog"."default",
  "batch_nbr" int4,
  "pk" jsonb,
  "pk_hash" varchar(100) COLLATE "pg_catalog"."default",
  "column_hash" varchar(100) COLLATE "pg_catalog"."default",
  "compare_result" char(1) COLLATE "pg_catalog"."default",
  "thread_nbr" int4
)
;

-- ----------------------------
-- Table structure for dc_user
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_user";
CREATE TABLE "pgcompare"."dc_user" (
  "id" int8 NOT NULL DEFAULT nextval('"pgcompare".dc_user_id_seq'::regclass),
  "nick_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "user_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "status" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "otp_secret" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "user_gender" varchar(2) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "user_phone" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "user_email" varchar(30) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "last_login_time" timestamp(6),
  "last_login_ip" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_id" int8,
  "create_by" varchar(12) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_time" timestamp(6),
  "update_id" int8,
  "update_by" varchar(12) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "update_time" timestamp(6),
  "is_deleted" int2,
  "delete_time" timestamp(6)
)
;
COMMENT ON TABLE "pgcompare"."dc_user" IS '用户表';

-- ----------------------------
-- Table structure for dc_user_role
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."dc_user_role";
CREATE TABLE "pgcompare"."dc_user_role" (
  "id" int8 NOT NULL DEFAULT nextval('"pgcompare".dc_user_role_id_seq'::regclass),
  "user_id" int8 NOT NULL,
  "role_id" int8 NOT NULL,
  "create_id" int8,
  "create_by" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "update_id" int8,
  "update_by" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6),
  "is_deleted" int2 NOT NULL DEFAULT '0'::smallint,
  "delete_time" timestamp(6)
)
;
COMMENT ON TABLE "pgcompare"."dc_user_role" IS '用户角色关联表';

-- ----------------------------
-- Table structure for job_data_contrast
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."job_data_contrast";
CREATE TABLE "pgcompare"."job_data_contrast" (
  "id" int8 NOT NULL DEFAULT nextval('"pgcompare".job_data_contrast_id_seq'::regclass),
  "task_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "reader_datasource_id" int8 NOT NULL,
  "writer_datasource_id" int8 NOT NULL,
  "reader_schema" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "writer_schema" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP(0),
  "update_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP(0),
  "meta_type" varchar(10) COLLATE "pg_catalog"."default",
  "pid" int8
)
;

-- ----------------------------
-- Table structure for job_jdbc_datasource
-- ----------------------------
DROP TABLE IF EXISTS "pgcompare"."job_jdbc_datasource";
CREATE TABLE "pgcompare"."job_jdbc_datasource" (
  "id" int8 NOT NULL DEFAULT nextval('"pgcompare".job_jdbc_datasource_id_seq'::regclass),
  "datasource_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "datasource_group" varchar(200) COLLATE "pg_catalog"."default" DEFAULT 'Default'::character varying,
  "jdbc_username" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jdbc_password" varchar(200) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jdbc_url" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "jdbc_driver_class" varchar(200) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "status" numeric(1,0) NOT NULL DEFAULT 1,
  "create_by" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_date" timestamp(6) DEFAULT CURRENT_TIMESTAMP(0),
  "update_by" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "update_date" timestamp(6),
  "comments" varchar(1000) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "datasource" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "zk_adress" varchar(200) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "database_name" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."common_data_id_seq"
OWNED BY "pgcompare"."common_data"."id";
SELECT setval('"pgcompare"."common_data_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."configurations_config_id_seq"
OWNED BY "pgcompare"."dc_configurations"."config_id";
SELECT setval('"pgcompare"."configurations_config_id_seq"', 45, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_config_id_seq"
OWNED BY "pgcompare"."dc_config"."id";
SELECT setval('"pgcompare"."dc_config_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_operation_log_id_seq"
OWNED BY "pgcompare"."dc_operation_log"."id";
SELECT setval('"pgcompare"."dc_operation_log_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_project_pid_seq"
OWNED BY "pgcompare"."dc_project"."pid";
SELECT setval('"pgcompare"."dc_project_pid_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_reconciliation_results_id_seq"
OWNED BY "pgcompare"."dc_reconciliation_results"."id";
SELECT setval('"pgcompare"."dc_reconciliation_results_id_seq"', 48, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_resource_id_seq"
OWNED BY "pgcompare"."dc_resource"."id";
SELECT setval('"pgcompare"."dc_resource_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_result_cid_seq"
OWNED BY "pgcompare"."dc_result"."cid";
SELECT setval('"pgcompare"."dc_result_cid_seq"', 433, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_role_id_seq"
OWNED BY "pgcompare"."dc_role"."id";
SELECT setval('"pgcompare"."dc_role_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_role_resource_id_seq"
OWNED BY "pgcompare"."dc_role_resource"."id";
SELECT setval('"pgcompare"."dc_role_resource_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_table_column_column_id_seq"
OWNED BY "pgcompare"."dc_table_column"."column_id";
SELECT setval('"pgcompare"."dc_table_column_column_id_seq"', 999, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_table_tid_seq"
OWNED BY "pgcompare"."dc_table"."tid";
SELECT setval('"pgcompare"."dc_table_tid_seq"', 387, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_user_id_seq"
OWNED BY "pgcompare"."dc_user"."id";
SELECT setval('"pgcompare"."dc_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."dc_user_role_id_seq"
OWNED BY "pgcompare"."dc_user_role"."id";
SELECT setval('"pgcompare"."dc_user_role_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."job_data_contrast_id_seq"
OWNED BY "pgcompare"."job_data_contrast"."id";
SELECT setval('"pgcompare"."job_data_contrast_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "pgcompare"."job_jdbc_datasource_id_seq"
OWNED BY "pgcompare"."job_jdbc_datasource"."id";
SELECT setval('"pgcompare"."job_jdbc_datasource_id_seq"', 2, true);

-- ----------------------------
-- Indexes structure for table dc_config
-- ----------------------------
CREATE UNIQUE INDEX "param_key_idx" ON "pgcompare"."dc_config" USING btree (
  "param_key" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table dc_config
-- ----------------------------
ALTER TABLE "pgcompare"."dc_config" ADD CONSTRAINT "dc_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table dc_configurations
-- ----------------------------
ALTER TABLE "pgcompare"."dc_configurations" ADD CONSTRAINT "configurations_pkey" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table dc_operation_log
-- ----------------------------
ALTER TABLE "pgcompare"."dc_operation_log" ADD CONSTRAINT "dc_operation_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table dc_project
-- ----------------------------
ALTER TABLE "pgcompare"."dc_project" ADD CONSTRAINT "dc_project_pk" PRIMARY KEY ("pid");

-- ----------------------------
-- Primary Key structure for table dc_reconciliation_results
-- ----------------------------
ALTER TABLE "pgcompare"."dc_reconciliation_results" ADD CONSTRAINT "reconciliation_results_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table dc_resource
-- ----------------------------
CREATE INDEX "dc_resource_ui_path_idx" ON "pgcompare"."dc_resource" USING btree (
  "ui_path" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table dc_resource
-- ----------------------------
ALTER TABLE "pgcompare"."dc_resource" ADD CONSTRAINT "dc_resource_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table dc_result
-- ----------------------------
CREATE INDEX "dc_result_idx1" ON "pgcompare"."dc_result" USING btree (
  "table_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "compare_start" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table dc_result
-- ----------------------------
ALTER TABLE "pgcompare"."dc_result" ADD CONSTRAINT "dc_result_pk" PRIMARY KEY ("cid");

-- ----------------------------
-- Primary Key structure for table dc_role
-- ----------------------------
ALTER TABLE "pgcompare"."dc_role" ADD CONSTRAINT "dc_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table dc_role_resource
-- ----------------------------
ALTER TABLE "pgcompare"."dc_role_resource" ADD CONSTRAINT "dc_role_resource_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table dc_table
-- ----------------------------
CREATE INDEX "dc_table_idx1" ON "pgcompare"."dc_table" USING btree (
  "table_alias" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table dc_table
-- ----------------------------
ALTER TABLE "pgcompare"."dc_table" ADD CONSTRAINT "dc_table_pk" PRIMARY KEY ("tid");

-- ----------------------------
-- Indexes structure for table dc_table_column
-- ----------------------------
CREATE INDEX "dc_table_column_idx1" ON "pgcompare"."dc_table_column" USING btree (
  "column_alias" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "tid" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "column_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table dc_table_column
-- ----------------------------
ALTER TABLE "pgcompare"."dc_table_column" ADD CONSTRAINT "dc_table_column_pk" PRIMARY KEY ("column_id");

-- ----------------------------
-- Primary Key structure for table dc_table_column_map
-- ----------------------------
ALTER TABLE "pgcompare"."dc_table_column_map" ADD CONSTRAINT "dc_table_column_map_pk" PRIMARY KEY ("column_id", "column_origin", "column_name");

-- ----------------------------
-- Indexes structure for table dc_table_history
-- ----------------------------
CREATE INDEX "dc_table_history_idx1" ON "pgcompare"."dc_table_history" USING btree (
  "tid" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "start_dt" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table dc_table_map
-- ----------------------------
ALTER TABLE "pgcompare"."dc_table_map" ADD CONSTRAINT "dc_table_map_pk" PRIMARY KEY ("tid", "dest_type", "schema_name", "table_name");

-- ----------------------------
-- Primary Key structure for table dc_user
-- ----------------------------
ALTER TABLE "pgcompare"."dc_user" ADD CONSTRAINT "dc_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table dc_user_role
-- ----------------------------
ALTER TABLE "pgcompare"."dc_user_role" ADD CONSTRAINT "dc_user_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table job_data_contrast
-- ----------------------------
ALTER TABLE "pgcompare"."job_data_contrast" ADD CONSTRAINT "job_data_contrast_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table job_jdbc_datasource
-- ----------------------------
ALTER TABLE "pgcompare"."job_jdbc_datasource" ADD CONSTRAINT "job_jdbc_datasource_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table dc_table_column
-- ----------------------------
ALTER TABLE "pgcompare"."dc_table_column" ADD CONSTRAINT "dc_table_column_fk" FOREIGN KEY ("tid") REFERENCES "pgcompare"."dc_table" ("tid") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table dc_table_column_map
-- ----------------------------
ALTER TABLE "pgcompare"."dc_table_column_map" ADD CONSTRAINT "dc_table_column_map_fk" FOREIGN KEY ("column_id") REFERENCES "pgcompare"."dc_table_column" ("column_id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table dc_table_map
-- ----------------------------
ALTER TABLE "pgcompare"."dc_table_map" ADD CONSTRAINT "dc_table_map_fk" FOREIGN KEY ("tid") REFERENCES "pgcompare"."dc_table" ("tid") ON DELETE CASCADE ON UPDATE NO ACTION;
