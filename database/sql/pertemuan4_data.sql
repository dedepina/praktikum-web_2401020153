    USE praktikum_web_2401020153;

    INSERT INTO program_studi (nama_prodi) VALUES
        ('Teknik Elektro'),
        ('Teknik Sipil');

    INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
    VALUES
        ('2401020150', 'Bunga Salsabila Pebriyani',
        'bunga@umrah.com', 20, 1),
        ('2401020143', 'Muhamad Isra Dwi Firmansya',
        'isra@umrah.com', 21, 2),
        ('2401020167', 'Azalea Finta',
        'caca@umrah.com', 20, 1),
        ('2401020099', 'Data Sementara',
        'sementara@example.com', 18, 2);

    UPDATE mahasiswa
    SET email = 'azalea.finta@umrah.com'
    WHERE nim = '2401020167';

    DELETE FROM mahasiswa
    WHERE nim = '2401020099';

    SELECT m.nim, m.nama, m.email, m.usia,
            p.nama_prodi
    FROM mahasiswa AS m
    JOIN program_studi AS p
            ON p.id = m.program_studi_id
    ORDER BY m.nim;