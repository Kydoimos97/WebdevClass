--
-- Table structure for table `product`
--

CREATE DATABASE IF NOT EXISTS UrbanStore;
USE UrbanStore;

DROP TABLE IF EXISTS product;

CREATE TABLE `product`
(
    `id`    int(8)       NOT NULL,
    `name`  varchar(55),
    `type`  varchar(255) NOT NULL,
    `cost`  varchar(55)  NOT NULL,
    `brand` varchar(250)

) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
    MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

--
-- Dumping data for table `product`
--
INSERT INTO `product` (`id`, `name`, `type`, `cost`, `brand`)
VALUES ('1', 'Grey Hoodie', 'Hoodie', '60', 'H&M');

INSERT INTO `product` (`id`, `name`, `type`, `cost`, `brand`)
VALUES ('2', 'Blue Hoodie', 'Hoodie', '60', 'H&M');

INSERT INTO `product` (`id`, `name`, `type`, `cost`, `brand`)
VALUES ('3', 'Orange Hoodie', 'Hoodie', '60', 'D&G');