-- database: c:\Users\ASUS\Documents\Bahasa Pemrograman\SQL\kimiaFarma-sales.db

-- Use the ▷ button in the top right corner to run the entire file.
-- By ADLI FIQRULLAH

CREATE TABLE base_sales AS
    SELECT
        DATE(tanggal) AS tanggal,
        id_invoice,
        penjualan.id_customer,
        nama AS nama_customer,
        cabang_sales,
        "group",
        id_barang,
        nama_barang,
        unit,
        harga,
        jumlah_barang,
        harga * jumlah_barang AS total_harga
    FROM penjualan
    JOIN pelanggan ON pelanggan.id_customer = penjualan.id_customer
    JOIN barang ON barang.kode_barang = penjualan.id_barang;