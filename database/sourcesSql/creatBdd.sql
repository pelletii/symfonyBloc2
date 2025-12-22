-- ===========================
--  1. Suppression / création de la base
-- ===========================

DROP DATABASE IF EXISTS bdElevage;
CREATE DATABASE bdElevage CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE bdElevage;

DROP USER IF EXISTS 'elevageUser'@'localhost';

CREATE USER 'elevageUser'@'localhost' IDENTIFIED BY 'elevageMdp';

GRANT ALL PRIVILEGES ON bdElevage.* TO 'elevageUser'@'localhost';
FLUSH PRIVILEGES;





USE `bdElevage`;