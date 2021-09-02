--liquibase formatted sql

-- changeset Cyantosh0:2
CREATE TABLE IF NOT EXISTS `roles` (
  `id` INT NOT NULL, 
  `role` VARCHAR(20) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT role_unique UNIQUE(role)
)ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;

-- rollback drop table roles;