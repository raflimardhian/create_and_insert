--Create Database
CREATE DATABASE create_and_insert

--Insert Value
CREATE TABLE nasabah(
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    address varchar(250) NOT NULL,
    phone_number VARCHAR(12) NOT NULL
);

CREATE TABLE akun(
    id BIGSERIAL PRIMARY KEY,
    nasabah_id INTEGER NOT NULL,
    account_name VARCHAR (10),
    account_no VARCHAR(30)
);

CREATE TABLE transaksi(
    id BIGSERIAL PRIMARY KEY,
    akun_id INTEGER NOT NULL,
    tanggal DATE NOT NULL,
    transaction_type varchar(50) NOT NULL
);


--INSERT DATA
INSERT INTO nasabah(name, address, phone_number) VALUES ('chris', 'jl. beo no.31', '9779210831');
INSERT INTO akun(nasabah_id, account_name, account_no) VALUES (1, 'chris', '1313-4560-2314-1232');
INSERT INTO transaksi(akun_id, tanggal, transaction_type) VALUES (1, NOW(), 'tarik tunai');

--SELECT DATA
SELECT * FROM nasabah;
SELECT * FROM akun;
SELECT * FROM transaksi;

--UPDATE DATA
UPDATE nasabah SET name = 'john' WHERE nasabah.name = 'chris';
UPDATE akun SET account_name = 'john' WHERE akun.account_name = 'chris';
UPDATE transaksi SET transaction_type = 'transfer' WHERE transaksi.transaction_type = 'tarik tunai';

--DELETE DATA
DELETE FROM nasabah WHERE nasabah.address LIKE '%beo%';
DELETE FROM akun WHERE akun.account_name = 'john';
DELETE FROM transaksi WHERE transaksi.transaction_type = 'transfer';
