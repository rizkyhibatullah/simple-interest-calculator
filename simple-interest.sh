#!/bin/bash
# Script ini digunakan untuk menghitung simple interest (bunga simpel)

echo "--- Kalkulator Simple Interest ---"

# Mengambil input dari pengguna
read -p "Masukkan modal awal (Principal): " p
read -p "Masukkan suku bunga per tahun dalam % (Rate): " r
read -p "Masukkan jangka waktu dalam tahun (Time): " t

# Melakukan perhitungan bunga simpel
# Formula: Interest = (P * R * T) / 100
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc -l)

# Melakukan perhitungan total akhir (Modal + Bunga)
total=$(echo "scale=2; $p + $interest" | bc -l)

echo "----------------------------------"
echo "Total Bunga: $interest"
echo "Total Uang Akhir (Principal + Interest): $total"
