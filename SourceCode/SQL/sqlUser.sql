# noinspection SpellCheckingInspectionForFile

--
-- Table structure for table `users`
--

CREATE DATABASE IF NOT EXISTS UrbanStore;
USE UrbanStore;

SET FOREIGN_KEY_CHECKS = 0; -- to disable them

DROP TABLE IF EXISTS users;

SET FOREIGN_KEY_CHECKS = 1; -- to re-enable them

    -- TODO Add Roles in db table
CREATE TABLE `users`
(
    `userId`      int(8)       NOT NULL,
    `userName`    varchar(55)  NOT NULL,
    `password`    varchar(255) NOT NULL,
    `security`    varchar(500) NOT NULL,
    `displayName` varchar(55)  NOT NULL,
    `adress`      varchar(100) NOT NULL,
    `city`        varchar(100) NOT NULL,
    `state`       varchar(100) NOT NULL,
    `zip`         varchar(100) NOT NULL,
    `points`        int(100) not NULL,
    `role`        varchar(100) NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users`
VALUES (1, 'admin', '$2a$10$0FHEQ5/cplO3eEKillHvh.y009Wsf4WCKvQHsZntLamTUToIBe.fG', 'I am the admin', 'Admin',
        '100w 100s', 'Salt Lake City', 'UT', '84102', 435221, 'admin');

INSERT INTO `users`
VALUES (2, 'msis@utah.edu', '$2y$10$IASw3hGOm.nbnT8Fk.7vxu571A4Z6wQfltx5lhfdYwV6bzVqG32IO', 'testPhrase', 'Msis',
        '500w 500s', 'Salt Lake City', 'UT', '84111', 0, 'user');

INSERT INTO `users`
VALUES (3, 'bsmith', '$2y$10$1LB0B5Uv6kzDLR0geDIQ5eQht9RZgSw4X5baMhWD28nf3BDnFhau2', 'I am the admin', 'Bert Smith',
        '100w 100s', 'London', 'AK', '12111', 5342235, 'admin');

INSERT INTO `users`
VALUES (4, 'pjones', '$2y$10$O5.EOKD4MN477OaNiRObP.tS6vmJuSt/BKDLj3CN21KfH40rrWTmq', 'I am here for grading', 'Peter Jones',
        '500w 500s', 'Amsterdam', 'AR', '12102', 12523, 'user');

--
-- Indexes for table `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
    MODIFY `userId` int(8) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

