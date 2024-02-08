-- database: c:\Users\ASUS\Documents\Bahasa Pemrograman\SQL\kimiaFarma-sales.db

-- Use the ▷ button in the top right corner to run the entire file.
-- By ADLI FIQRULLAH

CREATE TABLE aggregate_salesDate AS
    SELECT
        tanggal,
        SUM(jumlah_barang) AS total_barang,
        SUM(total_harga) AS total_penjualan
    FROM base_sales
    GROUP BY tanggal;