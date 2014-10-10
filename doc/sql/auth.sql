/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/8/28 15:17:29                           */
/*==============================================================*/


drop table if exists auth_customer_info;

drop table if exists auth_login_control;

drop table if exists auth_role_function_config;

drop table if exists auth_role_info;

drop table if exists auth_sys_function;

drop table if exists auth_user_cinema_config;

drop table if exists auth_user_info;

drop table if exists auth_user_level;

drop table if exists auth_user_role_config;

drop table if exists pub_error_message;

/*==============================================================*/
/* Table: auth_customer_info                                    */
/*==============================================================*/
create table auth_customer_info
(
   cst_no               varchar(4) not null comment '客户号',
   cst_name             varchar(30) not null comment '客户名称',
   cst_desc             varchar(200) comment '客户描述',
   fax                  varchar(30) comment '传真',
   phone                varchar(30) comment '电话',
   primary key (cst_no)
);

alter table auth_customer_info comment '客户信息表';

/*==============================================================*/
/* Table: auth_login_control                                    */
/*==============================================================*/
create table auth_login_control
(
   user_id              varchar(8) not null comment '用户编码',
   login_id             varchar(20) comment '登录名',
   first_login_time     varchar(14) comment '登录时间',
   last_login_time      varchar(14) comment '上次成功登陆时间',
   last_login_fail      varchar(14) comment '上次登陆失败日期',
   fail_today           int comment '当日连续登陆失败次数',
   fail_total           int comment '总计连续登陆失败次数',
   success_count        int comment '总成功登陆次数',
   freeze_time          varchar(14) comment '冻结日期',
   mac                  varchar(20) comment '登录MAC地址',
   ip_address           varchar(30) comment '登录IP',
   login_state          varchar(1) comment '登录状态（0：未登录；1：已登录）',
   primary key (user_id)
);

alter table auth_login_control comment '用户登录控制表';

/*==============================================================*/
/* Table: auth_role_function_config                             */
/*==============================================================*/
create table auth_role_function_config
(
   flow_id              int not null auto_increment comment '流水号',
   role_id              int not null comment '角色编码',
   func_cd              varchar(10) not null comment '功能编码',
   primary key (flow_id)
);

alter table auth_role_function_config comment '角色功能配置表';

/*==============================================================*/
/* Table: auth_role_info                                        */
/*==============================================================*/
create table auth_role_info
(
   role_id              int not null auto_increment comment '角色编码',
   role_name            varchar(30) comment '角色名称',
   role_desc            varchar(200) comment '角色描述',
   creator              varchar(8) not null comment '创建人',
   creattime            varchar(14) not null comment '创建时间',
   cst_no               varchar(4) comment '客户号',
   primary key (role_id)
);

alter table auth_role_info comment '角色信息表';

/*==============================================================*/
/* Table: auth_sys_function                                     */
/*==============================================================*/
create table auth_sys_function
(
   func_cd              varchar(10) not null comment '功能编码',
   f_func_id            varchar(10) comment '父功能编码',
   func_name            varchar(20) not null comment '功能名称',
   url                  varchar(200) comment '操作URL',
   icon                 varchar(50) comment '图标',
   func_type            char(1) comment '功能类型（M：菜单B：按钮）',
   primary key (func_cd)
);

alter table auth_sys_function comment '系统功能权限表';

/*==============================================================*/
/* Table: auth_user_cinema_config                               */
/*==============================================================*/
create table auth_user_cinema_config
(
   flow_id              int not null auto_increment comment '流水主键',
   user_id              varchar(8) not null comment '用户编码',
   cinema_cd            varchar(12) comment '影院编码',
   primary key (flow_id)
);

alter table auth_user_cinema_config comment '用户影院关系配置表';

/*==============================================================*/
/* Table: auth_user_info                                        */
/*==============================================================*/
create table auth_user_info
(
   user_id              varchar(8) not null comment '用户编码',
   login_id             varchar(20) not null comment '登录名',
   username             varchar(30) not null comment '用户姓名',
   password             varchar(32) not null comment '登录密码',
   user_type            int not null comment '用户类型（0：普通用户；1：客户超级用户；2：客户非超级用户）',
   effective_dt         varchar(8) comment '生效日期',
   level                int not null comment '用户等级',
   creator              varchar(8) not null comment '创建人',
   creattime            varchar(14) not null comment '创建时间',
   cst_no               varchar(4) comment '客户号',
   create_user_count    int comment '允许创建用户数',
   primary key (user_id),
   unique key uk_login_id (login_id)
);

alter table auth_user_info comment '用户信息表';

/*==============================================================*/
/* Table: auth_user_level                                       */
/*==============================================================*/
create table auth_user_level
(
   level                int not null comment '等级',
   level_name           varchar(30) not null comment '等级名称',
   level_desc           varchar(200) comment '等级描述',
   cst_no               varchar(4) not null comment '客户号',
   primary key (level, cst_no)
);

alter table auth_user_level comment '用户等级表';

/*==============================================================*/
/* Table: auth_user_role_config                                 */
/*==============================================================*/
create table auth_user_role_config
(
   flow_id              int not null auto_increment comment '流水号',
   user_id              varchar(8) not null comment '用户编码',
   role_id              int comment '角色编码',
   primary key (flow_id)
);

alter table auth_user_role_config comment '用户角色配置表';

/*==============================================================*/
/* Table: pub_error_message                                     */
/*==============================================================*/
create table pub_error_message
(
   err_code             varchar(8) not null comment '错误代码',
   err_msg              varchar(150) comment '错误显示信息',
   language             varchar(10) not null comment '错误信息语种',
   level                integer comment '错误级别(1：轻微；2：一般；3：严重）',
   primary key (err_code, language)
);

alter table pub_error_message comment '错误信息表';

alter table auth_role_function_config add constraint fk_role_function_config_func_func_id foreign key (func_cd)
      references auth_sys_function (func_cd) on delete restrict on update restrict;

alter table auth_role_function_config add constraint fk_role_function_config_role_info_role_id foreign key (role_id)
      references auth_role_info (role_id) on delete restrict on update restrict;

alter table auth_role_info add constraint fk_customer_info_role_info_cst_flow_id foreign key (cst_no)
      references auth_customer_info (cst_no) on delete restrict on update restrict;

alter table auth_user_cinema_config add constraint fk_user_user_cinema_cfg_user_id foreign key (user_id)
      references auth_user_info (user_id) on delete restrict on update restrict;

alter table auth_user_info add constraint fk_customer_info_user_info_cst_flow_id foreign key (cst_no)
      references auth_customer_info (cst_no) on delete restrict on update restrict;

alter table auth_user_role_config add constraint fk_user_fole_cfg_role_info_role_id foreign key (role_id)
      references auth_role_info (role_id) on delete restrict on update restrict;

alter table auth_user_role_config add constraint fk_user_fole_cfg_user_info_user_id foreign key (user_id)
      references auth_user_info (user_id) on delete restrict on update restrict;

