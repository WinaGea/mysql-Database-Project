USE proyek_pbd

CREATE TABLE Admin (
    id_Admin INT PRIMARY KEY,
    NO_Telp VARCHAR(25),
    Email_Admin VARCHAR(225),
    Sosial_Media_Admin VARCHAR(225)
);

ALTER TABLE Admin ADD COLUMN Pekerjaan VARCHAR(225);
ALTER TABLE Admin ADD COLUMN Blog VARCHAR(225);

CREATE TABLE Pekerjaan (
    id_Pekerjaan INT PRIMARY KEY,
    Jenis_Pekerjaan VARCHAR(225)
);

ALTER TABLE Pekerjaan ADD COLUMN id_Admin INT;
ALTER TABLE Pekerjaan ADD FOREIGN KEY (id_Admin) REFERENCES Admin(id_Admin);

CREATE TABLE Blog (
    id_Blog INT PRIMARY KEY,
    Panduan_Karir VARCHAR(225),
    pengembangan_diri VARCHAR(225),
    id_Admin INT,
    FOREIGN KEY (id_Admin) REFERENCES Admin(id_Admin)
);

CREATE TABLE Pengguna (
    id_pengguna INT PRIMARY KEY,
    Nama_Pengguna VARCHAR(225),
    Email_Pengguna VARCHAR(225)
);

ALTER TABLE Pengguna

INSERT INTO Admin(id_Admin,NO_Telp,Email_Admin,Sosial_Media_Admin)
VALUE
(1,'083423525','winagea22@gmail.com','wina_gea'),
(2,'0834235258','bastian05gmail.com','bastian.sitanggang'),
(3,'08342355','endrogel122@gmail.com','endrogelsibarani'),
(4,'083423525','ramhotsagala@gmail.com','ramhot_sgl'),


INSERT INTO Pekerjaan(id_Pekerjaan,Jenis_Pekerjaan)
VALUE
(1,'Network Administrator'),
(2,'Network Engineer'),
(3,'Network Architect'),
(4,'Database Administrator'),
(5,'Computer Systems Analyst'),
(6,'Computer and Information System'),
(7,'Network Technician'),
(8,'Embedded Systems Engineer'),
(9,'Embedded Electronics Engineer'),
(10,'Control Systems Engineer'),
(11,'Embedded Network Engineer'),
(12,'Cybersecurity Embedded Sytem Developer'),
(13,'Cloud Engineer'),
(14,'Cloud Administrator'),
(15,'Security Engineer'),
(16,'Cloud Architect'),
(17,'Data Engineer'),
(18,'Data Scientist'),
(19,'Backup and Recovery'),
(20,'System Administrator'),
(21,'Fronted Developer'),
(22,'Software Developer'),
(23,'Database Managemnet'),
(24,'UI Developer'),
(25,'Back-end-Developer');

INSERT INTO Blog(id_Blog,Panduan_karir,Pengembangan_Diri,id_admin)
VALUE
(1,'C/V Resume','Cara Pengembangan Diri Untuk Menggali Potensi Diri'),
(2,'Cover Letter','Growth Mindset: Arti, Penerapan dan Manfaatnya dalam Karir'),
(3,'Portofolio & Personal Branding','Refeleksi Diri: Manfaat, Pengertian, Kepentingannnya, dan Caranya','proyek3'),
(4,'Skkill Interview','Kenali 5 Ciri Ciri Burnout dan Cara Mengatasinya!'),
(5,'Tips Cari Kerja','Mau Sukses di Uaia Muda? Tiru 10 Kebiasaan Ini!');

INSERT INTO Pengguna(id_Pengguna,Nama_Pengguna,Email_Pengguna)
VALUE 
(1,'Stevi Sianipar','Stevi01@gmail.com'),
(2,'Rahel Napitupulu','Rahel23@gmail.com'),
(3,'Naomi Butar Butar','Naomi29@gmail.com'),
(4,'Dealova Zevanya','Dealova11@gmail.com'),
(5,'Romaito Silaen','Romaito17@gmail.com'),
(6,'Lely Butar Butar','Lely99@gmail.com'),
(7,'Enjelita Sitorus','Enjelita19@gmail.com'),
(8,'Tanisha Aritonang','Tanisha16@gmail.com'),
(9,'Agita Panjaitan','Agitaa@gmail.com'),
(10,'Sofia Sianipar','SofiaS@gmail.com'),
(11,'Dwi Nainggolan','DwiNainggolan@gmail.com'),
(12,'Calista Panjaitan','Calistaa@gmail.com'),
(13,'Rizki Manullang','Rizkii@gmail.com'),
(14,'Chesia Silaen','Silaen24@gmail.com'),
(15,'Maylani Sagala','May98@gmail.com'),
(16,'Grace Yosevha','Yosevha43@gmail.com'),
(17,'Grace Nainggolan','GraceNainggolan@gmial.com'),
(18,'Samuel Manik','SamuelManik188@gmail.com'),
(19,'Rezeki','Rezekii96@gmail.com'),
(20,'Panji Aritonang,','PanjiAritonangg76@gmial.com'),
(21,'Ripandy Saragih','Ripandyy@gmial.com'),
(22,'Pahala Tambunan','PahalaTambunaann@gmail.com'),
(23,'Arizona Damanik','ArizonaaD14@gmial.com'),
(24,'Yehezkiel Rumapea','Yehezkielll65@gmail.com'),
(25,'Arga Bona','ArgaBona45@gmail.com'),
(26,'Immanuel Manurung','ImmaanuelManurung@gmail.com'),
(27,'Alfred Manurung','Alfred35@gmaiaal.com'),
(28,'Jeysen Siallagan','JeysennSlgn09@gmial.com'),
(29,'Glen Situmorang','GlenSitumorangg31@gmail.com'),
(30,'Samuel Pangaribuan','SamuellPangrib@gmail.com'),
(31,'Gramaldy','Gramaldy221@gmail.com'),
(32,'Handika Pratama','Handikapratama61@gmail.com'),
(33,'Janter Hugo Purba','Janter55@gmail.com');


