-- Example
CREATE DATABASE IF NOT EXISTS appdb;
USE appdb;

-- Table to store user records
CREATE TABLE IF NOT EXISTS users (
  id BIGINT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,     -- store a password hash (recommended)
  phone_number VARCHAR(20) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE
);

-- 10 entries (passwords below are placeholders; use hashes in a real app)
INSERT INTO users (id, username, password, phone_number, email) VALUES
(1,  'user01', 'hash_placeholder_01', '+33600000001', 'user01@example.com'),
(2,  'user02', 'hash_placeholder_02', '+33600000002', 'user02@example.com'),
(3,  'user03', 'hash_placeholder_03', '+33600000003', 'user03@example.com'),
(4,  'user04', 'hash_placeholder_04', '+33600000004', 'user04@example.com'),
(5,  'user05', 'hash_placeholder_05', '+33600000005', 'user05@example.com'),
(6,  'user06', 'hash_placeholder_06', '+33600000006', 'user06@example.com'),
(7,  'user07', 'hash_placeholder_07', '+33600000007', 'user07@example.com'),
(8,  'user08', 'hash_placeholder_08', '+33600000008', 'user08@example.com'),
(9,  'user09', 'hash_placeholder_09', '+33600000009', 'user09@example.com'),
(10, 'user10', 'hash_placeholder_10', '+33600000010', 'user10@example.com');

