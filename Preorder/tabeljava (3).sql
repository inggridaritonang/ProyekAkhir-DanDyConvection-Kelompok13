/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 5.6.21 : Database - tabeljava
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tabeljava` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tabeljava`;

/*Table structure for table `akun_pegawai` */

DROP TABLE IF EXISTS `akun_pegawai`;

CREATE TABLE `akun_pegawai` (
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(20) DEFAULT NULL,
  `nama_pegawai` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `akun_pegawai` */

INSERT  INTO `akun_pegawai`(`username`,`password`,`nama_pegawai`) VALUES 
('inggrid','igid','Inggrid Jelek');

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `kode_barang` INT(11) NOT NULL AUTO_INCREMENT,
  `warna` VARCHAR(25) DEFAULT NULL,
  `jenis` VARCHAR(50) DEFAULT NULL,
  `waktu_pembuatan_satuan` INT(11) DEFAULT NULL,
  `jumlah` INT(11) DEFAULT NULL,
  `harga_satuan` INT(11) DEFAULT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `barang` */

INSERT  INTO `barang`(`kode_barang`,`warna`,`jenis`,`waktu_pembuatan_satuan`,`jumlah`,`harga_satuan`) VALUES 
(1,'Merah','Kaos Oblong',10,20,30000);

/*Table structure for table `pesanan` */

DROP TABLE IF EXISTS `pesanan`;

CREATE TABLE `pesanan` (
  `nomor_pesanan` INT(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` INT(11) DEFAULT NULL,
  `jumlah_barang` INT(11) DEFAULT NULL,
  `nama_pemesan` VARCHAR(50) DEFAULT NULL,
  `tanggal_pemesanan` DATE DEFAULT NULL,
  `alamat` VARCHAR(100) DEFAULT NULL,
  `nama_admin` CHAR(50) DEFAULT NULL,
  `no_hp_pemesan` VARCHAR(15) DEFAULT NULL,
  `total_transaksi` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`nomor_pesanan`),
  KEY `FK_kode_barang` (`kode_barang`),
  KEY `FK_admin` (`nama_admin`),
  CONSTRAINT `FK_admin` FOREIGN KEY (`nama_admin`) REFERENCES `akun_pegawai` (`username`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_kode_barang` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `pesan` (
  `nama_admin` CHAR(50) DEFAULT NULL,
  `jenis` VARCHAR(50) DEFAULT NULL,
  `jumlah` INT(11) DEFAULT NULL,
  `total_transaksi` VARCHAR(50) DEFAULT NULL,
  `estimasi` INT(11) DEFAULT NULL,
  `tanggal_pemesanan` DATE DEFAULT NULL,
  `nama_pemesan` VARCHAR(50) DEFAULT NULL,
  `alamat` VARCHAR(100) DEFAULT NULL,
  `no_hp_pemesan` VARCHAR(15) DEFAULT NULL,
  PRIMARY KEY (`nama_admin`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
/*Data for the table `pesanan` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 5.6.21 : Database - tabeljava
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tabeljava` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tabeljava`;

/*Table structure for table `akun_pegawai` */

DROP TABLE IF EXISTS `akun_pegawai`;

CREATE TABLE `akun_pegawai` (
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(20) DEFAULT NULL,
  `nama_pegawai` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `akun_pegawai` */

INSERT  INTO `akun_pegawai`(`username`,`password`,`nama_pegawai`) VALUES 
('inggrid','igid','Inggrid Jelek');

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `kode_barang` INT(11) NOT NULL AUTO_INCREMENT,
  `warna` VARCHAR(25) DEFAULT NULL,
  `jenis` VARCHAR(50) DEFAULT NULL,
  `waktu_pembuatan_satuan` INT(11) DEFAULT NULL,
  `jumlah` INT(11) DEFAULT NULL,
  `harga_satuan` INT(11) DEFAULT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `barang` */

INSERT  INTO `barang`(`kode_barang`,`warna`,`jenis`,`waktu_pembuatan_satuan`,`jumlah`,`harga_satuan`) VALUES 
(1,'Merah','Kaos Oblong',10,20,30000);

/*Table structure for table `pesanan` */

DROP TABLE IF EXISTS `pesanan`;

CREATE TABLE `pesanan` (
  `nomor_pesanan` INT(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` INT(11) DEFAULT NULL,
  `jumlah_barang` INT(11) DEFAULT NULL,
  `nama_pemesan` VARCHAR(50) DEFAULT NULL,
  `tanggal_pemesanan` DATE DEFAULT NULL,
  `alamat` VARCHAR(100) DEFAULT NULL,
  `nama_admin` CHAR(50) DEFAULT NULL,
  `no_hp_pemesan` VARCHAR(15) DEFAULT NULL,
  `total_transaksi` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`nomor_pesanan`),
  KEY `FK_kode_barang` (`kode_barang`),
  KEY `FK_admin` (`nama_admin`),
  CONSTRAINT `FK_admin` FOREIGN KEY (`nama_admin`) REFERENCES `akun_pegawai` (`username`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_kode_barang` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE `pesan` (
  `nama_admin` CHAR(50) DEFAULT NULL,
  `jenis` VARCHAR(50) DEFAULT NULL,
  `jumlah` INT(11) DEFAULT NULL,
  `total_transaksi` VARCHAR(50) DEFAULT NULL,
  `estimasi` INT(11) DEFAULT NULL,
  `tanggal_pemesanan` DATE DEFAULT NULL,
  `nama_pemesan` VARCHAR(50) DEFAULT NULL,
  `alamat` VARCHAR(100) DEFAULT NULL,
  `no_hp_pemesan` VARCHAR(15) DEFAULT NULL,
  PRIMARY KEY (`nama_admin`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
/*Data for the table `pesanan` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
