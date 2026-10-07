USE praktikum_web_2401020056;

INSERT INTO program_studi (nama_prodi) VALUES
    ('Teknik Informatika'),
    ('Sistem Informasi');

INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401010001', 'Rina Maharani',
     'rina@example.com', 20, 1),

    ('2401010002', 'Dimas Pratama',
     'dimas@example.com', 21, 1),

    ('2401020001', 'Fajar Ramadhan',
     'fajar@example.com', 19, 2),

    ('2401020099', 'Data Sementara',
     'sementara2@example.com', 20, 2);

UPDATE mahasiswa
SET email = 'rina.maharani@example.com'
WHERE nim = '2401010001';

DELETE FROM mahasiswa
WHERE nim = '2401020099';

SELECT m.nim, m.nama, m.email, m.usia,
       p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;