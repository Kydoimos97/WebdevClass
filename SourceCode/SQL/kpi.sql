--
-- Table structure for table `product`
--

CREATE DATABASE IF NOT EXISTS UrbanStore;
USE UrbanStore;

DROP TABLE IF EXISTS kpi;

CREATE TABLE `kpi`
(
    `id`    int(8)      NOT NULL,
    `name`  varchar(55),
    `image` varchar(55) NOT NULL

) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Indexes for table `product`
--
ALTER TABLE `kpi`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `kpi`
    MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

--
-- Dumping data for table `product`
--
INSERT INTO `kpi` (`id`, `name`, `image`)
VALUES ('1', 'Monthly Sales', 'sales.png');

INSERT INTO `kpi` (`id`, `name`, `image`)
VALUES ('2', 'Inventory Level', 'inventory.png');

INSERT INTO `kpi` (`id`, `name`, `image`)
VALUES ('3', 'Number of Returns', 'return.png');

INSERT INTO `kpi` (`id`, `name`, `image`)
VALUES ('4', 'Average Review Score', 'review.png');