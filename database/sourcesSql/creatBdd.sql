-- ===========================
--  1. Suppression / création de la base
-- ===========================

DROP DATABASE IF EXISTS bdElevage;
CREATE DATABASE bdElevage CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE bdElevage;

DROP USER IF EXISTS 'elevageUser'@'127.0.0.1';

CREATE USER 'elevageUser'@'127.0.0.1' IDENTIFIED BY 'elevageMdp';

GRANT ALL PRIVILEGES ON bdElevage.* TO 'elevageUser'@'127.0.0.1';
FLUSH PRIVILEGES;





USE `bdElevage`;