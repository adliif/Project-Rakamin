-- database: c:\Users\ASUS\Documents\Bahasa Pemrograman\SQL\kimiaFarma-sales.db

-- Use the ▷ button in the top right corner to run the entire file.
-- By ADLI FIQRULLAH

CREATE TABLE aggregate_barang AS 
    SELECT
        id_barang,
        nama_barang,
        unit,
        SUM(jumlah_barang) AS barang_terjual,
        SUM(total_harga) AS jumlah_penjualan
    FROM base_sales
    GROUP BY id_barang;