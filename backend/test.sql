-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2025 at 02:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS test;

-- Use the test database
USE test;

-- Table structure for table `books`
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `cover` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `books`
INSERT INTO `books` (`id`, `title`, `desc`, `price`, `cover`) VALUES
(1, 'Rich Dad Poor Dad', 'A book about personal finance and mindset by Robert Kiyosaki', 499.0, 'https://images-na.ssl-images-amazon.com/images/I/81bsw6fnUiL.jpg'),
(2, 'The Secret', 'A book about the law of attraction and positive thinking by Rhonda Byrne', 399.0, 'https://images-na.ssl-images-amazon.com/images/I/71T4Jdfp0SL.jpg'),
(3, 'The Alchemist', 'A novel by Paulo Coelho about following your dreams', 299.0, 'https://images-na.ssl-images-amazon.com/images/I/71aFt4+OTOL.jpg');

-- Add primary key for the books table
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

-- Set auto increment for the `id` column
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

COMMIT;
