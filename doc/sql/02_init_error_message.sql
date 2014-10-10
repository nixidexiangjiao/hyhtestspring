/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/8/28 15:17:29                           */
/*==============================================================*/

/* 错误码由8位组成 - DB前缀为数据库操作错误 - BS前缀为业务错误 */
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000001', '获取图形验证码失败', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000002', '验证码与服务器验证码不匹配', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000003', '用户名或密码错误', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000004', '该用户已在其他地点登录，如果非本人操作，请联系平台解决，您的账号可能被盗', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000005', '操作权限不够', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000006', '该用户已经存在，不能重复插入', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000007', '保存用户失败，数据异常', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000008', '删除用户失败，数据异常', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000009', '该角色已经存在，不能重复插入', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000010', '保存角色失败，数据异常', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000011', '删除角色失败，数据异常', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000012', '该等级已经存在，不能重复插入', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000013', '保存等级失败，数据异常', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000014', '删除等级失败，数据异常', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000015', '密码修改失败，数据异常', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000016', '原密码不正确', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000017', '非法操作', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('BS000018', '删除客户失败，数据异常', 'zh-cn', '2');

INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('DB000001', 'get database connection error!', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('DB000002', 'set transaction\'s autocommit to false error!', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('DB000003', 'commit transaction error!', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('DB000004', 'free db connection error!', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('DB000005', 'sql query error!', 'zh-cn', '2');
INSERT INTO pub_error_message(err_code, err_msg, language, level) VALUES ('DB000006', 'sql operation error!', 'zh-cn', '2');