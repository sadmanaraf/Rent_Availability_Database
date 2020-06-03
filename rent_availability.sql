-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2018 at 07:37 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent_availability`
--

-- --------------------------------------------------------

--
-- Table structure for table `area_type`
--

CREATE TABLE `area_type` (
  `Area_type_id` int(11) NOT NULL,
  `Description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `area_type`
--

INSERT INTO `area_type` (`Area_type_id`, `Description`) VALUES
(1, 'Residential'),
(2, 'Commercial');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_id`, `Name`, `Email`, `Phone`) VALUES
(1, 'Zarin', 'zarin@gmail.com', 1274809),
(2, 'Zubayer', 'Zubayer@gmail.com', 829497);

-- --------------------------------------------------------

--
-- Table structure for table `cutomer_property`
--

CREATE TABLE `cutomer_property` (
  `cp_id` int(11) NOT NULL,
  `cutomer_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `Balcony_number` int(11) NOT NULL,
  `Number_of_Rooms` int(11) NOT NULL,
  `Garage` varchar(255) COLLATE utf8_bin NOT NULL,
  `Security` varchar(255) COLLATE utf8_bin NOT NULL,
  `Property_id` int(11) NOT NULL,
  `Bathroom_number` int(11) NOT NULL,
  `nearby` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`Balcony_number`, `Number_of_Rooms`, `Garage`, `Security`, `Property_id`, `Bathroom_number`, `nearby`) VALUES
(3, 3, 'Available', 'Under CCTV Surviellence', 1, 2, 'BRAC Bank ATM booth'),
(3, 4, 'Available', 'Under CCTV Surveillance', 2, 3, 'Dutch-Bangla Bank ATM booth'),
(1, 2, 'Available', 'Private Security Guard', 3, 2, 'Mirpur Super Market'),
(3, 4, 'Available for 5 cars', 'Private Security Guard', 4, 3, 'Alpha International School'),
(1, 2, 'None', 'Private Security Guard', 5, 1, 'Udayan International School'),
(2, 3, 'Available', 'Under CCTV Surveillance', 6, 3, 'Meena Bazaar'),
(2, 3, 'Available', 'Under CCTV Surveillance', 7, 3, 'Agora'),
(2, 3, 'Available', 'Under CCTV Surveillance', 8, 3, 'Mapleleaf International School'),
(3, 3, 'Available for 6 six cars', 'Under CCTV Surveillance', 9, 3, 'KFC'),
(1, 2, 'None', 'Private Security Guard', 10, 1, 'Gulshan Jame Masjid'),
(2, 3, 'Available', 'Under CCTV Surveillance', 11, 3, 'Meena Bazar'),
(2, 4, 'Available for 6 cars', 'Under CCTV Surveillance', 12, 3, 'Pink City'),
(1, 2, 'None', 'Private Security Guard', 13, 1, 'Yellow'),
(2, 3, 'Available', 'Under CCTV Surveillance', 14, 4, 'Shwapno'),
(2, 3, 'Availbale', 'Under CCTV Surveillance', 15, 4, 'AIUB old Campus'),
(2, 3, 'Available', 'Under CCTV Surveillance', 16, 3, 'Takeout'),
(2, 4, 'Available', 'Under CCTV Surveillance', 17, 3, 'Banani Jame Masjid'),
(4, 7, 'Available for 10 cars', 'Under CCTV Surveillance', 18, 5, 'Aarong'),
(2, 3, 'None', 'Under CCTV Surveillance', 19, 3, 'North-End Coffee Roasters'),
(2, 3, 'Available', 'Under CCTV Surveillance', 20, 3, 'Chillox'),
(2, 3, 'Available', 'Under CCTV Surveillance', 21, 4, 'Kagojer Ishkool'),
(2, 3, 'Available', 'Under CCTV Surveillance', 22, 3, 'Apollo Hospitals'),
(3, 5, 'Available for 6 cars', 'Under CCTV Surveillance', 23, 4, 'Bank Asia ATM Bashundhara'),
(2, 3, 'Available', 'Under CCTV Surveillance', 24, 3, 'Bashundhara Industrial Headquarters 1'),
(2, 3, 'Available', 'Under CCTV Surveillance', 25, 3, 'American International University-Bangladesh'),
(2, 3, 'Available', 'Under CCTV Surveillance', 26, 3, 'ONE Bank Limited'),
(2, 3, 'Available', 'Under CCTV Surveillance', 27, 3, 'BRAC Bank Limited'),
(2, 3, 'Available', 'Under CCTV Surveillance', 28, 3, 'EXIM Bank Limited'),
(2, 3, 'Available', 'Under CCTV Surveillance', 29, 3, 'Bank Asia Limited'),
(2, 3, 'Available', 'Under CCTV Surveillance', 30, 3, 'HSBC Bank Limited'),
(2, 3, 'Available', 'Under CCTV Surveillance', 31, 4, 'Shiya Masjid'),
(2, 3, 'Available', 'Under CCTV Surveillance', 32, 3, 'Baitul Wahab Jame Masjid'),
(2, 4, 'Available', 'Under CCTV Surveillance', 33, 3, 'BFC'),
(2, 3, 'None', 'Under CCTV Surveillance', 34, 2, 'Japan Garden City Central Masjid'),
(1, 1, 'Available', 'Under CCTV Surveillance', 35, 1, 'Mohammadia Baitul Taqwa Jame Masjid');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Loc_id` int(11) NOT NULL,
  `House_number` int(11) NOT NULL,
  `Road` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Zone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Loc_id`, `House_number`, `Road`, `Zone_id`) VALUES
