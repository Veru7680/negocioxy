-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 11, 2023 at 12:53 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `ID` int NOT NULL,
  `Nombre` text NOT NULL,
  `Descrupcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `ID` int NOT NULL,
  `Nombre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Rut` varchar(50) NOT NULL,
  `Telefono` int NOT NULL,
  `Direccion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`ID`, `Nombre`, `Rut`, `Telefono`, `Direccion`) VALUES
(1, 'Vero', '34', 43, 'dfhd'),
(2, 'Vero', '4', 434, 'dfhd'),
(3, 'Vero', '34', 34, 'df'),
(4, 'Vero', '34', 433, 'fs'),
(5, 'Vero', '32', 2, 'DFG'),
(6, 'jorge', '12', 111111111, '11111111'),
(7, 'Vero', '1234567', 76802026, 'barrio nuevo');

-- --------------------------------------------------------

--
-- Table structure for table `direccionc`
--

CREATE TABLE `direccionc` (
  `id_direccionC` int NOT NULL,
  `Calle` varchar(20) NOT NULL,
  `Numero` int NOT NULL,
  `Ciudad` text NOT NULL,
  `Comunidad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `direccionp`
--

CREATE TABLE `direccionp` (
  `id_direccion` int NOT NULL,
  `Calle` text NOT NULL,
  `Numero` int NOT NULL,
  `Comunidad` text NOT NULL,
  `Ciudad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `ID` int NOT NULL,
  `Nombre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Precio` float NOT NULL,
  `Stock` int NOT NULL,
  `IdCategoria` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`ID`, `Nombre`, `Precio`, `Stock`, `IdCategoria`) VALUES
(1, 'Vero', 8, 8, 8),
(2, 'Vero', 3, 3, 3),
(3, 'Vero', 3, 3, 3),
(4, 'Vero', 3, 3, 4),
(5, 'jose', 45, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proovedor`
--

CREATE TABLE `proovedor` (
  `ID` int NOT NULL,
  `Nombre` text NOT NULL,
  `Rut` int NOT NULL,
  `Telefono` int NOT NULL,
  `Direccion` text NOT NULL,
  `Web` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `proovedor`
--

INSERT INTO `proovedor` (`ID`, `Nombre`, `Rut`, `Telefono`, `Direccion`, `Web`) VALUES
(1, 'Vero', 6, 6, 'D', 'DF'),
(2, 'mari', 34, 12, 'gdgdf', 'www.vom'),
(3, 'Vero', 10631189, 76802026, 'barrio nuevo', 'www.nada.com');

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

CREATE TABLE `venta` (
  `id_venta` int NOT NULL,
  `fecha` date NOT NULL,
  `monto_final` int NOT NULL,
  `descuento` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `direccionp`
--
ALTER TABLE `direccionp`
  ADD PRIMARY KEY (`id_direccion`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `proovedor`
--
ALTER TABLE `proovedor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `direccionp`
--
ALTER TABLE `direccionp`
  MODIFY `id_direccion` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `proovedor`
--
ALTER TABLE `proovedor`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
