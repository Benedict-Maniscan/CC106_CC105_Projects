-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bsis3b
CREATE DATABASE IF NOT EXISTS `bsis3b` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bsis3b`;

-- Dumping structure for table bsis3b.account_info
CREATE TABLE IF NOT EXISTS `account_info` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bsis3b.account_info: ~1 rows (approximately)
INSERT INTO `account_info` (`username`, `password`) VALUES
	('admin', 'password');

-- Dumping structure for table bsis3b.attendance_table
CREATE TABLE IF NOT EXISTS `attendance_table` (
  `id` int NOT NULL,
  `AttendanceID` varchar(50) DEFAULT NULL,
  `EmployeeID` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Timein` time DEFAULT NULL,
  `TimeOut` time DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bsis3b.attendance_table: ~5 rows (approximately)
INSERT INTO `attendance_table` (`id`, `AttendanceID`, `EmployeeID`, `date`, `Timein`, `TimeOut`, `Status`) VALUES
	(1, 'A001', 'E001', '2026-07-01', '08:00:00', '05:00:00', 'Present'),
	(2, 'A002', 'E002', '2026-07-01', '08:10:00', '05:00:00', 'Late'),
	(3, 'A003', 'E003', '2026-07-01', '08:00:00', '05:00:00', 'Present'),
	(4, 'A004', 'E004', '2026-07-01', '08:20:00', '05:00:00', 'Late'),
	(5, 'A005', 'E005', '2026-07-01', '08:00:00', '05:00:00', 'Present');

-- Dumping structure for table bsis3b.department
CREATE TABLE IF NOT EXISTS `department` (
  `id` int NOT NULL,
  `DepartmentID` varchar(50) DEFAULT NULL,
  `DepartmentName` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bsis3b.department: ~5 rows (approximately)
INSERT INTO `department` (`id`, `DepartmentID`, `DepartmentName`, `Location`) VALUES
	(1, 'D001', 'Information Technology', 'Main Office'),
	(2, 'D002', 'Human Resources', 'Main Office'),
	(3, 'D003', 'Accounting', 'Main Office'),
	(4, 'D004', 'Sales', 'Main Office'),
	(5, 'D005', 'Marketing', 'Main Office');

-- Dumping structure for table bsis3b.employee_information
CREATE TABLE IF NOT EXISTS `employee_information` (
  `id` int NOT NULL,
  `EmployeeID` varchar(50) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `ContactNo` varchar(15) DEFAULT NULL,
  `PositionID` varchar(50) DEFAULT NULL,
  `DepartmentID` varchar(50) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bsis3b.employee_information: ~5 rows (approximately)
INSERT INTO `employee_information` (`id`, `EmployeeID`, `FirstName`, `LastName`, `Gender`, `BirthDate`, `ContactNo`, `PositionID`, `DepartmentID`, `Email`) VALUES
	(1, 'E001', 'Juan', 'Dela Cruz', 'Male', '1998-05-10', '09171234567', 'P001', 'D001', NULL),
	(2, 'E002', 'Maria', 'Santos', 'Female', '1999-08-20', '09181234568', 'P002', 'D002', NULL),
	(3, 'E003', 'Carlo', 'Reyes', 'Male', '1997-12-01', '09191234569', 'P003', 'D003', NULL),
	(4, 'E004', 'Ana', 'Garcia', 'Female', '2000-03-15', '09192345670', 'P004', 'D004', NULL),
	(5, 'E005', 'Mark', 'Ramos', 'Male', '1996-09-08', '09193456781', 'P005', 'D005', NULL);

-- Dumping structure for table bsis3b.payroll_table
CREATE TABLE IF NOT EXISTS `payroll_table` (
  `id` int NOT NULL,
  `PayrollID` varchar(50) DEFAULT NULL,
  `EmployeeID` varchar(50) DEFAULT NULL,
  `PayPeriod` date DEFAULT NULL,
  `BasicSalary` int DEFAULT NULL,
  `Deduction` int DEFAULT NULL,
  `NetSalary` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bsis3b.payroll_table: ~5 rows (approximately)
INSERT INTO `payroll_table` (`id`, `PayrollID`, `EmployeeID`, `PayPeriod`, `BasicSalary`, `Deduction`, `NetSalary`) VALUES
	(1, 'PR001', 'E001', '2026-07-01', 25000, 1500, 23500),
	(2, 'PR002', 'E002', '2026-07-01', 28000, 2000, 26000),
	(3, 'PR003', 'E003', '2026-07-01', 35000, 2500, 32500),
	(4, 'PR004', 'E004', '2026-07-01', 30000, 1800, 28000),
	(5, 'PR005', 'E005', '2026-07-01', 22000, 1200, 20800);

-- Dumping structure for table bsis3b.position_table
CREATE TABLE IF NOT EXISTS `position_table` (
  `id` int NOT NULL,
  `PositionID` varchar(50) DEFAULT NULL,
  `JobTitle` varchar(50) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `JobDescription` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bsis3b.position_table: ~5 rows (approximately)
INSERT INTO `position_table` (`id`, `PositionID`, `JobTitle`, `Salary`, `JobDescription`) VALUES
	(1, 'P001', 'IT Support', 25000, 'Provide technical support'),
	(2, 'P002', 'HR officer', 28000, 'Manages employee records'),
	(3, 'P003', 'System Administrator', 35000, 'Maintian IT Systems'),
	(4, 'P004', 'Accountant', 30000, 'Handles financial records'),
	(5, 'P005', 'Sales Representative', 22000, 'Promotes and sells products');

-- Dumping structure for table bsis3b.test1
CREATE TABLE IF NOT EXISTS `test1` (
  `input` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bsis3b.test1: ~1 rows (approximately)
INSERT INTO `test1` (`input`) VALUES
	('kjshidd');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