(100, 104, 'Kazipara', 1),
(101, 102, 'Mirpur 10', 1),
(102, 161, 'East Monipur', 1),
(103, 6, 'Mazar Road', 1),
(104, 12, 'Mirpur 01', 1),
(105, 11, 'Jhigatola Road', 2),
(106, 1, '11/A,Dhanmondi', 2),
(107, 10, '12/A,Dhanmondi', 2),
(108, 5, 'Shankar', 2),
(109, 3, 'Dhanmondi-03', 2),
(110, 36, 'Gulshan 2', 3),
(111, 2, 'Gulshan 2', 3),
(112, 19, 'Niketan', 3),
(113, 21, 'Gulshan 01', 3),
(114, 7, 'Gulshan 1', 3),
(115, 4, 'Banani 14', 4),
(116, 11, 'Banani 18', 4),
(117, 2, 'Banani 11', 4),
(118, 12, 'Banani 5', 4),
(119, 1, 'Banani 5', 4),
(120, 18, 'Block D', 5),
(121, 36, 'Block E', 5),
(122, 7, 'Bashundhara Road', 5),
(123, 1, 'Block G', 5),
(124, 10, 'Block C', 5),
(125, 1, 'Sector 12', 6),
(126, 2, 'Sector 12', 6),
(127, 3, 'Sector 11', 6),
(128, 4, 'Sector 7', 6),
(129, 5, 'Sector 12', 6),
(130, 9, 'Babar Road', 7),
(131, 5, 'Nurjahan Road', 7),
(132, 13, 'Nurjahan Road', 7),
(133, 21, 'Salimullah Road', 7),
(134, 2, 'Tajmahal Road', 7);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `Owner_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`Owner_id`, `name`, `phone`) VALUES
(1, 'Moin', 1817065541),
(2, 'Taaj', 1817065540),
(3, 'Jamal', 1817065541),
(4, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL),
(9, NULL, NULL),
(10, NULL, NULL),
(11, NULL, NULL),
(12, NULL, NULL),
(13, NULL, NULL),
(14, NULL, NULL),
(15, NULL, NULL),
(16, NULL, NULL),
(17, NULL, NULL),
(18, NULL, NULL),
(19, NULL, NULL),
(20, NULL, NULL),
(21, NULL, NULL),
(22, NULL, NULL),
(23, NULL, NULL),
(24, NULL, NULL),
(25, NULL, NULL),
(26, NULL, NULL),
(27, NULL, NULL),
(28, NULL, NULL),
(29, NULL, NULL),
(30, NULL, NULL),
(31, NULL, NULL),
(32, NULL, NULL),
(33, NULL, NULL),
(34, NULL, NULL),
(35, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `owner_customer`
--

CREATE TABLE `owner_customer` (
  `oc_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `Property_id` int(11) NOT NULL,
  `Description` text COLLATE utf8_bin NOT NULL,
  `Cost` int(11) NOT NULL,
  `Size` int(11) NOT NULL,
  `Property_type_id` int(11) NOT NULL,
  `Area_type_id` int(11) NOT NULL,
  `Loc_id` int(11) DEFAULT NULL,
  `Owner_id` int(11) DEFAULT NULL,
  `Zone_id` int(11) NOT NULL,
  `Purpose_ID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`Property_id`, `Description`, `Cost`, `Size`, `Property_type_id`, `Area_type_id`, `Loc_id`, `Owner_id`, `Zone_id`, `Purpose_ID`) VALUES
(1, 'Convenient location and a friendly neighborhood yes this apartment is located exactly in this location. A good amount of school, college and groceries will be located right nearby to your home. This home comes with 3 beds and 3 baths. It also features nice balcony, drawing, dining and a kitchen. All-time electricity backup with updated apartment fittings will make your life smooth. The price of this flat is BDT 5,242,500.', 5242500, 1165, 1, 1, 100, 1, 1, 1),
(2, 'Well-to-do living and easy movement! If you are looking for a flat like in this kind of location we have a great news. A 1700 Square Feet beautiful apartment is vacant in the location. The flat is offered with 3 beds, 3 baths, dining, living space and a beautiful kitchen. The washrooms are tiled with durable fittings that would make you content with your desirable hygiene. With excellent security, all-time water, gas and electricity are available for this flat. The price of this correspondent flat is BDT 8,200,000. ', 8200000, 1700, 1, 1, 101, 2, 1, 1),
(3, 'The respective flat for rent welcomes you with 2 beds and 2 baths. You do not need to worry about water, gas and electricity while staying in this home. With tiled flooring in the whole apartment, the flat also makes sure the washrooms are made with quality and durable fixtures. Moreover, the home retains the value of peaceful living while being conveniently close to shops, school and transport. The rent price is only 20,000 BDT.', 20000, 950, 2, 1, 102, 3, 1, 2),
(4, 'This vacant apartment for a price of BDT 7298500 is located in a place where you will find all your needs readily met with. The apartment has 3 beds and 3 baths, fully connected gas, electricity and water are also available there. The house presents a drawing room adjoined to the dining room. The corresponding unit of this building holds a very spacious floor plan with large size windows. The kitchen is beautifully equipped with well-fitted tiles and cabinet to whip up a feast for the family. The rooms are well prepared with the finest quality fixtures and the washrooms are installed with a high durability guarantee. ', 50000, 1327, 4, 2, 103, 4, 1, 2),
(5, 'A well-constructed and nicely planned sublet is vacant for rent in Mirpur. At the asking price of BDT 10,000 and covering an area of 700 Square Feet, the flat comes with 2 beds, 1 baths, a kitchen and 1 balcony. All the rooms are well spacious and lets you have enough privacy. To make your everyday life smooth while living in this apartment you will find gas, Water Supply, electricity, lift and an ample parking space. This flat can be that perfect home for your family which you have been looking for. ', 10000, 700, 3, 2, 104, 5, 1, 2),
(6, 'A calm place to live in with serene surroundings, yes Dhanmondi residential area is surely that kind of a location in our busy city. A beautiful 3 beds and 3 baths apartment is vacant in the location right now. This apartment has all the facilities you will need like gas, electricity and water supplies. The price of this flat is BDT 11,000,000. Once you enter the home you will find out how well the apartment is planned. The rooms are spacious enough to pass some great and comfortable time with friends and family. A large and airy dining space is sited just in front of drawing room having ample space to place your beautiful dining setup. Bathrooms are completed with durable fittings to meet the criterion of a modern apartment. A parking space for the respective unit is dedicated to the safeguarding of your vehicle. ', 11000000, 1560, 1, 1, 105, 6, 2, 1),
(7, 'We are here to serve you if you are thinking of starting a residence in an easy-going area like Dhanmondi. Dhanmondi is offering a flat for sale to pick it for your next home. A good amount of school, college and groceries will be located right nearby to your home. This home comes with 3 beds and 3 baths. It also features nice balcony, drawing, dining and a kitchen. All-time electricity backup with updated apartment fittings will make your life smooth. The rent price of this flat is 30,000. ', 30000, 1530, 2, 1, 106, 7, 2, 2),
(8, 'A well-constructed and nicely planned flat is vacant for sale in Dhanmondi. At the asking price of BDT 22000000 and covering an area of 1775 Square Feet, the flat comes with 3 beds, 3 baths, a kitchen and balconies. All the rooms are well spacious and lets you have enough privacy. To make your everyday life smooth while living in this apartment you will find gas, Water Supply, electricity, lift and an ample parking space. This flat can be that perfect home for your family which you have been looking for. ', 22000000, 1775, 1, 1, 107, 8, 2, 1),
(9, 'Choosing a new office can be an overwhelming experience as it involves a lot of decision making and most importantly finding the most suitable location. If you are thinking of getting an apartment in the suitable location of Dhanmondi then we are here to assist your decision as this 3 rooms and 3 baths flat can be a perfect office for your corporate family. The rent price of this flat is BDT 100000. The location has a wide variety of shops, coffee stores, hospitals and restaurants. ', 100000, 2120, 4, 2, 108, 9, 2, 2),
(10, '2 Bedrooms, 1 toilet, 1 Kitchen, 1 Balcony.', 20000, 850, 3, 2, 109, 10, 2, 2),
(11, 'Congenial environment, appropriate commuting system and equitable prices of properties make the area Gulshan a wonderful place to settle. This apartment located in the area comes for an asking price of BDT 30,000,000. This wonderful building very spacious which includes 3 beds and 4 baths. The apartment has got balconies and a nice kitchen. The facing of this flat will keep your home warm for the whole day. Come and grab this affordable flat to settle in this wonderful locality. ', 30000000, 2000, 1, 1, 110, 11, 3, 1),
(12, 'This properly designed and spatial friendly apartment has 4 rooms and 3 baths with all utility supplies connected for regular and efficient use. The selling price of BDT 67000000 will serve you well to work in your office. ', 200000, 4500, 4, 1, 111, 12, 3, 2),
(13, '2 rooms, 1 bathroom, 1 kitchen, 1 balcony.', 15000, 900, 3, 1, 112, 13, 3, 2),
(14, 'We bring you a beautiful and distinct 2500 Square Feet Flat for sale in Gulshan having situated in a pleasant location. You will enjoy all-time water, gas and electricity while you will be a residence of this building. The respective unit comes with 3 beds, 4 baths, living space and a beautiful kitchen. Some good, school, colleges and everyday transportation facilities are very close to this flat. All the washrooms are attached with quality and durable fixtures. In this place, you will find every service to live a good life. The asking price for this vacant flat is BDT 45,000,000 which is very affordable comparing to the flats in this area. ', 45000000, 2500, 1, 1, 113, 14, 3, 1),
(15, 'This lovely apartment is located in a great location with numerous restaurants and places to visit nearby. The apartment has 3 beds and 4 baths, gas, electricity and water connection. The price of this flat also comes affordably at 3 beds. A credible entrance leads to the flat. Bathrooms and kitchen are completed with sturdy fixtures. All the rooms are well spacious and lets you have the whole feel of solace and calmness with closed ones. Electricity, gas and water supply is readily available in this apartment so you do not have to worry regarding this. ', 50000, 1850, 2, 1, 114, 15, 3, 2),
(16, 'The corresponding unit of this building comes with 3 beds, 3 baths, dining space and a nice kitchen. The vacant flat surely is a reasonable deal compared with other flats in the area. The flat is completed with large windows and balconies to make sure there is proper ventilation throughout the flat. The washrooms are installed with fittings with a high durability guarantee. You will have the privilege to own a nice parking with great security for this flat. The asking price for this vacant flat is BDT 30,000,000. A private parking space comes with the offered flat for your vehicle accommodation.\r\n', 30000000, 2380, 1, 1, 115, 16, 4, 1),
(17, 'This 2150 Square Feet wonderful flat is set with strong structure and within a secured complex. As a resident of this flat, you will be able to enjoy all updated apartment facilities with all-time electricity backup, water and gas. The flat for rent features 3 beds, 3 baths, drawing, dining and a beautiful kitchen. To pass some good family time the apartment also has a balcony, you will love spending your family evening in the Balcony. This price of this flat is BDT 60,000 is surely a treat for your money. ', 60000, 2150, 2, 1, 116, 17, 4, 2),
(18, 'A very spacious commercial space spanning over 5135 Square Feet is located in Banani with all kinds of updated facilities to keep your business running effectively. All utilities are readily available here. If you are looking for a better commercial office space, visit this and book the space at your earliest. Rent price of this vacant office space is BDT 564,850. ', 564850, 5135, 4, 2, 117, 18, 4, 2),
(19, 'This 1500 Square Feet wonderful sublet is set with strong structure and within a secured complex. As a resident of this flat, you will be able to enjoy all updated sublet facilities with all-time electricity backup, water and gas. The sublet for rent features 3 beds, 3 baths, drawing, dining and a beautiful kitchen. To pass some good family time the apartment also has a balcony, you will love spending your family evening in the Balcony. This price of this flat is BDT 20,000 is surely a treat for your money. ', 20000, 1500, 3, 1, 118, 19, 4, 2),
(20, 'Those who are thinking about finding a new apartment and feel their budget will be a setback should surely check this amazing apartment. This beautiful apartment is greatly affordable and will come within your budget. This lovely apartment is having a 2200 Square Feet area in total, the flat is vacant right now. The flat comes with 3 beds, 3 baths and many other noteworthy facilities. The price is BDT 75,000. Please come and visit this apartment to make it your new home. We are waiting to assist you and make this flat your own. ', 70000, 2200, 1, 1, 119, 20, 4, 2),
(21, 'We got a good news for the flat hunters! If you are planning to shift to one of the most growing neighborhoods in the city, we got a worthy update. Bashundhara R-A is offering a flat which comprises 2250 Square Feet area. With 3 beds and 4 baths, the flat comes complete with a great floor plan. At the asking price of BDT 21,500,000, the flat comes within your affordability. The washroom comes with all the up-to-date fixtures. You would also have refreshing balconies for a chill out in your morning and evening hours with your family. ', 21500000, 2250, 1, 1, 120, 21, 5, 1),
(22, 'This home situated in a great location which will give you easy access to everyday transportation. The lovely flat is 1810 Square Feet with 3 beds, 3 baths, drawing, dining, balcony and a beautiful kitchen. All-time electricity, water, gas services are also available here. Also, you will be able to live in a pleasant locality. Price is BDT 20,500.\r\n', 20500, 1810, 2, 1, 121, 22, 5, 2),
(23, 'Your business cannot run by itself but it can certainly be easy to manage if there are facilities to ensure the case is such. This commercial space will be quite suitable if you want to forego thinking about the location and maintenance. Set at a price you can easily afford, at BDT 3,20,000, this place will be appropriate if you need everything within hand’s reach. All utility supplies are readily available and you can safely run your business without worrying about security as well. ', 320000, 4200, 4, 2, 122, 23, 5, 2),
(24, 'Looking for something different? See this lovely sublet located in Bashundhara R-A as the location makes sure you get everyday necessity right within your reach. The apartment is 1500 Square Feet with 3 beds,3 baths, drawing, dining, balcony and a kitchen. All-time electricity, water, gas services are also available here. The locality here is very pleasant. Price is BDT 12,000.', 12000, 1500, 3, 1, 123, 24, 5, 2),
(25, 'If you are looking for a home with 3 beds and 3 baths, this should be perfect and within an affordable range of BDT 45,000. Well fitted with gas, electricity and water supplies, this flat is ideal to move in for new inhabitants. The building welcomes with a very commodious parking lot and an elevator to take to the apartment to this apartment. After entering the flat, you will find ample rooms cited for your recessing time and also happy dine hour. The kitchen area is just close to the dining space which gives the impression of ample light and space to have a content cooking time. Well-fitted bathrooms with resilient fixtures as per your prerequisites. One allotted parking space would come along with this beautiful flat. Lots of restaurants, shopping places and schools are nearby as well as parks so the neighborhood is great as well.', 45000, 1950, 1, 1, 124, 25, 5, 2),
(26, 'Good news for the home hunters! If you are planning to shift to one of the most rising neighborhoods in the city, we got a great update. Uttara is granting a lovely 3 beds flat for sale for asking price at BDT 9,350,000. With 3 beds, 3 baths the apartment also has living rooms, balcony and kitchen. The apartment is well facilitated with all-time gas, water and electricity. The amicable locality is perfect to settle with your family. Transportation stops are very close to this location as well. ', 9350000, 1700, 3, 1, 125, 26, 6, 1),
(27, 'We got a good news for the flat hunters! If you are planning to shift to one of the most growing neighborhoods in the city, we got a worthy update. Uttara is offering a flat which comprises 1850 Square Feet area. With 3 beds and 3 baths, the flat comes complete with a great floor plan. At the asking price of BDT 35,000, the flat comes within your affordability. The washroom comes with all the up-to-date fixtures. You would also have refreshing balconies for a chill out in your morning and evening hours with your family. ', 35000, 1850, 2, 1, 126, 27, 6, 2),
(28, 'A brilliant investment opportunity awaits you in the form of office space in Uttara. The location is also one of the most lucrative business locations to expand your business. The deal we offered is undoubtedly advantageous as the property is very demanding in that area. The price for this office space is BDT 25,000. ', 25000, 900, 4, 2, 127, 28, 6, 2),
(29, 'We bring you a beautiful and distinct 900 Square Feet sublet for rent in Uttara having situated in a pleasant location. You will enjoy all-time water, gas and electricity while you will be a residence of this building. The respective unit comes with 2 beds, 2 baths, living space and a beautiful kitchen. Some good, school, colleges and everyday transportation facilities are very close to this flat. All the washrooms are attached with quality and durable fixtures. In this place, you will find every service to live a good life. The asking price for this vacant flat is BDT 16,000 which is very affordable comparing to the flats in this area. ', 16000, 900, 3, 1, 129, 29, 6, 2),
(30, 'A lively area to live, lovely home to settle and it all comes at a reasonable price of BDT 21,000. This vacant apartment situated on an area of 1800 Square Feet is located in a place where you will find all your needs readily met with. The corresponding unit holds a great floor plan with 3 beds and 3 baths. The flat is beautifully equipped with well-fitted tiles and cabinet. The rooms are well prepared with the finest quality fixtures and the washrooms are installed with a high durability guarantee. An added benefit for living in this flat is, a large number of groceries, school, colleges and Universities are located in the nearby area.\r\n', 21000, 1800, 1, 1, 129, 30, 6, 2),
(31, 'Looking for a nice and cozy place to settle. Check out this 1650 Square Feet flat from our enlisted photos which is lovely as well as affordable. The flat has got an open floor plan, all over tiled flooring and soothing painting which are some of the great features this home is going to offer. All-time utilities, large windows and spot on security is also there. For the comfiest living for your family, the correspondent vacant flat comes complete with 3 beds, 4 baths and a beautiful kitchen with durable fittings. The balconies would refill the happy time with your family after a hectic day. The flat comes with a price of BDT 16,000,000. ', 16000000, 1650, 1, 1, 130, 31, 7, 1),
(32, 'Congenial environment, appropriate commuting system and equitable prices of properties make the area Mohammadpur a wonderful place to settle. This flat located in the area comes for an asking price of BDT 25,000. This wonderful building very spacious which includes 3 beds and 3 baths. The apartment has got balconies and a nice kitchen. The facing of this flat will keep your home warm for the whole day. Come and grab this affordable flat to settle in this wonderful locality.\r\n', 25000, 1200, 2, 1, 131, 32, 7, 2),
(33, 'Do you aspire to grow your business? see this vacant commercial space in Mohammadpur comes complete with all utility supplies, electricity and other important facilities. This space can be a perfect opportunity to grow your business. This space is located in one of the lucrative locations to endure your business. The price is BDT 32,000. ', 32000, 1600, 4, 1, 132, 33, 7, 2),
(34, 'Looking for the most favorable flat in Mohammadpur? You just chose the right link to get through it. We are offering a reasonably priced sublet for rent having 1600 Square Feet area. This wonderful apartment is set with an amazing floor plan. As a resident of this flat, you will be able to enjoy facilities like all time electricity backup, water and gas. The correspondent flat features 3 beds, 2 baths, drawing, dining and a beautiful kitchen. To pass some good family time the apartment also has a balcony. This flat priced at BDT 21,000. ', 9000, 1600, 3, 1, 133, 34, 7, 2),
(35, 'Well-to-do living and easy movement! If you are looking for a flat like in this kind of location we have a great news. A 500 Square Feet beautiful apartment is vacant in the location. The flat is offered with 1 bed, 1 bath, dining, living space and a beautiful kitchen. The washrooms are tiled with durable fittings that would make you content with your desirable hygiene. With excellent security, all-time water, gas and electricity are available for this flat. The price of this correspondent flat is BDT 8,000.\r\n', 8000, 500, 1, 1, 134, 35, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `Description` text CHARACTER SET latin1 NOT NULL,
  `Property_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`Description`, `Property_type_id`) VALUES
