
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `${tabletop}${objectNameUpper}`
-- ----------------------------
DROP TABLE IF EXISTS `${tabletop}${objectNameUpper}`;
CREATE TABLE `${tabletop}${objectNameUpper}` (
 		`${objectNameUpper}_ID` varchar(100) NOT NULL,
	<#list fieldList as var>
		<#if var[1] == 'Integer'>
		`${var[0]}` int(11) NOT NULL COMMENT '${var[2]}',
		<#else>
		`${var[0]}` varchar(255) DEFAULT NULL COMMENT '${var[2]}',
		</#if>
	</#list>
  		PRIMARY KEY (`${objectNameUpper}_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
