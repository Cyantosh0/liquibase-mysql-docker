--liquibase formatted sql

-- changeset Cyantosh0:3
CREATE TABLE IF NOT EXISTS `teams` (
  `id` BINARY(16) NOT NULL, 
  `team` VARCHAR(50) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT team_unique UNIQUE(team)
)ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;

-- rollback drop table teams;