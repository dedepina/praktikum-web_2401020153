<?php

use Illuminate\Support\Facades\Route;

Route::get('/latihan-php', function () {
    $nama = 'Devina Rindumasha';
    $nilai = [50, 55, 60, 65, 70];
 
    $hitungRataRata = function (array $data): float {
        $total = 0;
        foreach ($data as $angka) {
            $total += $angka;
        }
        return $total / count($data);
    };
 
    $rataRata = $hitungRataRata($nilai);
    if ($rataRata >= 75) {
        $status = 'Lulus';
    } else {
        $status = 'Perlu Perbaikan';
    }
 
    return view('latihan-php', compact(
        'nama', 'nilai', 'rataRata', 'status'
    ));
});