-- 4B -- 

SELECT * FROM Pengguna;

SELECT Nama_Pengguna FROM Pengguna;

SELECT Email_Pengguna FROM Pengguna;

SELECT Nama_Pengguna, Email_Pengguna FROM Pengguna;

SELECT Nama_Pengguna, Email_Pengguna FROM Pengguna WHERE id_pengguna = 9;

SELECT * FROM Pengguna ORDER BY id_pengguna ASC;

SELECT * FROM Pengguna LIMIT 8;

SELECT * FROM Pengguna WHERE Nama_Pengguna LIKE 'A%';

SELECT COUNT(*) AS Total_Pengguna  FROM Pengguna;

SELECT * FROM Pengguna WHERE id_pengguna = (SELECT MAX(id_pengguna) FROM Pengguna);

-- 4C --

1
SELECT Admin.*, Pekerjaan.*
FROM Admin
LEFT JOIN Pekerjaan ON Admin.id_Admin = Pekerjaan.id_Admin;

2
SELECT Admin.*, Pekerjaan.*, Pengguna.*
FROM Admin
LEFT JOIN Pekerjaan ON Admin.id_Admin = Pekerjaan.id_Admin
LEFT JOIN Pengguna ON Admin.id_Admin = Pengguna.id_pengguna;

3
SELECT Pekerjaan.*, Admin.*
FROM Pekerjaan
LEFT JOIN Admin ON Pekerjaan.id_Admin = Admin.id_Admin;

4
SELECT Pekerjaan.*, Pengguna.*
FROM Pekerjaan
LEFT JOIN Pengguna ON Pekerjaan.id_Pekerjaan = Pengguna.id_pengguna;

5
SELECT Pengguna.*, Admin.*
FROM Admin
RIGHT JOIN Pengguna ON Admin.id_Admin = Pengguna.id_pengguna;

6
SELECT Pengguna.*, Admin.*
FROM Pengguna
LEFT JOIN Admin ON Pengguna.id_pengguna = Admin.id_Admin;

7
SELECT Pengguna.*, Admin.*
FROM Pengguna
INNER JOIN Admin ON Pengguna.id_pengguna = Admin.id_Admin;

8
SELECT Blog.*, Pekerjaan.*
FROM Blog
LEFT JOIN Pekerjaan ON Blog.id_Admin = Pekerjaan.id_Admin;


9
SELECT Blog.*, Pengguna.*
FROM Pengguna
RIGHT JOIN Blog ON Pengguna.id_pengguna = Blog.id_Admin;

10
SELECT Pengguna.*, Pekerjaan.*
FROM Pengguna
INNER JOIN Pekerjaan ON Pengguna.id_pengguna = Pekerjaan.id_Admin;


 

-- 4d --
1
SELECT id_Admin, Email_Admin,
    (SELECT COUNT(*) FROM Pekerjaan WHERE Pekerjaan.id_Admin = Admin.id_Admin) AS Jumlah_Pekerjaan
FROM Admin;

2
	SELECT Email_Pengguna
	FROM Pengguna
	WHERE id_pengguna = (SELECT id_Admin FROM Admin WHERE id_Admin = 2);

3
SELECT id_Admin, 
       (SELECT COUNT(*) FROM Blog WHERE Blog.id_Admin = Admin.id_Admin) AS Jumlah_Blog
FROM Admin;



4
SELECT Nama_Pengguna
FROM Pengguna
WHERE Nama_Pengguna NOT IN (SELECT Email_Admin FROM Admin);


5
SELECT *
FROM Pengguna
WHERE Nama_Pengguna LIKE '%Nainggolan%';

6
SELECT A.Email_Admin, 
       (SELECT Jenis_Pekerjaan 
        FROM Pekerjaan 
        WHERE Pekerjaan.id_Admin = A.id_Admin 
        GROUP BY id_Admin 
        ORDER BY COUNT(*) DESC 
        LIMIT 1) AS Pekerjaan_Terbanyak
FROM Admin A;

