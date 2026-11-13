-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2026 at 03:27 PM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.3.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniforum_qing`
--

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `idUser` int(11) NOT NULL,
  `idPost` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`idUser`, `idPost`, `created_on`) VALUES
(1, 7, '2025-09-22 19:10:00'),
(1, 13, '2025-10-04 11:00:00'),
(1, 22, '2025-10-18 20:00:00'),
(1, 37, '2025-12-03 10:30:00'),
(1, 50, '2025-12-22 17:00:00'),
(2, 1, '2025-09-18 15:12:00'),
(2, 9, '2025-09-29 12:45:00'),
(2, 18, '2025-10-11 17:00:00'),
(2, 29, '2025-11-03 15:00:00'),
(2, 41, '2025-12-10 16:00:00'),
(2, 77, '2026-01-15 10:00:00'),
(3, 1, '2025-09-18 16:32:00'),
(3, 17, '2025-10-11 15:30:00'),
(3, 27, '2025-10-26 14:00:00'),
(3, 45, '2025-12-16 12:30:00'),
(4, 13, '2025-10-04 10:30:00'),
(4, 21, '2025-10-18 19:30:00'),
(4, 35, '2025-11-12 21:00:00'),
(4, 65, '2026-01-11 15:00:00'),
(5, 1, '2026-11-13 15:19:29'),
(5, 53, '2026-01-02 12:00:00'),
(6, 5, '2025-09-22 18:00:00'),
(6, 14, '2025-10-04 12:15:00'),
(6, 33, '2025-11-12 18:00:00'),
(7, 2, '2025-09-18 18:02:00'),
(7, 10, '2025-09-29 14:00:00'),
(7, 25, '2025-10-26 11:30:00'),
(7, 80, '2026-01-15 19:00:00'),
(8, 21, '2025-10-18 18:00:00'),
(8, 31, '2025-11-03 18:00:00'),
(8, 39, '2025-12-03 15:00:00'),
(8, 57, '2026-01-04 17:00:00'),
(9, 41, '2025-12-10 17:00:00'),
(9, 57, '2026-01-04 18:00:00'),
(10, 48, '2025-12-16 18:00:00'),
(10, 62, '2026-01-06 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `idPost` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `idTopic` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`idPost`, `content`, `created_on`, `idTopic`, `idUser`) VALUES
(1, 'Who has the best character design in anime? Personally I love Dazai. His design is kinda simple but still pretty.', '2025-09-18 14:32:00', 1, 1),
(2, 'I would say Flins! (I know he\'s not an anime character but whatever) His color palette and outfit are so cool. Everything feels very harmonious.', '2025-09-18 15:45:00', 1, 2),
(3, 'Columbina if we\'re going into genshin characters!! The details in her clothes and hair are absolutely beautiful.', '2025-09-18 18:10:00', 1, 6),
(4, 'For me it is definitely Gojo. The design is not complicated but you can recognize him immediately.', '2025-09-18 19:35:00', 1, 7),
(5, 'Finally finished my OC after working on her for two weeks!! His name is Ayden and he is a demon.', '2025-09-22 15:47:00', 2, 2),
(6, 'She sounds adorable! I love designing fantasy characters. Do you have a reference sheet?', '2025-09-22 16:25:00', 2, 3),
(7, 'Here is mine! His name is Ren and he is supposed to be a mysterious forest spirit. Still working on the outfit.', '2025-09-22 17:15:00', 2, 1),
(8, 'The colors are so pretty!! I think a little more contrast would make the character stand out even more.', '2025-09-22 18:50:00', 2, 4),
(9, 'How do you guys draw hands without crying? I have been trying for three hours and they look like potatoes.', '2025-09-29 11:32:00', 3, 6),
(10, 'Honestly, practice with simple shapes first. Think of the palm as a box and the fingers as cylinders.', '2025-09-29 12:05:00', 3, 1),
(11, 'Use your own hand as a reference! Take pictures from different angles. It helped me a lot.', '2025-09-29 13:40:00', 3, 2),
(12, 'I recommend watching some gesture drawing tutorials. Also, nobody draws perfect hands every time haha.', '2025-09-29 17:30:00', 3, 7),
(13, 'Finished this drawing yesterday! I tried painting with softer brushes for the first time. What do you think?', '2025-10-04 09:12:00', 4, 7),
(14, 'The lighting looks really nice! I especially like how you painted the hair.', '2025-10-04 10:00:00', 4, 2),
(15, 'This looks amazing. Maybe add a little more detail to the background?', '2025-10-04 11:15:00', 4, 1),
(16, 'Thank you!! I was actually scared to post it because I usually only draw sketches.', '2025-10-04 13:50:00', 4, 7),
(17, 'I just started digital art and everything looks terrible. Any advice for someone who is completely new?', '2025-10-11 14:57:00', 5, 8),
(18, 'Do not compare your first drawings to artists who have been drawing for ten years. Just enjoy the process!', '2025-10-11 16:15:00', 5, 1),
(19, 'Learn anatomy, perspective and values slowly. You do not need to master everything immediately.', '2025-10-11 17:55:00', 5, 2),
(20, 'Also, save your old drawings! Looking back at them after a few months is surprisingly motivating.', '2025-10-12 15:40:00', 5, 7),
(21, 'Hello everyone! I am opening commissions because I really need some extra money. Portraits and character illustrations available!', '2025-10-18 16:37:00', 6, 3),
(22, 'Do you have a price list? I might be interested in a character portrait.', '2025-10-18 17:30:00', 6, 4),
(23, 'Your art style is so cute! Do you accept payment through PayPal?', '2025-10-18 19:05:00', 6, 1),
(24, 'Thank you so much! I will post my full commission sheet tomorrow with prices and examples.', '2025-10-18 20:35:00', 6, 3),
(25, 'I personally do not consider AI-generated images to be art. There is no real artistic effort behind them. What do you think?', '2025-10-26 10:07:00', 7, 2),
(26, 'I agree. Art is about expressing yourself and developing your own skills. Generating an image with a prompt is not the same thing.', '2025-10-26 11:15:00', 7, 1),
(27, 'I think AI can be a useful tool, but I understand why artists feel uncomfortable with it, especially when their work is used without permission.', '2025-10-26 12:45:00', 7, 7),
(28, 'For me, the biggest issue is that AI images are often presented as handmade illustrations. People should at least be honest about how they created them.', '2025-10-27 10:10:00', 7, 6),
(29, 'Do you think tracing is always bad? I sometimes trace references to understand proportions, but I am not sure if that is considered cheating.', '2025-11-03 13:42:00', 8, 3),
(30, 'I think tracing can be useful for learning, as long as you do not claim someone else\'s work as your own.', '2025-11-03 14:40:00', 8, 1),
(31, 'For beginners it can help understand shapes and anatomy. But relying on it too much might stop you from improving.', '2025-11-03 17:05:00', 8, 8),
(32, 'I agree! I sometimes trace my own sketches when making clean line art. I do not think there is anything wrong with that.', '2025-11-04 13:50:00', 8, 7),
(33, 'Please share your favorite brushes! I feel like I have downloaded 500 brushes and still use the default one.', '2025-11-12 17:17:00', 9, 1),
(34, 'The basic round brush is honestly enough for almost everything. Do not underestimate it!', '2025-11-12 18:20:00', 9, 3),
(35, 'I love textured pencil brushes for sketching. They make digital drawings feel more traditional.', '2025-11-12 20:45:00', 9, 6),
(36, 'You can also create your own brushes! It is surprisingly fun once you understand the settings.', '2025-11-13 17:35:00', 9, 4),
(37, 'I have not drawn anything in two weeks and I feel guilty about it. How do you get out of art block?', '2025-12-03 09:52:00', 10, 6),
(38, 'Take a break! Sometimes forcing yourself to draw makes everything worse.', '2025-12-03 11:30:00', 10, 1),
(39, 'I usually draw silly little doodles instead of trying to make a finished illustration.', '2025-12-03 13:55:00', 10, 7),
(40, 'Looking at other artists work or going outside for inspiration helps me a lot. Do not be too hard on yourself.', '2025-12-04 11:50:00', 10, 8),
(41, 'I tried a completely different coloring style today! Usually I use flat colors but I wanted something more painterly.', '2025-12-10 15:22:00', 11, 7),
(42, 'I really like the result! The shadows give the drawing so much depth.', '2025-12-10 16:05:00', 11, 2),
(43, 'The colors look beautiful. What blending brush did you use?', '2025-12-10 17:40:00', 11, 4),
(44, 'Thank you! I used a textured brush with low opacity. It took a while to get used to it.', '2025-12-11 16:20:00', 11, 7),
(45, 'I can draw characters for hours but the moment I have to draw a background I suddenly forget how to use my tablet.', '2025-12-16 11:47:00', 12, 8),
(46, 'Start with simple shapes and perspective. You do not need to add every little detail.', '2025-12-16 13:15:00', 12, 3),
(47, 'Pinterest has some great environment references. I make folders for buildings, nature and interiors.', '2025-12-16 14:45:00', 12, 1),
(48, 'Same problem here. My characters live in a completely white void apparently.', '2025-12-16 16:30:00', 12, 10),
(49, 'Is it okay to take inspiration from another artists style? Sometimes I love a particular style so much that I want to draw like that.', '2025-12-22 14:32:00', 13, 4),
(50, 'Taking inspiration is completely normal! Every artist starts by learning from someone else.', '2025-12-22 16:40:00', 13, 1),
(51, 'I think there is a difference between being inspired and directly copying someone. You should eventually develop your own style.', '2025-12-23 17:30:00', 13, 9),
(52, 'Honestly, I think art styles evolve all the time. We are all influenced by the artists and media we enjoy.', '2025-12-23 19:15:00', 13, 6),
(53, 'My tablet broke and I have been drawing with a mouse. Is this actually possible or am I doomed?', '2026-01-02 10:42:00', 14, 2),
(54, 'It is definitely possible! Vector art and line art can work surprisingly well with a mouse.', '2026-01-02 13:50:00', 14, 8),
(55, 'I once made an entire illustration with a mouse. It took forever but I was proud of it haha.', '2026-01-02 15:20:00', 14, 3),
(56, 'You can also try using the pen tool for smoother curves. Good luck!', '2026-01-03 11:10:00', 14, 10),
(57, 'This is my first attempt at a digital portrait! I know the proportions are a little weird but I wanted to share it.', '2026-01-04 16:12:00', 15, 3),
(58, 'For a first portrait this is really good! I would work a little more on the placement of the eyes.', '2026-01-04 20:30:00', 15, 9),
(59, 'The shading is nice. Try using a mirror or flipping your canvas to spot proportion mistakes.', '2026-01-05 10:45:00', 15, 2),
(60, 'Thank you for the advice! I never thought about flipping the canvas. That actually helps a lot.', '2026-01-05 14:20:00', 15, 3),
(61, 'How do you guys choose colors? I always end up using random colors and my drawings look weird.', '2026-01-06 09:27:00', 16, 9),
(62, 'Try limiting yourself to three or four main colors. It makes the whole illustration feel more consistent.', '2026-01-06 11:15:00', 16, 10),
(63, 'I usually look at color palettes online and pick one before starting my drawing.', '2026-01-06 14:40:00', 16, 1),
(64, 'Also, remember that lighting affects colors. Shadows do not always have to be black!', '2026-01-07 10:25:00', 16, 7),
(65, 'I have 73 layers in my drawing and I have no idea what half of them are anymore. Please help.', '2026-01-11 13:57:00', 17, 10),
(66, 'Name your layers as you go. Future you will be extremely grateful.', '2026-01-11 15:20:00', 17, 1),
(67, 'Groups are your best friend. I separate sketch, line art, colors and shadows into folders.', '2026-01-11 17:05:00', 17, 4),
(68, 'I always tell myself I will organize the layers later. Later never comes.', '2026-01-12 09:30:00', 17, 8),
(69, 'Do you sketch on paper before moving to your drawing software or do you start directly on the tablet?', '2026-01-12 15:32:00', 18, 1),
(70, 'I usually sketch traditionally because I like the feeling of pencil on paper.', '2026-01-12 17:10:00', 18, 8),
(71, 'Directly on the tablet for me. I make a very rough sketch and improve it as I go.', '2026-01-13 10:45:00', 18, 3),
(72, 'Both! It depends on the project. Sometimes paper is faster for exploring ideas.', '2026-01-13 14:20:00', 18, 6),
(73, 'Where do you get inspiration for your original characters? I feel like all my characters look the same.', '2026-01-14 10:17:00', 19, 7),
(74, 'I get inspiration from music. Sometimes a song gives me an entire character concept.', '2026-01-14 11:30:00', 19, 2),
(75, 'I love mixing different aesthetics, historical fashion and fantasy elements.', '2026-01-14 13:45:00', 19, 4),
(76, 'Try writing a little personality description before drawing. Their clothes and appearance can reflect who they are.', '2026-01-14 16:20:00', 19, 9),
(77, 'Since the year is over, show us your art progress! I compared my January drawing with my December one and the difference is crazy.', '2026-01-15 08:47:00', 20, 4),
(78, 'I used to struggle with basic anatomy and now I can draw full characters. Still a long way to go!', '2026-01-15 10:15:00', 20, 2),
(79, 'My biggest improvement was learning how to use light and shadows. I am finally happy with my coloring.', '2026-01-15 12:30:00', 20, 7),
(80, 'This community motivated me to draw more this year. Thanks everyone and keep creating!', '2026-01-15 18:20:00', 20, 9);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `idTopic` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`idTopic`, `title`, `created_on`, `idUser`) VALUES
(1, 'Favorite anime character design?', '2025-09-18 14:30:00', 1),
(2, 'Show me your OCs!', '2025-09-22 15:45:00', 2),
(3, 'How to draw hands pls TT', '2025-09-29 11:30:00', 6),
(4, 'Here is my most recent drawing!', '2025-10-04 09:10:00', 7),
(5, 'Advice for beginner artists?', '2025-10-11 14:55:00', 8),
(6, 'Commission open! (pls I need money)', '2025-10-18 16:35:00', 3),
(7, 'AI art: is it really art?', '2025-10-26 10:05:00', 2),
(8, 'Is tracing ever acceptable when learning to draw?', '2025-11-03 13:40:00', 3),
(9, 'Share your favorite brushes!', '2025-11-12 17:15:00', 1),
(10, 'How do you deal with art block?', '2025-12-03 09:50:00', 6),
(11, 'I tried a new coloring style!', '2025-12-10 15:20:00', 7),
(12, 'Drawing backgrounds is my biggest enemy', '2025-12-16 11:45:00', 8),
(13, 'Do you think art styles can be copied?', '2025-12-22 14:30:00', 4),
(14, 'Is drawing with a mouse actually possible?', '2026-01-02 10:40:00', 2),
(15, 'Rate my first digital portrait!', '2026-01-04 16:10:00', 3),
(16, 'How do you choose your color palettes?', '2026-01-06 09:25:00', 9),
(17, 'My layers are a complete disaster', '2026-01-11 13:55:00', 10),
(18, 'Do you sketch traditionally before drawing digitally?', '2026-01-12 15:30:00', 1),
(19, 'What inspires you to create characters?', '2026-01-14 10:15:00', 7),
(20, 'Show us your art progress from 2025!', '2026-01-15 08:45:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUser`, `username`, `email`, `created_on`) VALUES
(1, 'Potato_z', 'potato.00@gmail.com', '2026-11-13 14:10:57'),
(2, 'CoffeeAddict01', 'coffee.addict@gmail.com', '2026-11-13 14:10:57'),
(3, 'Shadow_5', 'shadow505@gmail.com', '2026-11-13 14:10:57'),
(4, 'Mimi', 'mimiluv@gmail.com', '2026-11-13 14:10:57'),
(5, 'whaleGigaMax', 'ripmywallet@gmail.com', '2026-11-13 14:10:57'),
(6, 'bleh', 'bleh19@gmail.com', '2026-11-13 14:10:57'),
(7, 'pikachoo', 'pikachoom@gmail.com', '2026-11-13 14:10:57'),
(8, 'duck.exe', 'duck.exe@gmail.com', '2026-11-13 14:10:57'),
(9, 'altF4', 'gameOver404@gmail.com', '2026-11-13 14:10:57'),
(10, 'imsane', 'orami@gmail.com', '2026-11-13 14:10:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`idUser`,`idPost`),
  ADD KEY `idPost` (`idPost`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`idPost`),
  ADD KEY `idTopic` (`idTopic`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`idTopic`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `idPost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `idTopic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`idPost`) REFERENCES `posts` (`idPost`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`idTopic`) REFERENCES `topics` (`idTopic`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
