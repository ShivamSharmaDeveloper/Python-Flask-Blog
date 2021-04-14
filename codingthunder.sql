-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2021 at 08:58 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone`, `msg`, `date`) VALUES
(1, 'first', 'first@gmail.com', '4567895278', 'hello\r\n', '2021-04-14 00:45:21'),
(2, 'test', 'test@mail.com', '7846527945', 'this is a test mail.', '2021-04-14 00:46:23'),
(3, 'test mail', 'testmail@gmail.com', '457896123', 'test mail checking\r\n', '2021-04-14 02:00:50'),
(4, 'test mail', 'testmail@gmail.com', '457896123', 'test mail checking\r\n', '2021-04-14 02:06:15'),
(5, 'Shivam', 'shiv@mail.com', '1234567891', 'heyy how are you', '2021-04-14 12:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(25) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'This is a title for a test Post', 'The first test tagline goes here', 'first-post', 'This is a test post to check the fetching of data from the database.', 'post-bg.jpg', '2021-04-14'),
(2, 'Man must explore the Space!', 'Problems look mighty small from 150 miles up', 'first-blog', 'Here “users” is list and “user” is one item from that list. That item(user) is also a list, so it’s a list in list. We can access all the data in “user”. For example if there is a URL in “user” and we want it in some HTML element, we can get it by writing “{{ user.url }}”. Similarly we can get other items.\r\n\r\nWe can make a div which has everything coded that how one blog listing should look then we just have to repeat that code and simultaneously change the data in every repetition which for loop will do, that div would be like a template in which we just insert the data and rest of the code remains same.', 'post-sample-image.jpg', '2021-04-14'),
(3, 'I believe every human should read this', 'Human Resource', 'slug-post', 'First we need to send list of data to HTML file for it to display one by one with the help of a for loop. For that first we have to filter posts like we did in previous blog but the difference is, in previous blog we filtered it by slug but in this case we want all blogs. So for that code is:', 'post-bg.jpg', '2021-04-15'),
(4, 'Science has not yet mastered prophecy', 'We predict too much for the next year and yet far too little for the next ten.', 'slug-blog', 'Now we have all the blogs from our database in “posts” variable. But we don’t want all, we only want some blogs on home page. “posts” is list of blogs, how can we only get some list items from a list? List slicing! Right! So if we want first five blogs then we can write:', 'post-sample-image.jpg', '2021-04-14'),
(6, 'Download KMSpico', 'The Tagline for new post', 'post-new', 'From the last tutorials, we have started learning about backend in web development in Node.Js. Moving further, here we will see some examples of Node.Js Modules. Start by making a new file as tut64.js and let us now see what built-in modules in Node.Js are?\r\n\r\nThe modules in Node.Js are the same as JavaScript libraries. These are the set of functions that we want to include in our application. To see the whole list of modules, you can visit the official website here. Let us see an example, wherewith the help of these modules, we can read and write the same file.', 'post-bg.jpg', '2021-04-14'),
(7, 'Node.Js Modules with Examples', 'Node.js Tutorials', 'blog-new', 'This is a very simple example of the use case of how the modules work under Node.Js. We can even make our own modules and use them accordingly. You can try to make different modules so that you get comfortable with it. In the upcoming tutorials, we will learn some complex modules like npm, etc. Till then stay tuned with the tutorials.', 'post-sample-image.jpg', '2021-04-14'),
(8, 'The modules in Node.Js ', 'Types of Modules', 'post-blog', 'From the last tutorials, we have started learning about backend in web development in Node.Js. Moving further, here we will see some examples of Node.Js Modules. Start by making a new file as tut64.js and let us now see what built-in modules in Node.Js are?\r\n\r\nThe modules in Node.Js are the same as JavaScript libraries. These are the set of functions that we want to include in our application. To see the whole list of modules, you can visit the official website here. Let us see an example, wherewith the help of these modules, we can read and write the same file.\r\n\r\nThe first step is to include the module with the help of the following code-', 'post-bg.jpg', '2021-04-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
