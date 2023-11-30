CREATE DATABASE GO_SEMARANG;

USE GO_SEMARANG;

CREATE TABLE destination (
    id_destinasi INT(12) NOT NULL,
    nama_destinasi VARCHAR(50) NOT NULL,
    alamat_destinasi VARCHAR(255) NOT NULL,
    deskripsi_destinasi LONGTEXT NOT NULL,
    jam_buka TIME NOT NULL,
    jam_tutup TIME NOT NULL,
    PRIMARY KEY (id_destinasi)
);

CREATE TABLE login (
    id_login INT(12) NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    password_user VARCHAR(20) NOT NULL,
    id_user INT(12) NOT NULL,
    PRIMARY KEY (id_login)
);
    
CREATE TABLE signup (
    id_signup INT(12) NOT NULL,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password_user VARCHAR(20) NOT NULL,
    id_user INT(12) NOT NULL,
    PRIMARY KEY (id_signup)
);

CREATE TABLE users (
  id_user INT NOT NULL,
  email VARCHAR(50) NOT NULL,
  username VARCHAR(50) NOT NULL,
  fullname VARCHAR(50) NOT NULL,
  password_user VARCHAR(10) NOT NULL,
  no_handphone VARCHAR(15) NOT NULL,
  PRIMARY KEY (id_user)
);

CREATE TABLE contact_us (
    id_contact INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL,
    fullname VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    PRIMARY KEY (id_contact)
);

ALTER TABLE destination
MODIFY deskripsi_destinasi LONGTEXT;

ALTER TABLE destination
MODIFY id_destinasi INT NOT NULL AUTO_INCREMENT;

ALTER TABLE destination AUTO_INCREMENT = 100;

INSERT INTO destination VALUES 
	(1,
    'Lawang Sewu',
    'Jl MT. Haryono, Bubakan',
    'Lawang Sewu is an office building located opposite Tugu Muda, Semarang City, Central Java, Indonesia, which was built as the headquarters of the Nederlandsch-Indische Spoorweg Maatschappij.',
    '07:00',
    '21:00');
INSERT INTO destination VALUES 
    (2,
    'Kuil Sam Poo Kong',
    'Jl. Simongan No.129, Bongsari',
    'Sam Poo Kong Temple is a historical temple that was built as a place of worship for the followers of the Confucian religion and is also a historical tourist destination. Sam Poo Kong Temple is located near Tugu Muda, which serves as an important landmark in the history of Semarang.',
    '08:00',
    '20:00');
INSERT INTO destination VALUES
    (3,
    'Candi Gedong Songo',
    'Jl. Ke Candi Gedong Songo, Candi, Krajan',
    'Gedong Songo Temple is a temple complex located in the highlands on the slopes of Mount Ungaran, Central Java, Indonesia, which was built as a place of Hindu worship. The temple complex consists of nine temples scattered around the mountainous area.',
    '06:30',
    '18:00');
INSERT INTO destination VALUES
    (4,
    'Taman Bunga Celosia',
    'Jl. Wisata Candi Gedong Songo Km 0,5, Bandungan',
    'Celosia Flower Park is a flower garden filled with the beauty of celosia flowers that bloom all year round and offers a mesmerising experience for visitors looking for natural tranquillity in the middle of the city.',
    '08:00',
    '17:00');
INSERT INTO destination VALUES
    (5,
    'Curug Lawe Benowo',
    'Desa Kalisidi, Ungaran Barat',
    'Curug Lawe Benowo is a waterfall known for its natural beauty. Surrounded by tropical forest, the waterfall offers an interesting journey through a winding path. The clarity of the water and the sound of its gurgling create a calming atmosphere.',
    '08:00',
    '14:00');
INSERT INTO destination VALUES
    (6,
    'Dusun Semilir',
    'Jl. Soekarno Hatta No.49, Ngemple',
    'Dusun Semilir is a village located near Tugu Muda, Semarang City, Central Java, Indonesia. It was originally the place where the Dutch East Indies Railway Compan (Nederlandsch-Indische Spoorweg Maatschappij) established an office building known as "Dusun Semilir" in the early 20th century.',
    '08:00',
    '19:00');
INSERT INTO destination VALUES
    (7,
    'Kopeng Treetop Adventure',
    'Jl. Raya Kopeng, Getasan',
    'Kopeng Treetop Adventure is an adventure park located in Kopeng, Central Java, Indonesia. The park is located in the middle of the forest and offers various adventure activities such as treetop walking, flying fox, and various other challenges at high altitude.',
    '08:30',
    '17:00');
INSERT INTO destination VALUES
    (8,
    'Museum Ambarawa',
    'Jl. Stasiun No.1, Ambarawa',
    'Museum Ambarawa is a building that was originally used as a railway depot by the Nederlandsch-Indische Spoorwe Maatschappij. The building was later converted into a museum that displays a collection of trains, railway equipment, and the history of railways in Indonesia.',
    '08:00',
    '16:00');
    
ALTER TABLE users
ADD COLUMN id_destinasi INT,
ADD FOREIGN KEY (id_destinasi) REFERENCES destination(id_destinasi);

SELECT * FROM destination;
DESCRIBE users;
DESCRIBE destination;
DESCRIBE contact_us;
SHOW TABLES;

DROP TABLE login;
DROP TABLE signup;

