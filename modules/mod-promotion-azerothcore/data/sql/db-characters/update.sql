
-- 创建玩家晋升状态表
CREATE TABLE IF NOT EXISTS `mod_promotion_status` (
  `player_guid` INT UNSIGNED NOT NULL COMMENT '玩家角色GUID',
  `can_use` TINYINT(1) NOT NULL DEFAULT 1 COMMENT '是否可使用晋升服务 (0=不可使用, 1=可使用)',
  `used_at` INT UNSIGNED NULL DEFAULT NULL COMMENT '使用时间戳',
  PRIMARY KEY (`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='玩家晋升服务状态表';