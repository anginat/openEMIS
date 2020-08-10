-- code here
-- Staff
UPDATE `security_functions` SET `_add` = 'Staff.add|StaffUser.add' WHERE id = 1016;
DELETE FROM `security_functions` WHERE `security_functions`.`id` = 1044;
UPDATE `security_functions` SET `order` = `order`-1 WHERE `order` >= 1018 AND `order` <= 1044;
DELETE FROM `security_role_functions` WHERE `security_function_id` = 1044;

-- Student
UPDATE `security_functions` SET `_add` = 'Students.add|StudentUser.add' WHERE id = 1012;
DELETE FROM `security_functions` WHERE `security_functions`.`id` = 1043;
UPDATE `security_functions` SET `order` = `order`-1 WHERE `order` >= 1013 AND `order` <= 1043;
DELETE FROM `security_role_functions` WHERE `security_function_id` = 1043;

-- db_patches
DELETE FROM `db_patches` WHERE `issue` = 'POCOR-3115';