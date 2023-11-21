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
  id_user INT(12) NOT NULL,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(50) NOT NULL,
  password_user VARCHAR(20) NOT NULL,
  no_handphone VARCHAR(15) NOT NULL,
  PRIMARY KEY (id_user)
);

ALTER TABLE destination
MODIFY deskripsi_destinasi LONGTEXT;

INSERT INTO destination (id_destinasi, nama_destinasi, alamat_destinasi, deskripsi_destinasi, jam_buka, jam_tutup)
VALUES 
	(1,
    'Lawang Sewu',
    'Jl. Pemuda No.160, Sekayu, Kec. Semarang Tengah, Kota Semarang',
    'Lawang Sewu merupakan bangunan bersejarah yang dibangun pada awal abad ke-20 oleh Pemerintah Hindia Belanda sebagai kantor pusat perusahaan kereta api Nederlands-Indische Spoorweg Maatschappij (NIS). Meskipun namanya berarti "Seribu Pintu" dalam bahasa Jawa, jumlah pintu sebenarnya jauh lebih sedikit. Dengan arsitektur bergaya Belanda kolonial, Lawang Sewu memancarkan pesona masa lalu dengan pintu dan jendela yang besar serta kubah yang menawan. Selama sejarahnya, bangunan ini memiliki berbagai fungsi, termasuk sebagai kantor administrasi, stasiun kereta api, dan bahkan pernah digunakan oleh tentara Jepang selama Perang Dunia II. Meskipun memiliki sejarah yang kaya, Lawang Sewu juga terkenal karena mitos dan cerita horor, menarik minat pengunjung yang mencari pengalaman sejarah dan keunikan mistis. Kini berfungsi sebagai museum sejarah dan kebudayaan, Lawang Sewu menyambut pengunjung untuk menjelajahi ruang-ruangnya yang indah, menampilkan artefak dan informasi berharga seputar sejarahnya yang beragam.',
    '07:00',
    '21:00'),
    (2,
    'Kuil Sam Poo Kong',
    'Jl. Simongan No.129, Bongsari, Kec. Semarang Barat, Kota Semarang',
    'Kuil Sam Poo Kong, juga dikenal sebagai Klenteng Gedung Batu. Kuil ini memiliki nilai sejarah yang kaya, karena dikaitkan dengan seorang penjelajah Tiongkok terkenal, Laksamana Zheng He atau Cheng Ho, yang datang ke Jawa pada abad ke-15. Kuil ini merupakan kompleks bangunan dengan arsitektur khas Tionghoa, yang melibatkan beberapa paviliun, kelenteng, dan aula utama yang menarik. Setiap struktur di dalam kompleks ini memiliki makna simbolis yang mendalam dalam tradisi Budha dan Konghucu. Pengunjung dapat menemukan patung-patung dewa, relief, dan artefak sejarah yang menceritakan kisah perjalanan Laksamana Zheng He. Kuil Sam Poo Kong bukan hanya tempat ibadah, tetapi juga menjadi tujuan wisata sejarah yang menarik bagi para pengunjung yang ingin menyelami kisah perjalanan maritim kuno dan keberagaman budaya di Indonesia.',
    '08:00',
    '20:00'),
    (3,
    'Candi Gedong Songo',
    'Jl. Sukorini, Krajan, Mlilir, Bandungan, Kabupaten Semarang',
    'Candi Gedong Songo adalah kompleks candi Hindu yang terletak di lereng Gunung Ungaran, Semarang, Jawa Tengah, Indonesia. Dibangun pada abad ke-8 hingga ke-9 Masehi, candi ini merupakan salah satu situs arkeologi yang menakjubkan di Indonesia. Terdiri dari sembilan candi yang tersebar di sepanjang jalur setapak yang menawan, Candi Gedong Songo menawarkan pemandangan indah dan atmosfer spiritual. Dikelilingi oleh udara sejuk pegunungan dan pepohonan yang rindang, setiap candi memiliki arsitektur yang khas dengan patung-patung dan relief-relief yang menggambarkan warisan kepercayaan Hindu. Candi Gedong Songo tidak hanya menjadi tempat ibadah, tetapi juga destinasi wisata yang menarik bagi para pengunjung yang tertarik dengan sejarah, seni, dan keindahan alam.',
    '06:30',
    '18:00'),
    (4,
    'Taman Bunga Celosia',
    'Jln. Wisata Candi Gedong Songo Km 0.5, Desa Candi, Kec. Bandungan, Kab. Semarang',
    'Taman Bunga Celosia adalah suatu area yang memukau di mana kelopak-kelopak berwarna cerah dari bunga celosia berkembang pesat, menciptakan pemandangan yang mempesona dan penuh warna. Bunga celosia, juga dikenal sebagai bunga kockscomb atau cockscomb, dikenal karena bentuk dan warna yang mencolok. Taman ini memamerkan keindahan beragam varietas celosia, yang termasuk dalam keluarga Amaranthaceae. Setiap kelopak bunga memancarkan keindahan uniknya, mulai dari merah, oranye, hingga kuning, menciptakan paduan warna yang memukau. Taman Bunga Celosia bukan hanya tempat yang memanjakan mata dengan kecantikan bunga-bunga yang mekar, tetapi juga memberikan suasana yang menyegarkan dan menggembirakan bagi pengunjung yang menyukai pesona alam yang indah.',
    '08:00',
    '17:00'),
    (5,
    'Curug Lawe Benowo',
    'Kalisidi, RT.01 / RW.06, Ungaran Barat, Hutan, Kec. Ungaran Barat, Semarang',
    'Curug Lawe Benowo terletak di antara hutan dan tebing yang membutuhkan perjalanan ekstra untuk mencapainya, curug ini mempersembahkan pesona alam yang menawan. Air terjun yang indah dan segar ini memberikan hadiah yang memuaskan setelah melewati perjalanan yang menantang. Pemandangan sekitarnya yang hijau dan tenang menciptakan pengalaman yang menyegarkan bagi para pengunjung yang mencari ketenangan dan keindahan alam yang autentik. Curug Lawe Benowo menjadi destinasi yang menarik bagi para pecinta alam dan petualang yang mencari pengalaman yang berbeda di tengah keindahan alam Jawa Tengah.',
    '08:00',
    '14:00'),
    (6,
    'Dusun Semilir',
    'Jl. Soekarno - Hatta No.49, Ngemple, Bawen, Ngemplak, Kabupaten Semarang',
    'Dusun Semilir menyajikan keindahan alam pedesaan yang memikat, dengan hamparan kebun dan tanaman yang hijau. Pengunjung dapat menikmati suasana tenang dan segar sambil menjelajahi kebun bunga, berfoto di spot-spot menarik, dan merasakan kegiatan agrowisata seperti panen buah-buahan atau menjajal kegiatan pertanian. Selain itu, Dusun Semilir juga menawarkan fasilitas rekreasi keluarga, taman bermain anak-anak, dan beragam kuliner lokal yang lezat. Destinasi ini cocok untuk mereka yang mencari ketenangan, keindahan alam, serta ingin menikmati pesona kehidupan pedesaan di tengah kesibukan kota.',
    '08:00',
    '19:00'),
    (7,
    'Kopeng Treetop Adventure',
    'Jl. Raya Kopeng, Selo Ngisor, Batur, Kec. Getasan, Kabupaten Semarang',
    'Kopeng Treetop Adventure di Semarang adalah destinasi petualangan yang menawarkan pengalaman seru di tengah keindahan alam. Terletak di kawasan Kopeng, destinasi ini menyediakan wahana flying fox dan treetop, memungkinkan pengunjung untuk menikmati keindahan hutan dari ketinggian. Pengunjung dapat merasakan sensasi meluncur di atas pepohonan dan menantang diri mereka sendiri melalui rintangan treetop yang menyenangkan. Selain aktivitas petualangan, Kopeng Treetop Adventure juga menawarkan pemandangan pegunungan yang spektakuler, membuatnya menjadi tempat yang populer bagi penggemar petualangan dan keluarga yang mencari pengalaman seru di alam terbuka Semarang.',
    '08:30',
    '17:00'),
    (8,
    'Museum Ambarawa',
    'Jl. Stasiun Nomor 1, Panjang Kidul, Panjang, Kecamatan Ambarawa, Kabupaten Semarang',
    'Museum Ambarawa, yang terletak di kota Ambarawa, Jawa Tengah, merupakan sebuah institusi bersejarah yang menggabungkan keindahan arsitektur kolonial Belanda dengan kekayaan sejarah militer Indonesia. Dihousingkan dalam bangunan bersejarah yang dulunya kompleks stasiun kereta api dan markas tentara Belanda, museum ini menampilkan koleksi artefak dan peralatan militer, membeberkan peran penting Ambarawa selama masa kolonial dan Perang Dunia II. Pengunjung dapat mengeksplorasi dengan kereta api uap yang masih beroperasi, menambahkan sentuhan nostalgis pada pengalaman edukatif ini. Dengan merangkul warisan sejarah dan menawarkan perjalanan melalui masa lalu, Museum Ambarawa menjadi destinasi menarik bagi mereka yang tertarik dengan sejarah militer dan warisan kolonial di Indonesia.',
    '08:00',
    '16:00');
    
SELECT * FROM destination;
    