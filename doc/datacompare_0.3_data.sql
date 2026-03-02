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

 Date: 05/02/2026 14:57:30
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
-- Records of common_data
-- ----------------------------

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
-- Records of dc_config
-- ----------------------------

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
-- Records of dc_configurations
-- ----------------------------
INSERT INTO "pgcompare"."dc_configurations" VALUES (39, 'target-type', 'oracle', 'target', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (40, 'target-user', 'testcompare', 'target', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (41, 'batch-compare-size', '2000', 'system', NULL, '2025-06-26 15:49:24.875', '2025-06-26 15:49:24.875');
INSERT INTO "pgcompare"."dc_configurations" VALUES (42, 'batch-offset-size', '0', 'system', NULL, '2025-09-28 11:28:17.575', '2025-09-28 11:28:17.575');
INSERT INTO "pgcompare"."dc_configurations" VALUES (43, 'batch-check-size', '1000', 'system', NULL, '2025-09-22 15:49:24.875', '2025-09-22 15:49:24.875');
INSERT INTO "pgcompare"."dc_configurations" VALUES (1, 'project', '2', 'baksystem', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (2, 'batch-fetch-size', '2000', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (3, 'batch-commit-size', '2000', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (4, 'batch-progress-report-size', '1000000', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (5, 'database-sort', 'true', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (6, 'loader-threads', '0', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (7, 'log-destination', 'stdout', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (8, 'log-level', 'info', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (9, 'message-queue-size', '1000', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (10, 'number-cast', 'notation', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (11, 'observer-throttle', 'true', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (12, 'observer-throttle-size', '2000000', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (13, 'observer-vacuum', 'true', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (14, 'stage-table-parallel', '0', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (15, 'standard-number-format', '0000000000000000000000.0000000000000000000000', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (16, 'repo-dbname', 'pgcompare', 'repository', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (17, 'repo-host', 'localhost', 'repository', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (18, 'repo-password', 'postgres', 'repository', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (19, 'repo-port', '5432', 'repository', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (20, 'repo-schema', 'pgcompare', 'repository', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (21, 'repo-sslmode', 'disable', 'repository', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (22, 'repo-user', 'postgres', 'repository', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (23, 'source-database-hash', 'true', 'source', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (24, 'source-dbname', 'testcompare', 'source', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (25, 'source-host', 'localhost', 'source', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (26, 'source-password', 'postgres', 'source', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (27, 'source-port', '5432', 'source', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (28, 'source-schema', 'public', 'source', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (29, 'source-sslmode', 'disable', 'source', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (30, 'source-type', 'postgres', 'source', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (31, 'source-user', 'postgres', 'source', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (32, 'target-database-hash', 'true', 'target', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (33, 'target-dbname', 'orcl', 'target', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (34, 'target-host', 'localhost', 'target', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (35, 'target-password', 'testcompare', 'target', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (36, 'target-port', '1521', 'target', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (37, 'target-schema', 'testcompare', 'target', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (38, 'target-sslmode', 'disable', 'target', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');
INSERT INTO "pgcompare"."dc_configurations" VALUES (44, 'float-cast', 'notation', 'system', NULL, '2025-01-03 17:56:44.584', '2025-01-03 17:56:44.584');

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
-- Records of dc_operation_log
-- ----------------------------

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
-- Records of dc_project
-- ----------------------------
INSERT INTO "pgcompare"."dc_project" OVERRIDING SYSTEM VALUE VALUES (1, 'default', NULL);
INSERT INTO "pgcompare"."dc_project" OVERRIDING SYSTEM VALUE VALUES (2, 'datacompareceTest', NULL);
INSERT INTO "pgcompare"."dc_project" OVERRIDING SYSTEM VALUE VALUES (3, 'datacompareceTest2', NULL);
INSERT INTO "pgcompare"."dc_project" OVERRIDING SYSTEM VALUE VALUES (4, 'datacompareceTest3', NULL);
INSERT INTO "pgcompare"."dc_project" OVERRIDING SYSTEM VALUE VALUES (5, 'datacompareceTest4', NULL);
INSERT INTO "pgcompare"."dc_project" OVERRIDING SYSTEM VALUE VALUES (7, '测试001', NULL);
INSERT INTO "pgcompare"."dc_project" OVERRIDING SYSTEM VALUE VALUES (8, '执行一下看看', NULL);
INSERT INTO "pgcompare"."dc_project" OVERRIDING SYSTEM VALUE VALUES (10, '测试新', NULL);
INSERT INTO "pgcompare"."dc_project" OVERRIDING SYSTEM VALUE VALUES (11, '测试id为0', NULL);

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
-- Records of dc_reconciliation_results
-- ----------------------------
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (1, 2, 370, 'students', '{"id": 4}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.0000000000e+01","target":"2.4000000000e+01"}}]', '2025-12-17 15:15:21.530919+08', '2025-12-17 15:15:21.530919+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (2, 2, 370, 'students', '{"id": 5}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.5000000000e+01"}}]', '2025-12-17 15:15:21.530919+08', '2025-12-17 15:15:21.530919+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (3, 2, 370, 'students', '{"id": 2}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.3000000000e+01"}}]', '2025-12-17 15:15:21.530919+08', '2025-12-17 15:15:21.530919+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (4, 2, 369, 'employees', '{"id": 3}', 'out-of-sync', 0, 1, 0, 0, '[{"department":{"source":"财务部","target":"人事部"}},{"salary":{"source":"8.5000000000e+03","target":"6.8000000000e+03"}}]', '2025-12-17 15:15:21.61144+08', '2025-12-17 15:15:21.61144+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (5, 2, 369, 'employees', '{"id": 6}', 'out-of-sync', 0, 1, 0, 0, '[{"salary":{"source":"7.8000000000e+03","target":"1.7800000000e+04"}}]', '2025-12-17 15:15:21.61144+08', '2025-12-17 15:15:21.61144+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (6, 3, 372, 'students', '{"id": 4}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.0000000000e+01","target":"2.4000000000e+01"}}]', '2025-12-17 15:20:13.09878+08', '2025-12-17 15:20:13.09878+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (7, 3, 372, 'students', '{"id": 5}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.5000000000e+01"}}]', '2025-12-17 15:20:13.09878+08', '2025-12-17 15:20:13.09878+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (8, 3, 372, 'students', '{"id": 2}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.3000000000e+01"}}]', '2025-12-17 15:20:13.09878+08', '2025-12-17 15:20:13.09878+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (9, 3, 371, 'employees', '{"id": 3}', 'out-of-sync', 0, 1, 0, 0, '[{"department":{"source":"财务部","target":"人事部"}},{"salary":{"source":"8.5000000000e+03","target":"6.8000000000e+03"}}]', '2025-12-17 15:20:13.163356+08', '2025-12-17 15:20:13.163356+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (10, 3, 371, 'employees', '{"id": 6}', 'out-of-sync', 0, 1, 0, 0, '[{"salary":{"source":"7.8000000000e+03","target":"1.7800000000e+04"}}]', '2025-12-17 15:20:13.163356+08', '2025-12-17 15:20:13.163356+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (11, 4, 374, 'students', '{"id": 4}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.0000000000e+01","target":"2.4000000000e+01"}}]', '2025-12-17 17:59:01.479061+08', '2025-12-17 17:59:01.479061+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (12, 4, 374, 'students', '{"id": 5}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.5000000000e+01"}}]', '2025-12-17 17:59:01.479061+08', '2025-12-17 17:59:01.479061+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (13, 4, 374, 'students', '{"id": 2}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.3000000000e+01"}}]', '2025-12-17 17:59:01.479061+08', '2025-12-17 17:59:01.479061+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (14, 4, 373, 'employees', '{"id": 3}', 'out-of-sync', 0, 1, 0, 0, '[{"department":{"source":"财务部","target":"人事部"}},{"salary":{"source":"8.5000000000e+03","target":"6.8000000000e+03"}}]', '2025-12-17 17:59:01.543876+08', '2025-12-17 17:59:01.543876+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (15, 4, 373, 'employees', '{"id": 6}', 'out-of-sync', 0, 1, 0, 0, '[{"salary":{"source":"7.8000000000e+03","target":"1.7800000000e+04"}}]', '2025-12-17 17:59:01.543876+08', '2025-12-17 17:59:01.543876+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (16, 5, 376, 'students', '{"id": 4}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.0000000000e+01","target":"2.4000000000e+01"}}]', '2025-12-18 12:38:48.133142+08', '2025-12-18 12:38:48.133142+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (17, 5, 376, 'students', '{"id": 5}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.5000000000e+01"}}]', '2025-12-18 12:38:48.133142+08', '2025-12-18 12:38:48.133142+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (18, 5, 376, 'students', '{"id": 2}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.3000000000e+01"}}]', '2025-12-18 12:38:48.133142+08', '2025-12-18 12:38:48.133142+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (19, 5, 375, 'employees', '{"id": 3}', 'out-of-sync', 0, 1, 0, 0, '[{"department":{"source":"财务部","target":"人事部"}},{"salary":{"source":"8.5000000000e+03","target":"6.8000000000e+03"}}]', '2025-12-18 12:38:48.219255+08', '2025-12-18 12:38:48.219255+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (20, 5, 375, 'employees', '{"id": 6}', 'out-of-sync', 0, 1, 0, 0, '[{"salary":{"source":"7.8000000000e+03","target":"1.7800000000e+04"}}]', '2025-12-18 12:38:48.219255+08', '2025-12-18 12:38:48.219255+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (26, 7, 379, 'employees', '{"id": 3}', 'out-of-sync', 0, 1, 0, 0, '[{"department":{"source":"人事部","target":"财务部"}},{"salary":{"source":"6.8000000000e+03","target":"8.5000000000e+03"}}]', '2025-12-22 16:46:52.146281+08', '2025-12-22 16:46:52.146281+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (27, 7, 379, 'employees', '{"id": 6}', 'out-of-sync', 0, 1, 0, 0, '[{"salary":{"source":"1.7800000000e+04","target":"7.8000000000e+03"}}]', '2025-12-22 16:46:52.146281+08', '2025-12-22 16:46:52.146281+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (28, 7, 380, 'students', '{"id": 4}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.4000000000e+01","target":"2.0000000000e+01"}}]', '2025-12-22 16:46:52.214674+08', '2025-12-22 16:46:52.214674+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (29, 7, 380, 'students', '{"id": 5}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.5000000000e+01","target":"2.1000000000e+01"}}]', '2025-12-22 16:46:52.214674+08', '2025-12-22 16:46:52.214674+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (30, 7, 380, 'students', '{"id": 2}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.3000000000e+01","target":"2.1000000000e+01"}}]', '2025-12-22 16:46:52.214674+08', '2025-12-22 16:46:52.214674+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (31, 8, 381, 'students', '{"id": 4}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.0000000000e+01","target":"2.4000000000e+01"}}]', '2025-12-22 17:03:57.096403+08', '2025-12-22 17:03:57.096403+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (32, 8, 381, 'students', '{"id": 5}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.5000000000e+01"}}]', '2025-12-22 17:03:57.096403+08', '2025-12-22 17:03:57.096403+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (33, 8, 381, 'students', '{"id": 2}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.3000000000e+01"}}]', '2025-12-22 17:03:57.096403+08', '2025-12-22 17:03:57.096403+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (39, 10, 384, 'employees', '{"id": 3}', 'out-of-sync', 0, 1, 0, 0, '[{"department":{"source":"人事部","target":"财务部"}},{"salary":{"source":"6.8000000000e+03","target":"8.5000000000e+03"}}]', '2025-12-24 14:08:04.607715+08', '2025-12-24 14:08:04.607715+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (40, 10, 384, 'employees', '{"id": 6}', 'out-of-sync', 0, 1, 0, 0, '[{"salary":{"source":"1.7800000000e+04","target":"7.8000000000e+03"}}]', '2025-12-24 14:08:04.607715+08', '2025-12-24 14:08:04.607715+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (41, 10, 385, 'students', '{"id": 4}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.4000000000e+01","target":"2.0000000000e+01"}}]', '2025-12-24 14:08:04.683762+08', '2025-12-24 14:08:04.683762+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (42, 10, 385, 'students', '{"id": 5}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.5000000000e+01","target":"2.1000000000e+01"}}]', '2025-12-24 14:08:04.683762+08', '2025-12-24 14:08:04.683762+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (43, 10, 385, 'students', '{"id": 2}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.3000000000e+01","target":"2.1000000000e+01"}}]', '2025-12-24 14:08:04.683762+08', '2025-12-24 14:08:04.683762+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (44, 11, 386, 'employees', '{"id": 3}', 'out-of-sync', 0, 1, 0, 0, '[{"department":{"source":"财务部","target":"人事部"}},{"salary":{"source":"8.5000000000e+03","target":"6.8000000000e+03"}}]', '2025-12-26 09:19:35.710857+08', '2025-12-26 09:19:35.710857+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (45, 11, 386, 'employees', '{"id": 6}', 'out-of-sync', 0, 1, 0, 0, '[{"salary":{"source":"7.8000000000e+03","target":"1.7800000000e+04"}}]', '2025-12-26 09:19:35.710857+08', '2025-12-26 09:19:35.710857+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (46, 11, 387, 'students', '{"id": 4}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.0000000000e+01","target":"2.4000000000e+01"}}]', '2025-12-26 09:19:35.789169+08', '2025-12-26 09:19:35.789169+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (47, 11, 387, 'students', '{"id": 5}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.5000000000e+01"}}]', '2025-12-26 09:19:35.789169+08', '2025-12-26 09:19:35.789169+08');
INSERT INTO "pgcompare"."dc_reconciliation_results" VALUES (48, 11, 387, 'students', '{"id": 2}', 'out-of-sync', 0, 1, 0, 0, '[{"age":{"source":"2.1000000000e+01","target":"2.3000000000e+01"}}]', '2025-12-26 09:19:35.789169+08', '2025-12-26 09:19:35.789169+08');

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
-- Records of dc_resource
-- ----------------------------
INSERT INTO "pgcompare"."dc_resource" VALUES (1, 0, 'home/', '2', '1', '首页', 'home', '/home', 'layout.base$view.home', '{"iconType": "1","icon": "mdi:monitor-dashboard", "order": 0, "title": "home", "i18nKey": "route.home"}', 1, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (2, 0, '/exception', '1', '1', '异常页面', 'exception', '/exception', 'layout.base', '{"iconType": "1","icon": "ant-design:exception-outlined", "order": 7, "title": "exception", "i18nKey": "route.exception"}', 7, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (3, 2, '/exception/403', '2', '1', '403', 'exception_403', '/exception/403', 'view.403', '{"iconType": "1","icon": "ic:baseline-block", "title": "exception_403", "i18nKey": "route.exception_403"}', 1, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (4, 2, '/exception/404', '2', '1', '404', 'exception_404', '/exception/404', 'view.404', '{"iconType": "1","icon": "ic:baseline-web-asset-off", "title": "exception_404", "i18nKey": "route.exception_404"}', 2, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (5, 2, '/exception/500', '2', '1', '500', 'exception_500', '/exception/500', 'view.500', '{"iconType": "1","icon": "ic:baseline-wifi-off", "title": "exception_500", "i18nKey": "route.exception_500"}', 3, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (6, 0, '/about', '2', '1', '关于', 'about', '/about', 'layout.base$view.about', '{"iconType": "1","icon": "fluent:book-information-24-regular", "order": 10, "title": "about", "i18nKey": "route.about"}', 10, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-04-03 05:38:24', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (7, 0, '/function', '1', '1', '系统功能', 'function', '/function', 'layout.base', '{"iconType": "1","icon": "icon-park-outline:all-application", "order": 6, "title": "function", "i18nKey": "route.function"}', 6, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (8, 7, '/function/multi-tab', '2', '1', '多标签页', 'function_multi-tab', '/function/multi-tab', 'view.function_multi-tab', '{"iconType": "1","icon": "ic:round-tab", "title": "function_multi-tab", "i18nKey": "route.function_multi-tab", "multiTab": true, "hideInMenu": true, "activeMenu": "function_tab"}', 1, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (9, 0, '/multi-menu', '1', '1', '多级菜单', 'multi-menu', '/multi-menu', 'layout.base', '{"iconType": "1","icon": "mdi:menu", "order": 4, "title": "multi-menu", "i18nKey": "route.multi-menu"}', 4, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (10, 9, '/multi-menu/first', '1', '1', '菜单一', 'multi-menu_first', '/multi-menu/first', NULL, '{"iconType": "1","icon": "mdi:menu", "order": 1, "title": "multi-menu_first", "i18nKey": "route.multi-menu_first"}', 1, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (11, 10, '/multi-menu/first/child', '2', '1', '菜单一子菜单', 'multi-menu_first_child', '/multi-menu/first/child', 'view.multi-menu_first_child', '{"iconType": "1","icon": "mdi:menu", "order": 1, "title": "multi-menu_first_child", "i18nKey": "route.multi-menu_first_child"}', 1, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (12, 9, '/multi-menu/second', '1', '1', '菜单二', 'multi-menu_second', '/multi-menu/second', NULL, '{"iconType": "1","icon": "mdi:menu", "order": 13, "title": "multi-menu_second", "i18nKey": "route.multi-menu_second"}', 13, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (14, 12, '/multi-menu/second/child', '1', '1', '菜单二子菜单', 'multi-menu_second_child', '/multi-menu/second/child', NULL, '{"iconType": "1","icon": "mdi:menu", "order": 1, "title": "multi-menu_second_child", "i18nKey": "route.multi-menu_second_child"}', 1, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (15, 14, '/multi-menu/second/child/home', '2', '1', '菜单二子菜单首页', 'multi-menu_second_child_home', '/multi-menu/second/child/home', 'view.multi-menu_second_child_home', '{"iconType": "1","icon": "mdi:menu", "order": 1, "title": "multi-menu_second_child_home", "i18nKey": "route.multi-menu_second_child_home"}', 1, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (16, 7, '/function/tab', '2', '1', '标签页', 'function_tab', '/function/tab', 'view.function_tab', '{"iconType": "1","icon": "ic:round-tab", "title": "function_tab", "i18nKey": "route.function_tab"}', 2, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (17, 0, '/user-center', '2', '1', '个人中心', 'user-center', '/user-center', 'layout.base$view.user-center', '{"iconType": "1","icon": "mdi:monitor-dashboard", "title": "个人中心", "i18nKey": "route.user-center", "hideInMenu": true}', 1, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-04-03 05:38:50', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (18, 0, '/manage', '1', '1', '系统管理', 'manage', '/manage', 'layout.base', '{"iconType": "1","icon": "carbon:cloud-service-management", "order": 9, "title": "系统管理", "i18nKey": "route.manage"}', 9, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (19, 18, '/manage/user', '2', '1', '用户管理', 'manage_user', '/manage/user', 'view.manage_user', '{"iconType": "1","icon": "ic:round-manage-accounts", "order": 1, "title": "用户管理", "i18nKey": "route.manage_user"}', 1, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (20, 18, '/manage/role', '2', '1', '角色管理', 'manage_role', '/manage/role', 'view.manage_role', '{"iconType": "1","icon": "carbon:user-role", "order": 2, "title": "角色管理", "i18nKey": "route.manage_role"}', 2, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (21, 18, '/manage/menu', '2', '1', '菜单管理', 'manage_menu', '/manage/menu', 'view.manage_menu', '{"iconType": "1","icon": "material-symbols:route", "order": 3, "title": "菜单管理", "i18nKey": "route.manage_menu"}', 3, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 0, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (22, 18, '/manage/user-detail/:id', '3', '1', '用户详情', 'manage_user-detail', '/manage/user-detail/:id', 'view.manage_user-detail', '{"title": "manage_user-detail", "i18nKey": "route.manage_user-detail", "hideInMenu": true}', 4, 1, 'admin', 1, 'admin', '2024-03-09 08:49:27', '2024-03-09 08:49:30', 1, '2024-03-09 08:49:34');
INSERT INTO "pgcompare"."dc_resource" VALUES (23, 0, '403', '4', '1', '403', '403', '/403', 'layout.blank$view.403', '{"constant": true, "hideInMenu": true, "title": "403", "i18nKey": "route.403"}', 1, 1, 'admin', 1, 'admin', '2024-03-26 08:49:27', '2024-03-26 08:49:30', 0, NULL);
INSERT INTO "pgcompare"."dc_resource" VALUES (24, 0, '404', '4', '1', '404', '404', '/404', 'layout.blank$view.404', '{"constant": true, "hideInMenu": true, "title": "404", "i18nKey": "route.404"}', 1, 1, 'admin', 1, 'admin', '2024-03-26 08:49:27', '2024-03-26 08:49:30', 0, NULL);
INSERT INTO "pgcompare"."dc_resource" VALUES (25, 0, '500', '4', '1', '500', '500', '/500', 'layout.blank$view.500', '{"constant": true, "hideInMenu": true, "title": "500", "i18nKey": "route.500"}', 1, 1, 'admin', 1, 'admin', '2024-03-26 08:49:27', '2024-03-26 08:49:30', 0, NULL);
INSERT INTO "pgcompare"."dc_resource" VALUES (26, 0, 'login', '4', '1', '登录', 'login', '/login/:module(pwd-login|code-login|register|reset-pwd|bind-wechat)?', 'layout.blank$view.login', '{"constant": true, "hideInMenu": true, "title": "login", "i18nKey": "route.login"}', 1, 1, 'admin', 1, 'admin', '2024-03-26 08:49:27', '2024-03-26 08:49:30', 0, NULL);
INSERT INTO "pgcompare"."dc_resource" VALUES (27, 19, '/manage/user:add', '3', '1', '用户添加权限', 'manage:user:add', '', '', '', 1, 1, 'admin', 1, 'admin', '2024-04-01 08:49:27', '2024-04-04 03:29:53', 0, NULL);

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
-- Records of dc_result
-- ----------------------------
INSERT INTO "pgcompare"."dc_result" VALUES (413, 0, 367, 'employees', 'in-sync', '2025-11-14 17:05:33.078611+08', 2, 0, 0, 0, 2, 2, '2025-11-14 17:07:36.704293+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (421, 1766032720580, 376, 'students', 'out-of-sync', '2025-12-18 12:38:41.453583+08', 2, 0, 0, 3, 5, 5, '2025-12-18 12:38:44.734495+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (414, 0, 368, 'students', 'running', '2025-11-14 17:07:36.716802+08', 1, 0, 0, 0, 2, 2, NULL, NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (430, 1766556477111, 384, 'employees', 'out-of-sync', '2025-12-24 14:07:57.922193+08', 4, 0, 0, 2, 6, 6, '2025-12-24 14:08:01.197014+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (422, 1766032720580, 375, 'employees', 'out-of-sync', '2025-12-18 12:38:44.753786+08', 4, 0, 0, 2, 6, 6, '2025-12-18 12:38:47.975848+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (415, 1765955713961, 370, 'students', 'out-of-sync', '2025-12-17 15:15:14.906765+08', 2, 0, 0, 3, 5, 5, '2025-12-17 15:15:18.132593+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (431, 1766556477111, 385, 'students', 'out-of-sync', '2025-12-24 14:08:01.215569+08', 2, 0, 0, 3, 5, 5, '2025-12-24 14:08:04.441664+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (416, 1765955713961, 369, 'employees', 'out-of-sync', '2025-12-17 15:15:18.158006+08', 4, 0, 0, 2, 6, 6, '2025-12-17 15:15:21.35893+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (432, 1766711968004, 386, 'employees', 'out-of-sync', '2025-12-26 09:19:28.917945+08', 4, 0, 0, 2, 6, 6, '2025-12-26 09:19:32.254601+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (417, 1765956005436, 372, 'students', 'out-of-sync', '2025-12-17 15:20:06.402268+08', 2, 0, 0, 3, 5, 5, '2025-12-17 15:20:09.672857+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (425, 1766393204661, 379, 'employees', 'out-of-sync', '2025-12-22 16:46:45.490497+08', 4, 0, 0, 2, 6, 6, '2025-12-22 16:46:48.775926+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (433, 1766711968004, 387, 'students', 'out-of-sync', '2025-12-26 09:19:32.28198+08', 2, 0, 0, 3, 5, 5, '2025-12-26 09:19:35.537859+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (418, 1765956005436, 371, 'employees', 'out-of-sync', '2025-12-17 15:20:09.690333+08', 4, 0, 0, 2, 6, 6, '2025-12-17 15:20:12.924303+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (426, 1766393204661, 380, 'students', 'out-of-sync', '2025-12-22 16:46:48.793203+08', 2, 0, 0, 3, 5, 5, '2025-12-22 16:46:52.026786+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (427, 1766394233119, 381, 'students', 'out-of-sync', '2025-12-22 17:03:53.654961+08', 2, 0, 0, 3, 5, 5, '2025-12-22 17:03:56.933718+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (419, 1765965533988, 374, 'students', 'out-of-sync', '2025-12-17 17:58:54.817173+08', 2, 0, 0, 3, 5, 5, '2025-12-17 17:58:58.112883+08', NULL);
INSERT INTO "pgcompare"."dc_result" VALUES (420, 1765965533988, 373, 'employees', 'out-of-sync', '2025-12-17 17:58:58.134892+08', 4, 0, 0, 2, 6, 6, '2025-12-17 17:59:01.363013+08', NULL);

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
-- Records of dc_role
-- ----------------------------
INSERT INTO "pgcompare"."dc_role" VALUES (1, '超级管理员', 'SUPBER_ADMIN', '1', '权限超级大，拥有所有权限', 2, 1, 'admin', 1, 'admin', '2024-03-09 10:21:23', '2024-03-09 10:21:25', 0, NULL);
INSERT INTO "pgcompare"."dc_role" VALUES (2, '普通管理员', 'ADMIN', '1', '只拥有部分管理权限', 2, 1, 'admin', 1, 'admin', '2024-03-09 10:21:23', '2024-03-09 10:21:25', 0, NULL);

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
-- Records of dc_role_resource
-- ----------------------------
INSERT INTO "pgcompare"."dc_role_resource" VALUES (1, 1, 1, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (2, 1, 2, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (3, 1, 3, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (4, 1, 4, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (5, 1, 5, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (6, 1, 6, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (7, 1, 7, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (8, 1, 8, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (9, 1, 9, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (10, 1, 10, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (11, 1, 11, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (12, 1, 12, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (14, 1, 14, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (15, 1, 15, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (16, 1, 16, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (17, 1, 17, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (18, 1, 18, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (19, 1, 19, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (20, 1, 20, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (21, 1, 21, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (22, 1, 22, 1, 'admin', 1, 'admin', '2024-03-11 10:24:29', NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_role_resource" VALUES (23, 1, 27, 1, 'admin', 1, 'admin', '2024-04-01 10:24:29', NULL, 0, NULL);

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
-- Records of dc_source
-- ----------------------------
INSERT INTO "pgcompare"."dc_source" VALUES (370, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', '75e892df1f1b489e6a7c7a5ce1191c94', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (370, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', 'c75f9613aed54cbbebcbe513f1e4d32c', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (370, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', '4cc93c52e0c2e4697f2003c29d15ced9', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (369, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', 'a720c5d4e309153a0eb61e906a4200d3', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (369, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'bc087477ed5319c5f82dee9ca1c63df8', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (372, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', '75e892df1f1b489e6a7c7a5ce1191c94', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (372, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', 'c75f9613aed54cbbebcbe513f1e4d32c', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (372, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', '4cc93c52e0c2e4697f2003c29d15ced9', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (371, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', 'a720c5d4e309153a0eb61e906a4200d3', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (371, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'bc087477ed5319c5f82dee9ca1c63df8', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (374, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', '75e892df1f1b489e6a7c7a5ce1191c94', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (374, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', 'c75f9613aed54cbbebcbe513f1e4d32c', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (374, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', '4cc93c52e0c2e4697f2003c29d15ced9', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (373, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', 'a720c5d4e309153a0eb61e906a4200d3', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (373, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'bc087477ed5319c5f82dee9ca1c63df8', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (376, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', '75e892df1f1b489e6a7c7a5ce1191c94', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (376, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', 'c75f9613aed54cbbebcbe513f1e4d32c', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (376, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', '4cc93c52e0c2e4697f2003c29d15ced9', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (375, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', 'a720c5d4e309153a0eb61e906a4200d3', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (375, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'bc087477ed5319c5f82dee9ca1c63df8', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (379, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', '8a6236516fc20ff21b433fd14193d682', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (379, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'fc07c2017eeffc6e553abb869dbd4166', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (380, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', 'ddb81fbb51958152b17463fe543421ce', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (380, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', '0677f404982055365b8310d8f7ec1282', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (380, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', 'ed8dfd64ec0f2636c8f7fc333c23e7dd', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (381, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', '75e892df1f1b489e6a7c7a5ce1191c94', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (381, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', 'c75f9613aed54cbbebcbe513f1e4d32c', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (381, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', '4cc93c52e0c2e4697f2003c29d15ced9', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (384, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', '8a6236516fc20ff21b433fd14193d682', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (384, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'fc07c2017eeffc6e553abb869dbd4166', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (385, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', 'ddb81fbb51958152b17463fe543421ce', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (385, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', '0677f404982055365b8310d8f7ec1282', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (385, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', 'ed8dfd64ec0f2636c8f7fc333c23e7dd', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (386, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', 'a720c5d4e309153a0eb61e906a4200d3', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (386, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'bc087477ed5319c5f82dee9ca1c63df8', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (387, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', '75e892df1f1b489e6a7c7a5ce1191c94', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (387, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', 'c75f9613aed54cbbebcbe513f1e4d32c', 'n', 0);
INSERT INTO "pgcompare"."dc_source" VALUES (387, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', '4cc93c52e0c2e4697f2003c29d15ced9', 'n', 0);

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
-- Records of dc_table
-- ----------------------------
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (2, 369, 'employees', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (2, 370, 'students', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (3, 371, 'employees', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (3, 372, 'students', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (4, 373, 'employees', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (4, 374, 'students', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (5, 375, 'employees', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (5, 376, 'students', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (7, 379, 'employees', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (7, 380, 'students', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (1, 367, 'employees', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (1, 368, 'students', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (8, 381, 'students', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (10, 384, 'employees', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (10, 385, 'students', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (11, 386, 'employees', 'enabled', 1, 1);
INSERT INTO "pgcompare"."dc_table" OVERRIDING SYSTEM VALUE VALUES (11, 387, 'students', 'enabled', 1, 1);

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
-- Records of dc_table_column
-- ----------------------------
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (369, 934, 'department', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (369, 935, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (369, 936, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (369, 937, 'salary', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (370, 938, 'age', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (370, 939, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (370, 940, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (371, 941, 'department', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (371, 942, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (371, 943, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (371, 944, 'salary', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (372, 945, 'age', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (372, 946, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (372, 947, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (373, 948, 'department', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (373, 949, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (373, 950, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (373, 951, 'salary', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (374, 952, 'age', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (374, 953, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (374, 954, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (375, 955, 'department', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (375, 956, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (375, 957, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (375, 958, 'salary', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (376, 959, 'age', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (376, 960, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (376, 961, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (379, 969, 'department', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (379, 970, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (379, 971, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (379, 972, 'salary', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (380, 973, 'age', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (380, 974, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (380, 975, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (367, 927, 'department', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (367, 928, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (367, 929, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (367, 930, 'salary', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (368, 931, 'age', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (368, 932, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (368, 933, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (381, 976, 'age', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (381, 977, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (381, 978, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (384, 986, 'department', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (384, 987, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (384, 988, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (384, 989, 'salary', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (385, 990, 'age', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (385, 991, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (385, 992, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (386, 993, 'department', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (386, 994, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (386, 995, 'name', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (386, 996, 'salary', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (387, 997, 'age', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (387, 998, 'id', 'compare');
INSERT INTO "pgcompare"."dc_table_column" OVERRIDING SYSTEM VALUE VALUES (387, 999, 'name', 'compare');

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
-- Records of dc_table_column_map
-- ----------------------------
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (367, 927, 'target', 'department', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(department)=0 then '' '' else department::text end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (367, 928, 'target', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (367, 929, 'target', 'name', 'varchar', 'char', 100, 44, 22, 'f', 'f', 'coalesce(case when length(name)=0 then '' '' else name::text end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (367, 930, 'target', 'salary', 'numeric', 'numeric', 10, 10, 2, 'f', 'f', 'coalesce(trim(to_char(salary,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (368, 931, 'target', 'age', 'int4', 'numeric', 32, 32, 0, 'f', 'f', 'coalesce(trim(to_char(age,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (368, 932, 'target', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (368, 933, 'target', 'name', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(name)=0 then '' '' else name::text end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (367, 927, 'source', 'department', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(department)=0 then '' '' else coalesce(trim(department),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (367, 928, 'source', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (367, 929, 'source', 'name', 'varchar', 'char', 100, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (367, 930, 'source', 'salary', 'decimal', 'numeric', 10, 10, 2, 't', 'f', 'coalesce(if(salary=0,''0.0000000000e+00'',concat(if(salary<0, ''-'', ''''),format(abs(salary)/pow(10, floor(log10(abs(salary)))), 10),''e'',if(floor(log10(abs(salary)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(salary))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (368, 931, 'source', 'age', 'int', 'numeric', 10, 10, 0, 't', 'f', 'coalesce(if(age=0,''0.0000000000e+00'',concat(if(age<0, ''-'', ''''),format(abs(age)/pow(10, floor(log10(abs(age)))), 10),''e'',if(floor(log10(abs(age)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(age))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (368, 932, 'source', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (368, 933, 'source', 'name', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (369, 934, 'target', 'department', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(department)=0 then '' '' else coalesce(trim(department),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (369, 935, 'target', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (369, 936, 'target', 'name', 'varchar', 'char', 100, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (369, 937, 'target', 'salary', 'decimal', 'numeric', 10, 10, 2, 't', 'f', 'coalesce(if(salary=0,''0.0000000000e+00'',concat(if(salary<0, ''-'', ''''),format(abs(salary)/pow(10, floor(log10(abs(salary)))), 10),''e'',if(floor(log10(abs(salary)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(salary))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (370, 938, 'target', 'age', 'int', 'numeric', 10, 10, 0, 't', 'f', 'coalesce(if(age=0,''0.0000000000e+00'',concat(if(age<0, ''-'', ''''),format(abs(age)/pow(10, floor(log10(abs(age)))), 10),''e'',if(floor(log10(abs(age)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(age))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (370, 939, 'target', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (370, 940, 'target', 'name', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (369, 934, 'source', 'department', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(department::text),''''))=0 then '' '' else trim(department::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (369, 935, 'source', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (369, 936, 'source', 'name', 'varchar', 'char', 100, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (369, 937, 'source', 'salary', 'numeric', 'numeric', 10, 10, 2, 'f', 'f', 'coalesce(trim(to_char(salary,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (370, 938, 'source', 'age', 'int4', 'numeric', 32, 32, 0, 'f', 'f', 'coalesce(trim(to_char(age,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (370, 939, 'source', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (370, 940, 'source', 'name', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (371, 941, 'target', 'department', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(department)=0 then '' '' else coalesce(trim(department),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (371, 942, 'target', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (371, 943, 'target', 'name', 'varchar', 'char', 100, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (371, 944, 'target', 'salary', 'decimal', 'numeric', 10, 10, 2, 't', 'f', 'coalesce(if(salary=0,''0.0000000000e+00'',concat(if(salary<0, ''-'', ''''),format(abs(salary)/pow(10, floor(log10(abs(salary)))), 10),''e'',if(floor(log10(abs(salary)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(salary))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (372, 945, 'target', 'age', 'int', 'numeric', 10, 10, 0, 't', 'f', 'coalesce(if(age=0,''0.0000000000e+00'',concat(if(age<0, ''-'', ''''),format(abs(age)/pow(10, floor(log10(abs(age)))), 10),''e'',if(floor(log10(abs(age)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(age))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (372, 946, 'target', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (372, 947, 'target', 'name', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (371, 941, 'source', 'department', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(department::text),''''))=0 then '' '' else trim(department::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (371, 942, 'source', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (371, 943, 'source', 'name', 'varchar', 'char', 100, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (371, 944, 'source', 'salary', 'numeric', 'numeric', 10, 10, 2, 'f', 'f', 'coalesce(trim(to_char(salary,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (372, 945, 'source', 'age', 'int4', 'numeric', 32, 32, 0, 'f', 'f', 'coalesce(trim(to_char(age,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (372, 946, 'source', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (372, 947, 'source', 'name', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (373, 948, 'target', 'department', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(department)=0 then '' '' else coalesce(trim(department),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (373, 949, 'target', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (373, 950, 'target', 'name', 'varchar', 'char', 100, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (373, 951, 'target', 'salary', 'decimal', 'numeric', 10, 10, 2, 't', 'f', 'coalesce(if(salary=0,''0.0000000000e+00'',concat(if(salary<0, ''-'', ''''),format(abs(salary)/pow(10, floor(log10(abs(salary)))), 10),''e'',if(floor(log10(abs(salary)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(salary))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (374, 952, 'target', 'age', 'int', 'numeric', 10, 10, 0, 't', 'f', 'coalesce(if(age=0,''0.0000000000e+00'',concat(if(age<0, ''-'', ''''),format(abs(age)/pow(10, floor(log10(abs(age)))), 10),''e'',if(floor(log10(abs(age)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(age))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (374, 953, 'target', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (374, 954, 'target', 'name', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (373, 948, 'source', 'department', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(department::text),''''))=0 then '' '' else trim(department::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (373, 949, 'source', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (373, 950, 'source', 'name', 'varchar', 'char', 100, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (373, 951, 'source', 'salary', 'numeric', 'numeric', 10, 10, 2, 'f', 'f', 'coalesce(trim(to_char(salary,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (374, 952, 'source', 'age', 'int4', 'numeric', 32, 32, 0, 'f', 'f', 'coalesce(trim(to_char(age,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (374, 953, 'source', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (374, 954, 'source', 'name', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (375, 955, 'target', 'department', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(department)=0 then '' '' else coalesce(trim(department),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (375, 956, 'target', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (375, 957, 'target', 'name', 'varchar', 'char', 100, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (375, 958, 'target', 'salary', 'decimal', 'numeric', 10, 10, 2, 't', 'f', 'coalesce(if(salary=0,''0.0000000000e+00'',concat(if(salary<0, ''-'', ''''),format(abs(salary)/pow(10, floor(log10(abs(salary)))), 10),''e'',if(floor(log10(abs(salary)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(salary))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (376, 959, 'target', 'age', 'int', 'numeric', 10, 10, 0, 't', 'f', 'coalesce(if(age=0,''0.0000000000e+00'',concat(if(age<0, ''-'', ''''),format(abs(age)/pow(10, floor(log10(abs(age)))), 10),''e'',if(floor(log10(abs(age)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(age))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (376, 960, 'target', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (376, 961, 'target', 'name', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (375, 955, 'source', 'department', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(department::text),''''))=0 then '' '' else trim(department::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (375, 956, 'source', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (375, 957, 'source', 'name', 'varchar', 'char', 100, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (375, 958, 'source', 'salary', 'numeric', 'numeric', 10, 10, 2, 'f', 'f', 'coalesce(trim(to_char(salary,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (376, 959, 'source', 'age', 'int4', 'numeric', 32, 32, 0, 'f', 'f', 'coalesce(trim(to_char(age,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (376, 960, 'source', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (376, 961, 'source', 'name', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (379, 969, 'target', 'department', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(department::text),''''))=0 then '' '' else trim(department::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (379, 970, 'target', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (379, 971, 'target', 'name', 'varchar', 'char', 100, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (379, 972, 'target', 'salary', 'numeric', 'numeric', 10, 10, 2, 'f', 'f', 'coalesce(trim(to_char(salary,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (380, 973, 'target', 'age', 'int4', 'numeric', 32, 32, 0, 'f', 'f', 'coalesce(trim(to_char(age,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (380, 974, 'target', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (380, 975, 'target', 'name', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (379, 969, 'source', 'department', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(department)=0 then '' '' else coalesce(trim(department),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (379, 970, 'source', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (379, 971, 'source', 'name', 'varchar', 'char', 100, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (379, 972, 'source', 'salary', 'decimal', 'numeric', 10, 10, 2, 't', 'f', 'coalesce(if(salary=0,''0.0000000000e+00'',concat(if(salary<0, ''-'', ''''),format(abs(salary)/pow(10, floor(log10(abs(salary)))), 10),''e'',if(floor(log10(abs(salary)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(salary))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (380, 973, 'source', 'age', 'int', 'numeric', 10, 10, 0, 't', 'f', 'coalesce(if(age=0,''0.0000000000e+00'',concat(if(age<0, ''-'', ''''),format(abs(age)/pow(10, floor(log10(abs(age)))), 10),''e'',if(floor(log10(abs(age)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(age))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (380, 974, 'source', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (380, 975, 'source', 'name', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (381, 976, 'target', 'age', 'int', 'numeric', 10, 10, 0, 't', 'f', 'coalesce(if(age=0,''0.0000000000e+00'',concat(if(age<0, ''-'', ''''),format(abs(age)/pow(10, floor(log10(abs(age)))), 10),''e'',if(floor(log10(abs(age)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(age))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (381, 977, 'target', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (381, 978, 'target', 'name', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (381, 976, 'source', 'age', 'int4', 'numeric', 32, 32, 0, 'f', 'f', 'coalesce(trim(to_char(age,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (381, 977, 'source', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (381, 978, 'source', 'name', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (384, 986, 'target', 'department', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(department::text),''''))=0 then '' '' else trim(department::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (384, 987, 'target', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (384, 988, 'target', 'name', 'varchar', 'char', 100, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (384, 989, 'target', 'salary', 'numeric', 'numeric', 10, 10, 2, 'f', 'f', 'coalesce(trim(to_char(salary,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (385, 990, 'target', 'age', 'int4', 'numeric', 32, 32, 0, 'f', 'f', 'coalesce(trim(to_char(age,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (385, 991, 'target', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (385, 992, 'target', 'name', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (384, 986, 'source', 'department', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(department)=0 then '' '' else coalesce(trim(department),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (384, 987, 'source', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (384, 988, 'source', 'name', 'varchar', 'char', 100, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (384, 989, 'source', 'salary', 'decimal', 'numeric', 10, 10, 2, 't', 'f', 'coalesce(if(salary=0,''0.0000000000e+00'',concat(if(salary<0, ''-'', ''''),format(abs(salary)/pow(10, floor(log10(abs(salary)))), 10),''e'',if(floor(log10(abs(salary)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(salary))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (385, 990, 'source', 'age', 'int', 'numeric', 10, 10, 0, 't', 'f', 'coalesce(if(age=0,''0.0000000000e+00'',concat(if(age<0, ''-'', ''''),format(abs(age)/pow(10, floor(log10(abs(age)))), 10),''e'',if(floor(log10(abs(age)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(age))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (385, 991, 'source', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (385, 992, 'source', 'name', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (386, 993, 'target', 'department', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(department)=0 then '' '' else coalesce(trim(department),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (386, 994, 'target', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (386, 995, 'target', 'name', 'varchar', 'char', 100, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (386, 996, 'target', 'salary', 'decimal', 'numeric', 10, 10, 2, 't', 'f', 'coalesce(if(salary=0,''0.0000000000e+00'',concat(if(salary<0, ''-'', ''''),format(abs(salary)/pow(10, floor(log10(abs(salary)))), 10),''e'',if(floor(log10(abs(salary)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(salary))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (387, 997, 'target', 'age', 'int', 'numeric', 10, 10, 0, 't', 'f', 'coalesce(if(age=0,''0.0000000000e+00'',concat(if(age<0, ''-'', ''''),format(abs(age)/pow(10, floor(log10(abs(age)))), 10),''e'',if(floor(log10(abs(age)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(age))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (387, 998, 'target', 'id', 'int', 'numeric', 10, 10, 0, 'f', 't', 'coalesce(if(id=0,''0.0000000000e+00'',concat(if(id<0, ''-'', ''''),format(abs(id)/pow(10, floor(log10(abs(id)))), 10),''e'',if(floor(log10(abs(id)))>=0,''+'',''-''),lpad(replace(replace(convert(FORMAT(floor(log10(abs(id))), 2)/100,char),''0.'',''''),''-'',''''),2,''0''))),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (387, 999, 'target', 'name', 'varchar', 'char', 50, 44, 22, 't', 'f', 'case when length(name)=0 then '' '' else coalesce(trim(name),'' '') end', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (386, 993, 'source', 'department', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(department::text),''''))=0 then '' '' else trim(department::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (386, 994, 'source', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (386, 995, 'source', 'name', 'varchar', 'char', 100, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (386, 996, 'source', 'salary', 'numeric', 'numeric', 10, 10, 2, 'f', 'f', 'coalesce(trim(to_char(salary,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (387, 997, 'source', 'age', 'int4', 'numeric', 32, 32, 0, 'f', 'f', 'coalesce(trim(to_char(age,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (387, 998, 'source', 'id', 'int4', 'numeric', 32, 32, 0, 't', 't', 'coalesce(trim(to_char(id,''0.9999999999EEEE'')),'' '')', 't', 'f', 'column');
INSERT INTO "pgcompare"."dc_table_column_map" VALUES (387, 999, 'source', 'name', 'varchar', 'char', 50, 44, 22, 'f', 'f', 'coalesce(case when length(coalesce(trim(name::text),''''))=0 then '' '' else trim(name::text) end,'' '')', 't', 'f', 'column');

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
-- Records of dc_table_history
-- ----------------------------
INSERT INTO "pgcompare"."dc_table_history" VALUES (321, 'reconcile', 1, '2025-03-18 16:03:49.155636+08', '2025-03-18 16:03:55.667641+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (321, 'reconcile', 1, '2025-03-18 16:03:55.605105+08', '2025-03-18 16:03:55.667641+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (322, 'reconcile', 1, '2025-03-18 16:03:55.668362+08', '2025-03-18 16:03:55.708863+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (320, 'reconcile', 1, '2025-03-18 15:39:15.683084+08', '2025-03-18 15:39:22.072985+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (320, 'reconcile', 1, '2025-03-18 15:39:22.034785+08', '2025-03-18 15:39:22.072985+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (319, 'reconcile', 1, '2025-03-18 15:39:18.860532+08', '2025-03-18 15:39:22.101524+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (319, 'reconcile', 1, '2025-03-18 15:36:34.796471+08', '2025-03-18 15:39:22.101524+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (319, 'reconcile', 1, '2025-03-18 15:36:38.056871+08', '2025-03-18 15:39:22.101524+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (319, 'reconcile', 1, '2025-03-18 15:39:22.073511+08', '2025-03-18 15:39:22.101524+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (323, 'reconcile', 1, '2025-03-18 16:04:26.481085+08', '2025-03-18 16:04:33.010719+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (323, 'reconcile', 1, '2025-03-18 16:04:32.970977+08', '2025-03-18 16:04:33.010719+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (322, 'reconcile', 1, '2025-03-18 16:03:52.391453+08', '2025-03-18 16:03:55.708863+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (316, 'reconcile', 1, '2025-03-18 15:34:24.631348+08', '2025-03-18 15:35:20.597416+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (316, 'reconcile', 1, '2025-03-18 15:34:31.090975+08', '2025-03-18 15:35:20.597416+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (316, 'reconcile', 1, '2025-03-18 15:35:14.073391+08', '2025-03-18 15:35:20.597416+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (316, 'reconcile', 1, '2025-03-18 15:35:20.535153+08', '2025-03-18 15:35:20.597416+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (324, 'reconcile', 1, '2025-03-18 16:04:29.748558+08', '2025-03-18 16:04:33.042458+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (324, 'reconcile', 1, '2025-03-18 16:04:33.011432+08', '2025-03-18 16:04:33.042458+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (317, 'reconcile', 1, '2025-03-18 15:35:17.332824+08', '2025-03-18 15:35:20.629427+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (317, 'reconcile', 1, '2025-03-18 15:34:27.876605+08', '2025-03-18 15:35:20.629427+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (325, 'reconcile', 1, '2025-03-18 16:05:23.895379+08', '2025-03-18 16:05:27.17356+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (325, 'reconcile', 1, '2025-03-18 16:05:27.124182+08', '2025-03-18 16:05:27.17356+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (317, 'reconcile', 1, '2025-03-18 15:34:31.145141+08', '2025-03-18 15:35:20.629427+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (317, 'reconcile', 1, '2025-03-18 15:35:20.598545+08', '2025-03-18 15:35:20.629427+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (326, 'reconcile', 1, '2025-03-18 16:06:19.665636+08', '2025-03-18 16:06:22.942757+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (318, 'reconcile', 1, '2025-03-18 15:36:31.558815+08', '2025-03-18 15:36:38.05617+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (318, 'reconcile', 1, '2025-03-18 15:36:37.994556+08', '2025-03-18 15:36:38.05617+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (326, 'reconcile', 1, '2025-03-18 16:06:22.907836+08', '2025-03-18 16:06:22.942757+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (337, 'reconcile', 1, '2025-03-18 17:47:47.007777+08', '2025-03-18 17:47:50.230524+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (327, 'reconcile', 1, '2025-03-18 16:08:41.104069+08', '2025-03-18 16:08:47.572497+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (327, 'reconcile', 1, '2025-03-18 16:08:47.543685+08', '2025-03-18 16:08:47.572497+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (328, 'reconcile', 1, '2025-03-18 16:08:44.335502+08', '2025-03-18 16:08:47.596926+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (328, 'reconcile', 1, '2025-03-18 16:08:47.57351+08', '2025-03-18 16:08:47.596926+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (334, 'reconcile', 1, '2025-03-18 17:43:21.100673+08', '2025-03-18 17:43:21.139075+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (329, 'reconcile', 1, '2025-03-18 16:09:34.926567+08', '2025-03-18 16:09:38.136007+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (329, 'reconcile', 1, '2025-03-18 16:09:38.113054+08', '2025-03-18 16:09:38.136007+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (334, 'reconcile', 1, '2025-03-18 17:43:14.632354+08', '2025-03-18 17:43:21.139075+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (330, 'reconcile', 1, '2025-03-18 16:10:08.650458+08', '2025-03-18 16:10:11.900494+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (330, 'reconcile', 1, '2025-03-18 16:10:11.868476+08', '2025-03-18 16:10:11.900494+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (331, 'reconcile', 1, '2025-03-18 16:10:16.816552+08', '2025-03-18 16:10:20.106882+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (331, 'reconcile', 1, '2025-03-18 16:10:20.071184+08', '2025-03-18 16:10:20.106882+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (335, 'reconcile', 1, '2025-03-18 17:43:17.883051+08', '2025-03-18 17:43:21.168312+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (335, 'reconcile', 1, '2025-03-18 17:43:21.140087+08', '2025-03-18 17:43:21.168312+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (332, 'reconcile', 1, '2025-03-18 16:14:10.118031+08', '2025-03-18 16:14:16.487138+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (332, 'reconcile', 1, '2025-03-18 16:14:16.466427+08', '2025-03-18 16:14:16.487138+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (333, 'reconcile', 1, '2025-03-18 16:14:13.292639+08', '2025-03-18 16:14:16.508438+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (333, 'reconcile', 1, '2025-03-18 16:14:16.48793+08', '2025-03-18 16:14:16.508438+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (337, 'reconcile', 1, '2025-03-18 17:47:50.200983+08', '2025-03-18 17:47:50.230524+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (336, 'reconcile', 1, '2025-03-18 17:47:06.637406+08', '2025-03-18 17:47:09.947395+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (336, 'reconcile', 1, '2025-03-18 17:47:09.908535+08', '2025-03-18 17:47:09.947395+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (338, 'reconcile', 1, '2025-03-18 17:54:43.655499+08', '2025-03-18 17:54:46.966382+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (338, 'reconcile', 1, '2025-03-18 17:54:46.927877+08', '2025-03-18 17:54:46.966382+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (339, 'reconcile', 1, '2025-03-18 17:55:12.369013+08', '2025-03-18 17:55:15.631765+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (339, 'reconcile', 1, '2025-03-18 17:55:15.598025+08', '2025-03-18 17:55:15.631765+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (340, 'reconcile', 1, '2025-03-18 18:23:36.012573+08', '2025-03-18 18:23:42.522137+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (340, 'reconcile', 1, '2025-03-18 18:23:42.48441+08', '2025-03-18 18:23:42.522137+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (341, 'reconcile', 1, '2025-03-18 18:23:39.263031+08', '2025-03-19 09:36:32.774846+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (341, 'reconcile', 1, '2025-03-18 18:23:42.523579+08', '2025-03-19 09:36:32.774846+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (341, 'reconcile', 1, '2025-03-19 09:34:51.655564+08', '2025-03-19 09:36:32.774846+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (342, 'reconcile', 1, '2025-03-19 09:35:26.074112+08', '2025-03-19 09:36:32.774846+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "employees", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (343, 'reconcile', 1, '2025-03-19 09:36:32.778247+08', NULL, NULL, 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (342, 'reconcile', 1, '2025-03-19 09:36:32.784112+08', NULL, NULL, 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (344, 'reconcile', 1, '2025-03-19 09:37:35.901126+08', '2025-03-19 09:37:42.42464+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (344, 'reconcile', 1, '2025-03-19 09:37:42.384136+08', '2025-03-19 09:37:42.42464+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (344, 'reconcile', 1, '2025-03-19 09:43:55.819986+08', NULL, NULL, 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (344, 'reconcile', 1, '2025-03-19 09:45:04.923852+08', NULL, NULL, 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (345, 'reconcile', 1, '2025-03-19 09:37:39.158472+08', '2025-03-19 09:53:46.666175+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (345, 'reconcile', 1, '2025-03-19 09:37:42.42565+08', '2025-03-19 09:53:46.666175+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (345, 'reconcile', 1, '2025-03-19 09:37:50.299909+08', '2025-03-19 09:53:46.666175+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (345, 'reconcile', 1, '2025-03-19 09:44:11.428038+08', '2025-03-19 09:53:46.666175+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (345, 'reconcile', 1, '2025-03-19 09:52:26.370493+08', '2025-03-19 09:53:46.666175+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (344, 'reconcile', 1, '2025-03-19 09:53:46.680748+08', NULL, NULL, 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (353, 'reconcile', 1, '2025-03-19 16:40:56.458545+08', '2025-03-19 16:41:03.007105+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (353, 'reconcile', 1, '2025-03-19 16:41:02.953642+08', '2025-03-19 16:41:03.007105+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (346, 'reconcile', 1, '2025-03-19 09:54:40.872339+08', '2025-03-19 09:54:47.352447+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (346, 'reconcile', 1, '2025-03-19 09:54:47.292019+08', '2025-03-19 09:54:47.352447+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (347, 'reconcile', 1, '2025-03-19 09:54:44.088853+08', '2025-03-19 09:54:47.398358+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (347, 'reconcile', 1, '2025-03-19 09:54:47.353626+08', '2025-03-19 09:54:47.398358+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (354, 'reconcile', 1, '2025-03-19 16:41:03.007832+08', '2025-03-19 16:41:03.053389+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (348, 'reconcile', 1, '2025-03-19 09:55:46.022117+08', '2025-03-19 09:55:52.489603+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (348, 'reconcile', 1, '2025-03-19 09:55:52.426249+08', '2025-03-19 09:55:52.489603+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (349, 'reconcile', 1, '2025-03-19 09:55:49.244404+08', '2025-03-19 09:55:52.545915+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (349, 'reconcile', 1, '2025-03-19 09:55:52.490885+08', '2025-03-19 09:55:52.545915+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (354, 'reconcile', 1, '2025-03-19 16:40:59.758832+08', '2025-03-19 16:41:03.053389+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (350, 'reconcile', 1, '2025-03-19 09:56:20.709495+08', '2025-03-19 09:56:23.95833+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (350, 'reconcile', 1, '2025-03-19 09:56:23.903295+08', '2025-03-19 09:56:23.95833+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (351, 'reconcile', 1, '2025-03-19 09:56:57.238126+08', '2025-03-19 09:57:00.47532+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (351, 'reconcile', 1, '2025-03-19 09:57:00.438045+08', '2025-03-19 09:57:00.47532+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (352, 'reconcile', 1, '2025-03-19 10:00:09.157608+08', '2025-03-19 10:00:12.350166+08', '{"equal": 5, "status": "success", "notEqual": 0, "tableName": "students", "compareStatus": "in-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (356, 'reconcile', 1, '2025-03-19 16:41:19.970974+08', '2025-03-19 16:41:23.274228+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (356, 'reconcile', 1, '2025-03-19 16:41:23.221272+08', '2025-03-19 16:41:23.274228+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (357, 'reconcile', 1, '2025-03-19 16:50:54.01956+08', '2025-03-19 16:51:00.788535+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (355, 'reconcile', 1, '2025-03-19 16:41:16.778335+08', '2025-03-19 16:41:23.22007+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (355, 'reconcile', 1, '2025-03-19 16:41:23.171545+08', '2025-03-19 16:41:23.22007+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (358, 'reconcile', 1, '2025-03-19 16:50:57.3481+08', '2025-03-19 16:51:00.826294+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (360, 'reconcile', 1, '2025-11-14 16:38:28.115545+08', '2025-11-14 16:39:30.0597+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (357, 'reconcile', 1, '2025-03-19 16:51:00.751453+08', '2025-03-19 16:51:00.788535+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (358, 'reconcile', 1, '2025-03-19 16:51:00.789589+08', '2025-03-19 16:51:00.826294+08', '{"equal": 0, "status": "success", "notEqual": 4, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 1, "missingTarget": 1}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (371, 'reconcile', 1, '2025-12-17 15:20:09.689408+08', '2025-12-17 15:20:13.183693+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "employees", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (370, 'reconcile', 1, '2025-12-17 15:15:14.898414+08', '2025-12-17 15:15:21.60981+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (369, 'reconcile', 1, '2025-12-17 15:15:18.156382+08', '2025-12-17 15:15:21.633202+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "employees", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (375, 'reconcile', 1, '2025-12-18 12:38:44.752583+08', '2025-12-18 12:38:48.240491+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "employees", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (359, 'reconcile', 1, '2025-11-14 16:39:06.303656+08', '2025-11-14 16:39:30.039176+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (359, 'reconcile', 1, '2025-11-14 16:38:24.806512+08', '2025-11-14 16:39:30.039176+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (359, 'reconcile', 1, '2025-11-14 16:39:20.065354+08', '2025-11-14 16:39:30.039176+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (359, 'reconcile', 1, '2025-11-14 16:39:30.006583+08', '2025-11-14 16:39:30.039176+08', '{"equal": 0, "status": "success", "notEqual": 2, "tableName": "employees", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (360, 'reconcile', 1, '2025-11-14 16:39:06.359092+08', '2025-11-14 16:39:30.0597+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (360, 'reconcile', 1, '2025-11-14 16:39:20.095687+08', '2025-11-14 16:39:30.0597+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (360, 'reconcile', 1, '2025-11-14 16:39:30.040512+08', '2025-11-14 16:39:30.0597+08', '{"equal": 0, "status": "success", "notEqual": 3, "tableName": "students", "compareStatus": "out-of-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (361, 'reconcile', 1, '2025-11-14 16:45:16.159132+08', '2025-11-14 16:47:57.504517+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "employees", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (362, 'reconcile', 1, '2025-11-14 16:47:57.520199+08', NULL, NULL, 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (363, 'reconcile', 1, '2025-11-14 16:48:47.003269+08', '2025-11-14 16:49:08.586288+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "employees", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (364, 'reconcile', 1, '2025-11-14 16:49:08.597502+08', NULL, NULL, 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (365, 'reconcile', 1, '2025-11-14 17:03:49.50486+08', '2025-11-14 17:05:03.841638+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "employees", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (366, 'reconcile', 1, '2025-11-14 17:05:03.857157+08', NULL, NULL, 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (367, 'reconcile', 1, '2025-11-14 17:05:33.045351+08', '2025-11-14 17:07:36.711073+08', '{"equal": 2, "status": "success", "notEqual": 0, "tableName": "employees", "compareStatus": "in-sync", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (368, 'reconcile', 1, '2025-11-14 17:07:36.713574+08', '2025-11-14 17:08:20.201667+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (374, 'reconcile', 1, '2025-12-17 17:58:54.812336+08', '2025-12-17 17:59:01.542424+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (372, 'reconcile', 1, '2025-12-17 15:20:06.398278+08', '2025-12-17 15:20:13.162222+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (381, 'reconcile', 1, '2025-12-22 17:03:53.650641+08', '2025-12-22 17:03:57.17441+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (376, 'reconcile', 1, '2025-12-18 12:38:41.450151+08', '2025-12-18 12:38:48.218022+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (373, 'reconcile', 1, '2025-12-17 17:58:58.133515+08', '2025-12-17 17:59:01.567373+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "employees", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (384, 'reconcile', 1, '2025-12-24 14:07:57.917052+08', '2025-12-24 14:08:04.68196+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "employees", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (379, 'reconcile', 1, '2025-12-22 16:46:45.485702+08', '2025-12-22 16:46:52.213103+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "employees", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (380, 'reconcile', 1, '2025-12-22 16:46:48.792207+08', '2025-12-22 16:46:52.241941+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (385, 'reconcile', 1, '2025-12-24 14:08:01.213984+08', '2025-12-24 14:08:04.710876+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (386, 'reconcile', 1, '2025-12-26 09:19:28.910448+08', '2025-12-26 09:19:35.787468+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "employees", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);
INSERT INTO "pgcompare"."dc_table_history" VALUES (387, 'reconcile', 1, '2025-12-26 09:19:32.280911+08', '2025-12-26 09:19:35.815596+08', '{"equal": 0, "status": "processing", "notEqual": 0, "tableName": "students", "checkResult": {}, "compareStatus": "processing", "missingSource": 0, "missingTarget": 0}', 'reconcile', 0);

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
-- Records of dc_table_map
-- ----------------------------
INSERT INTO "pgcompare"."dc_table_map" VALUES (369, 'target', 'testcompare', 'employees', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (370, 'target', 'testcompare', 'students', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (369, 'source', 'public', 'employees', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (370, 'source', 'public', 'students', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (371, 'target', 'testcompare', 'employees', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (372, 'target', 'testcompare', 'students', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (371, 'source', 'public', 'employees', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (372, 'source', 'public', 'students', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (373, 'target', 'testcompare', 'employees', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (374, 'target', 'testcompare', 'students', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (373, 'source', 'public', 'employees', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (374, 'source', 'public', 'students', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (375, 'target', 'testcompare', 'employees', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (376, 'target', 'testcompare', 'students', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (375, 'source', 'public', 'employees', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (376, 'source', 'public', 'students', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (379, 'target', 'public', 'employees', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (380, 'target', 'public', 'students', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (379, 'source', 'testcompare', 'employees', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (380, 'source', 'testcompare', 'students', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (367, 'target', 'public', 'employees', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (368, 'target', 'public', 'students', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (367, 'source', 'testcompare', 'employees', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (368, 'source', 'testcompare', 'students', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (381, 'target', 'testcompare', 'students', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (381, 'source', 'public', 'students', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (384, 'target', 'public', 'employees', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (385, 'target', 'public', 'students', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (384, 'source', 'testcompare', 'employees', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (385, 'source', 'testcompare', 'students', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (386, 'target', 'testcompare', 'employees', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (387, 'target', 'testcompare', 'students', 1, NULL, NULL, 'f', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (386, 'source', 'public', 'employees', 1, NULL, NULL, 't', 'f');
INSERT INTO "pgcompare"."dc_table_map" VALUES (387, 'source', 'public', 'students', 1, NULL, NULL, 't', 'f');

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
-- Records of dc_target
-- ----------------------------
INSERT INTO "pgcompare"."dc_target" VALUES (370, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', 'ddb81fbb51958152b17463fe543421ce', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (370, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', '0677f404982055365b8310d8f7ec1282', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (370, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', 'ed8dfd64ec0f2636c8f7fc333c23e7dd', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (369, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', '8a6236516fc20ff21b433fd14193d682', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (369, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'fc07c2017eeffc6e553abb869dbd4166', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (372, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', 'ddb81fbb51958152b17463fe543421ce', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (372, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', '0677f404982055365b8310d8f7ec1282', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (372, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', 'ed8dfd64ec0f2636c8f7fc333c23e7dd', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (371, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', '8a6236516fc20ff21b433fd14193d682', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (371, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'fc07c2017eeffc6e553abb869dbd4166', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (374, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', 'ddb81fbb51958152b17463fe543421ce', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (374, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', '0677f404982055365b8310d8f7ec1282', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (374, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', 'ed8dfd64ec0f2636c8f7fc333c23e7dd', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (373, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', '8a6236516fc20ff21b433fd14193d682', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (373, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'fc07c2017eeffc6e553abb869dbd4166', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (376, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', 'ddb81fbb51958152b17463fe543421ce', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (376, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', '0677f404982055365b8310d8f7ec1282', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (376, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', 'ed8dfd64ec0f2636c8f7fc333c23e7dd', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (375, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', '8a6236516fc20ff21b433fd14193d682', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (375, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'fc07c2017eeffc6e553abb869dbd4166', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (379, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', 'a720c5d4e309153a0eb61e906a4200d3', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (379, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'bc087477ed5319c5f82dee9ca1c63df8', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (380, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', '75e892df1f1b489e6a7c7a5ce1191c94', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (380, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', 'c75f9613aed54cbbebcbe513f1e4d32c', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (380, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', '4cc93c52e0c2e4697f2003c29d15ced9', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (381, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', 'ddb81fbb51958152b17463fe543421ce', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (381, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', '0677f404982055365b8310d8f7ec1282', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (381, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', 'ed8dfd64ec0f2636c8f7fc333c23e7dd', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (384, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', 'a720c5d4e309153a0eb61e906a4200d3', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (384, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'bc087477ed5319c5f82dee9ca1c63df8', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (385, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', '75e892df1f1b489e6a7c7a5ce1191c94', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (385, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', 'c75f9613aed54cbbebcbe513f1e4d32c', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (385, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', '4cc93c52e0c2e4697f2003c29d15ced9', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (386, 'employees', 1, '{"id": 3}', '4c93a9727d6b4558337c6ada1361b22d', '8a6236516fc20ff21b433fd14193d682', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (386, 'employees', 1, '{"id": 6}', '51c27baa33922f5df51ecc9db59510d4', 'fc07c2017eeffc6e553abb869dbd4166', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (387, 'students', 1, '{"id": 2}', 'c76c172f4fa3449f41530525a2511dff', 'ddb81fbb51958152b17463fe543421ce', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (387, 'students', 1, '{"id": 4}', '608fe08830b16108bbf606333125de30', '0677f404982055365b8310d8f7ec1282', 'n', 0);
INSERT INTO "pgcompare"."dc_target" VALUES (387, 'students', 1, '{"id": 5}', 'a6051eceb532c8cf6547634a118dcc84', 'ed8dfd64ec0f2636c8f7fc333c23e7dd', 'n', 0);

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
-- Records of dc_user
-- ----------------------------
INSERT INTO "pgcompare"."dc_user" VALUES (2, 'wjx', 'wjx', '$2a$10$qbdPPGSnLm2oQwgLXyX8wOTgVZLHnm2pqS.We5.n6do3YfVxobCUy', '1', NULL, '1', '13892700749', '123@qq.com', '2024-04-09 22:49:09', '192.168.2.128', 1, 'admin', '2024-03-09 21:56:34', NULL, NULL, NULL, 0, NULL);
INSERT INTO "pgcompare"."dc_user" VALUES (1, '管理员', 'admin', '$2a$10$qbdPPGSnLm2oQwgLXyX8wOTgVZLHnm2pqS.We5.n6do3YfVxobCUy', '1', '', '1', '13189770694', 'abc@qq.com', '2025-12-26 09:52:24.415', '10.16.6.22', 1, 'admin', '2020-01-01 19:00:00', 1, 'admin', '2024-03-10 11:42:46', 0, NULL);

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
-- Records of dc_user_role
-- ----------------------------
INSERT INTO "pgcompare"."dc_user_role" VALUES (1, 1, 1, 1, 'admin', 1, 'admin', '2024-03-09 10:37:52', '2024-03-09 10:38:04', 0, NULL);
INSERT INTO "pgcompare"."dc_user_role" VALUES (3, 2, 1, 1, 'admin', NULL, NULL, '2025-12-23 15:07:38.18', NULL, 0, NULL);

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
-- Records of job_data_contrast
-- ----------------------------
INSERT INTO "pgcompare"."job_data_contrast" VALUES (1, 'datacompareceTest4', 8, 7, 'public', 'testcompare', '2025-12-18 12:38:41', '2025-12-18 12:38:41', '1', 5);
INSERT INTO "pgcompare"."job_data_contrast" VALUES (3, '测试001', 7, 8, 'testcompare', 'public', '2025-12-22 16:46:45', '2025-12-22 16:46:45', '1', 7);
INSERT INTO "pgcompare"."job_data_contrast" VALUES (4, '执行一下看看', 8, 7, 'public', 'testcompare', '2025-12-22 17:03:53', '2025-12-22 17:03:53', '1', 8);
INSERT INTO "pgcompare"."job_data_contrast" VALUES (6, '测试新', 7, 8, 'testcompare', 'public', '2025-12-24 14:07:57', '2025-12-24 14:07:57', '1', 10);
INSERT INTO "pgcompare"."job_data_contrast" VALUES (7, '测试id为0', 8, 0, 'public', 'testcompare', '2025-12-26 09:19:28', '2025-12-26 09:19:28', '1', 11);

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
-- Records of job_jdbc_datasource
-- ----------------------------
INSERT INTO "pgcompare"."job_jdbc_datasource" VALUES (1, '本地', 'Default', 'postgres', 'postgres', 'jdbc:postgresql://localhost:5432/pgcompare', 'org.postgresql.Driver', 1, 'admin', '2024-12-31 14:38:50', NULL, NULL, NULL, 'postgresql', NULL, NULL);
INSERT INTO "pgcompare"."job_jdbc_datasource" VALUES (4, 'pgtest', 'Default', 'postgres', 'postgres', 'jdbc:postgresql://localhost:5432/testcompare', 'org.postgresql.Driver', 1, 'admin', '2024-12-31 14:41:18', NULL, NULL, NULL, 'postgresql', NULL, NULL);
INSERT INTO "pgcompare"."job_jdbc_datasource" VALUES (5, 'testcompare', 'Default', 'testcompare', 'testcompare', 'jdbc:oracle:thin:@//localhost:1521/orcl', 'oracle.jdbc.OracleDriver', 1, 'admin', '2024-12-31 14:41:18', NULL, NULL, NULL, 'oracle', NULL, NULL);
INSERT INTO "pgcompare"."job_jdbc_datasource" VALUES (2, 'testcompare', 'Default', 'CtVDUFLQeCdCmuv5OR1Q4w==', 'CtVDUFLQeCdCmuv5OR1Q4w==', 'jdbc:oracle:thin:@//localhost:1521/orcl', 'oracle.jdbc.OracleDriver', 1, 'admin', '2024-12-31 14:41:18', NULL, NULL, NULL, 'oracle', NULL, NULL);
INSERT INTO "pgcompare"."job_jdbc_datasource" VALUES (3, 'pgtest', 'Default', 'XVko54UY9nOe/3JQGQUikw==', 'XVko54UY9nOe/3JQGQUikw==', 'jdbc:postgresql://localhost:5432/testcompare', 'org.postgresql.Driver', 1, 'admin', '2024-12-31 14:41:18', NULL, NULL, NULL, 'postgresql', NULL, NULL);
INSERT INTO "pgcompare"."job_jdbc_datasource" VALUES (6, 'mysqltest', 'Default', 'yRjwDFuoPKlqya9h9H2Amg==', 'yRjwDFuoPKlqya9h9H2Amg==', 'jdbc:mysql://localhost:3306/testcompare?useSSL=false', 'com.mysql.cj.jdbc.Driver', 1, 'admin', '2024-12-31 14:41:18', NULL, NULL, NULL, 'mysql', NULL, NULL);
INSERT INTO "pgcompare"."job_jdbc_datasource" VALUES (7, 'dataCompareM', 'Default', 'root', 'root', 'jdbc:mysql://localhost:3306/testcompare?useSSL=false', 'com.mysql.cj.jdbc.Driver', 1, 'admin', '2025-12-17 15:13:42', NULL, NULL, NULL, 'mysql', NULL, NULL);
INSERT INTO "pgcompare"."job_jdbc_datasource" VALUES (8, 'dataCompareP', 'Default', 'postgres', 'postgres', 'jdbc:postgresql://localhost:5432/testcompare', 'org.postgresql.Driver', 1, 'admin', '2025-12-17 15:14:40', NULL, NULL, NULL, 'postgresql', NULL, NULL);

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
-- Auto increment value for dc_project
-- ----------------------------
SELECT setval('"pgcompare"."dc_project_pid_seq"', 11, true);

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
-- Auto increment value for dc_table
-- ----------------------------
SELECT setval('"pgcompare"."dc_table_tid_seq"', 387, true);

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
-- Auto increment value for dc_table_column
-- ----------------------------
SELECT setval('"pgcompare"."dc_table_column_column_id_seq"', 999, true);

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