('Apartment', 1),
('Flat', 2),
('Sublet', 3),
('Office', 4);

-- --------------------------------------------------------

--
-- Table structure for table `purpose`
--

CREATE TABLE `purpose` (
  `Purpose_ID` int(2) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purpose`
--

INSERT INTO `purpose` (`Purpose_ID`, `Description`) VALUES
(1, 'Buy'),
(2, 'Rent');

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `Tenant_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_customer`
--

CREATE TABLE `tenant_customer` (
  `tc_id` int(11) NOT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `Zone_id` int(11) NOT NULL,
  `Zone_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`Zone_id`, `Zone_name`) VALUES
(1, 'Mirpur'),
(2, 'Dhanmondi'),
(3, 'Gulshan'),
(4, 'Banani'),
(5, 'Baridhara'),
(6, 'Uttara'),
(7, 'Mohammadpur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_type`
--
ALTER TABLE `area_type`
  ADD PRIMARY KEY (`Area_type_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_id`);

--
-- Indexes for table `cutomer_property`
--
ALTER TABLE `cutomer_property`
  ADD PRIMARY KEY (`cp_id`),
  ADD UNIQUE KEY `cutomer_property_cp_id_uindex` (`cp_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD UNIQUE KEY `features_pk` (`Property_id`),
  ADD UNIQUE KEY `features_pk_2` (`nearby`),
  ADD KEY `Property_id` (`Property_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Loc_id`),
  ADD KEY `location_zone_Zone_id_fk` (`Zone_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`Owner_id`);

--
-- Indexes for table `owner_customer`
--
ALTER TABLE `owner_customer`
  ADD PRIMARY KEY (`oc_id`),
  ADD UNIQUE KEY `owner_customer_oc_id_uindex` (`oc_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`Property_id`),
  ADD KEY `Property_type_id` (`Property_type_id`),
  ADD KEY `Area_type_id` (`Area_type_id`),
  ADD KEY `property_location_Loc_id_fk` (`Loc_id`),
  ADD KEY `property_owner_Owner_id_fk` (`Owner_id`),
  ADD KEY `property_zone_Zone_id_fk` (`Zone_id`),
  ADD KEY `Purpose_ID` (`Purpose_ID`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`Property_type_id`);

--
-- Indexes for table `purpose`
--
ALTER TABLE `purpose`
  ADD PRIMARY KEY (`Purpose_ID`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`Tenant_id`);

--
-- Indexes for table `tenant_customer`
--
ALTER TABLE `tenant_customer`
  ADD PRIMARY KEY (`tc_id`),
  ADD UNIQUE KEY `tenant_customer_tc_id_uindex` (`tc_id`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`Zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cutomer_property`
--
ALTER TABLE `cutomer_property`
  MODIFY `cp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `Loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tenant_customer`
--
ALTER TABLE `tenant_customer`
  MODIFY `tc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `Zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cutomer_property`
--
ALTER TABLE `cutomer_property`
  ADD CONSTRAINT `cutomer_property_customer_Customer_id_fk` FOREIGN KEY (`cp_id`) REFERENCES `customer` (`Customer_id`),
  ADD CONSTRAINT `cutomer_property_property_Property_id_fk` FOREIGN KEY (`cp_id`) REFERENCES `property` (`Property_id`);

--
-- Constraints for table `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_ibfk_1` FOREIGN KEY (`Property_id`) REFERENCES `property` (`Property_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_zone_Zone_id_fk` FOREIGN KEY (`Zone_id`) REFERENCES `zone` (`Zone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `owner_customer`
--
ALTER TABLE `owner_customer`
  ADD CONSTRAINT `owner_customer_customer_Customer_id_fk` FOREIGN KEY (`oc_id`) REFERENCES `customer` (`Customer_id`),
  ADD CONSTRAINT `owner_customer_owner_Owner_id_fk` FOREIGN KEY (`oc_id`) REFERENCES `owner` (`Owner_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`Property_type_id`) REFERENCES `property_type` (`Property_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_ibfk_2` FOREIGN KEY (`Area_type_id`) REFERENCES `area_type` (`Area_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_ibfk_3` FOREIGN KEY (`Purpose_ID`) REFERENCES `purpose` (`Purpose_ID`),
  ADD CONSTRAINT `property_location_Loc_id_fk` FOREIGN KEY (`Loc_id`) REFERENCES `location` (`Loc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_owner_Owner_id_fk` FOREIGN KEY (`Owner_id`) REFERENCES `owner` (`Owner_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_zone_Zone_id_fk` FOREIGN KEY (`Zone_id`) REFERENCES `zone` (`Zone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tenant_customer`
--
ALTER TABLE `tenant_customer`
  ADD CONSTRAINT `tenant_customer_customer_Customer_id_fk` FOREIGN KEY (`tc_id`) REFERENCES `customer` (`Customer_id`),
  ADD CONSTRAINT `tenant_customer_tenant_Tenant_id_fk` FOREIGN KEY (`tc_id`) REFERENCES `tenant` (`Tenant_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
