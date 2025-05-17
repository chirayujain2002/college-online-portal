-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 06:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(35) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'admin@admin.com', '$2y$10$b3GAX6.Pd6054RRQ8C9se.zfOhTljRkduBfAKWFrmtdKwj02aSTuq');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `article_title` varchar(250) NOT NULL,
  `article_image` varchar(200) NOT NULL,
  `article_description` text NOT NULL,
  `article_date` date NOT NULL,
  `article_trend` tinyint(4) NOT NULL,
  `article_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `category_id`, `author_id`, `article_title`, `article_image`, `article_description`, `article_date`, `article_trend`, `article_active`) VALUES
(43, 3, 6, 'hbljknjniodabvjdnvjkndvkndsmk vm v', 'article-3-1699340641.png', 'Sport pertains to any form of physical activity or game,[1] often competitive and organized, that aims to use, maintain, or improve physical ability and skills while providing enjoyment to participants and, in some cases, entertainment to spectators.[2] Sports can, through casual or organized participation, improve participants\' physical health. Hundreds of sports exist, from those between single contestants, through to those with hundreds of simultaneous participants, either in teams or competing as individuals. In certain sports such as racing, many contestants may compete, simultaneously or consecutively, with one winner; in others, the contest (a match) is between two sides, each attempting to exceed the other. Some sports allow a \"tie\" or \"draw\", in which there is no single winner; others provide tie-breaking methods to ensure one winner. A number of contests may be arranged in a tournament producing a champion. Many sports leagues make an annual champion by arranging games in a regular sports season, followed in some cases by playoffs.\r\n\r\nSport is generally recognised as system of activities based in physical athleticism or physical dexterity, with major competitions such as the Olympic Games admitting only sports meeting this definition.[3] Other organisations, such as the Council of Europe, preclude activities without a physical element from classification as sports.[2] However, a number of competitive, but non-physical, activities claim recognition as mind sports. The International Olympic Committee (through ARISF) recognises both chess and bridge as bona fide sports, and SportAccord, the international sports federation association, recognises five non-physical sports: bridge, chess, draughts (checkers), Go and xiangqi,[4][5] and limits the number of mind games which can be admitted as sports.[1]\r\n\r\nSport is usually governed by a set of rules or customs, which serve to ensure fair competition, and allow consistent adjudication of the winner. Winning can be determined by physical events such as scoring goals or crossing a line first. It can also be determined by judges who are scoring elements of the sporting performance, including objective or subjective measures such as technical performance or artistic impression.\r\n\r\nRecords of performance are often kept, and for popular sports, this information may be widely announced or reported in sport news. Sport is also a major source of entertainment for non-participants, with spectator sport drawing large crowds to sport venues, and reaching wider audiences through broadcasting. Sport betting is in some cases severely regulated, and in some cases is central to the sport.\r\n\r\nAccording to A.T. Kearney, a consultancy, the global sporting industry is worth up to $620 billion as of 2013.[6] The world\'s most accessible and practised sport is running, while association football is the most popular spectator sport.[7]\r\n\r\nMeaning and usage\r\nEtymology\r\nThe word \"sport\" comes from the Old French desport meaning \"leisure\", with the oldest definition in English from around 1300 being \"anything humans find amusing or entertaining\".[8]\r\n\r\nOther meanings include gambling and events staged for the purpose of gambling; hunting; and games and diversions, including ones that require exercise.[9] Roget\'s defines the noun sport as an \"activity engaged in for relaxation and amusement\" with synonyms including diversion and recreation.[10]\r\n\r\nNomenclature\r\nThe singular term \"sport\" is used in most English dialects to describe the overall concept (e.g. \"children taking part in sport\"), with \"sports\" used to describe multiple activities (e.g. \"football and rugby are the most popular sports in England\"). American English uses \"sports\" for both terms.\r\n\r\nDefinition\r\nSee also: Game § Definitions\r\n\r\nThe International Olympic Committee recognises some board games as sports including chess.\r\n\r\nShow jumping, an equestrian sport\r\nThe precise definition of what differentiates a sport from other leisure activities varies between sources. The closest to an international agreement on a definition is provided by the Global Association of International Sports Federations (GAISF), which is the association for all the largest international sports federations (including association football, athletics, cycling, tennis, equestrian sports, and more), and is therefore the de facto representative of international sport.\r\n\r\nGAISF uses the following criteria, determining that a sport should:[1]\r\n\r\nhave an element of competition\r\nbe in no way harmful to any living creature\r\nnot rely on equipment provided by a single supplier (excluding proprietary games such as arena football)\r\nnot rely on any \"luck\" element specifically designed into the sport.\r\nThey also recognise that sport can be primarily physical (such as rugby or athletics), primarily mind (such as chess or Go), predominantly motorised (such as Formula 1 or powerboating), primarily co-ordination (such as billiard sports), or primarily animal-supported (such as equestrian sport).[1]\r\n\r\nThe inclusion of mind sports within sport definitions has not been universally accepted, leading to legal challenges from governing bodies in regards to being denied funding available to sports.[11] Whilst GAISF recognises a small number of mind sports, it is not open to admitting any further mind sports.\r\n\r\nThere has been an increase in the application of the term \"sport\" to a wider set of non-physical challenges such as video games, also called esports (from \"electronic sports\"), especially due to the large scale of participation and organised competition, but these are not widely recognised by mainstream sports organisations. According to Council of Europe, European Sports Charter, article 2.i, \"\'Sport\' means all forms of physical activity which, through casual or organised participation, aim at expressing or improving physical fitness and mental well-being, forming social relationships or obtaining results in competition at all levels.\"[12]\r\n\r\nCompetition\r\n\r\nHorse racing\r\nThere are opposing views on the necessity of competition as a defining element of a sport, with almost all professional sports involving competition, and governing bodies requiring competition as a prerequisite of recognition by the International Olympic Committee (IOC) or GAISF.[1]\r\n\r\nOther bodies advocate widening the definition of sport to include all physical activity. For instance, the Council of Europe include all forms of physical exercise, including those competed just for fun.\r\n\r\nIn order to widen participation, and reduce the impact of losing on less able participants, there has been an introduction of non-competitive physical activity to traditionally competitive events such as school sports days, although moves like this are often controversial.[13][14]\r\n\r\nIn competitive events, participants are graded or classified based on their \"result\" and often divided into groups of comparable performance, (e.g. gender, weight and age). The measurement of the result may be objective or subjective, and corrected with \"handicaps\" or penalties. In a race, for example, the time to complete the course is an objective measurement. In gymnastics or diving the result is decided by a panel of judges, and therefore subjective. There are many shades of judging between boxing and mixed martial arts, where victory is assigned by judges if neither competitor has lost at the end of the match time.\r\n\r\nHistory\r\nMain article: History of sport\r\n\r\nRoman bronze reduction of Myron\'s Discobolos, 2nd century AD\r\n\r\nSwimmers perform squats as warm-up exercise prior to entering the pool in a U.S. military base, 2011.\r\nArtifacts and structures suggest sport in China as early as 2000 BC.[15] Gymnastics appears to have been popular in China\'s ancient past. Monuments to the Pharaohs indicate that a number of sports, including swimming and fishing, were well-developed and regulated several thousands of years ago in ancient Egypt.[16] Other Egyptian sports included javelin throwing, high jump, and wrestling. Ancient Persian sports such as the traditional Iranian martial art of Zoorkhaneh had a close connection to warfare skills.[17] Among other sports that originated in ancient Persia are polo and jousting. The traditional South Asian sport of kabaddi has been played for thousands of years, potentially as a preparation for hunting.[18]\r\n\r\n\r\nMotorised sports have appeared since the advent of the modern age.\r\nA wide range of sports were already established by the time of Ancient Greece and the military culture and the development of sport in Greece influenced one another considerably. Sport became such a prominent part of their culture that the Greeks created the Olympic Games, which in ancient times were held every four years in a small village in the Peloponnesus called Olympia.[19]\r\n\r\nSports have been increasingly organised and regulated from the time of the ancient Olympics up to the present century. Industrialisation has brought motorised transportation and increased leisure time, letting people attend and follow spectator sports and participate in athletic activities. These trends continued with the advent of mass media and global communication. Professionalism became prevalent, further adding to the increase in sport\'s popularity, as sports fans followed the exploits of professional athletes – all while enjoying the exercise and competition associated with amateur participation in sports. Since the turn of the 21st century, there has been increasing debate about whether transgender sports people should be able to participate in sport events that conform with their post-transition gender identity.[20]\r\n\r\nFair play\r\nSportsmanship\r\nMain article: Sportsmanship\r\nSee also: Gamesmanship and Winning isn\'t everything; it\'s the only thing\r\nSportsmanship is an attitude that strives for fair play, courtesy toward teammates and opponents, ethical behaviour and integrity, and grace in victory or defeat.[21][22][23]\r\n\r\nSportsmanship expresses an aspiration or ethos that the activity will be enjoyed for its own sake. The well-known sentiment by sports journalist Grantland Rice, that it is \"not that you won or lost but how you played the game\", and the modern Olympic creed expressed by its founder Pierre de Coubertin: \"The most important thing... is not winning but taking part\" are typical expressions of this sentiment.\r\n\r\nCheating\r\nSee also: Match fixing and cheating\r\nKey principles of sport include that the result should not be predetermined, and that both sides should have equal opportunity to win. Rules are in place to ensure fair play, but participants can break these rules in order to gain advantage.\r\n\r\nParticipants may cheat in order to unfairly increase their chance of winning, or in order to achieve other advantages such as financial gains. The widespread existence of gambling on the results of sports events creates a motivation for match fixing, where a participant or participants deliberately work to ensure a given outcome rather than simply playing to win.\r\n\r\nDoping and drugs\r\nMain article: Use of performance-enhancing drugs in sport\r\nThe competitive nature of sport encourages some participants to attempt to enhance their performance through the use of medicines, or through other means such as increasing the volume of blood in their bodies through artificial means.\r\n\r\nAll sports recognised by the IOC or SportAccord are required to implement a testing programme, looking for a list of banned drugs, with suspensions or bans being placed on participants who test positive for banned substances.\r\n\r\nViolence\r\nViolence in sports involves crossing the line between fair competition and intentional aggressive violence. Athletes, coaches, fans, and parents sometimes unleash violent behaviour on people or property, in misguided shows of loyalty, dominance, anger, or celebration. Rioting or hooliganism by fans in particular is a problem at some national and international sporting contests.[citation needed]', '2023-11-07', 0, 1),
(44, 4, 6, 'Your Daily Connection to Campus Life and Beyond', 'article-4-1699368851.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vitae enim augue. Sed in arcu hendrerit metus condimentum molestie. Duis facilisis metus non ornare pulvinar. In pretium molestie erat at placerat. Fusce interdum viverra est. Nulla facilisi. Nam sit amet diam id libero interdum laoreet. Nunc ut lorem felis. Pellentesque at luctus dui. Sed mattis commodo dictum. Praesent felis ante, facilisis ac augue in, condimentum ornare augue. Pellentesque sem nibh, egestas eu lorem et, porttitor tincidunt mi. Vivamus viverra ex sit amet tortor volutpat, et dapibus lectus dignissim. Phasellus lobortis lobortis arcu, quis pharetra tortor.\r\n\r\nFusce ac dignissim odio. Aliquam ac auctor risus, quis euismod nibh. Aliquam blandit eu ligula in semper. Phasellus tincidunt justo quis aliquet iaculis. Mauris scelerisque, nisl vel rhoncus volutpat, tortor augue scelerisque urna, non dapibus libero dui sit amet neque. Ut finibus, ex at consequat fringilla, ligula neque fermentum mi, ac fermentum mi elit eget felis. Vivamus finibus libero nisl, tincidunt euismod lacus dignissim non. Sed auctor vitae sapien nec pulvinar. Nunc a ultrices lacus, in venenatis nunc. Sed iaculis sollicitudin urna, id ultricies libero malesuada eu. Nullam tempus nunc elit, quis lobortis mauris venenatis sed. Nam ullamcorper felis vitae elit molestie ullamcorper.\r\n\r\nMauris congue, lectus pulvinar pretium congue, ipsum ante maximus diam, vitae varius risus neque vel justo. Nunc in pretium mi. Cras hendrerit, tortor id facilisis bibendum, magna purus blandit turpis, nec accumsan tellus ex non dui. Suspendisse finibus cursus dui, nec placerat tortor iaculis in. Ut porta lorem vitae orci tincidunt auctor a ac nibh. Proin finibus magna a mauris interdum viverra. Nam sollicitudin lorem vel lacus congue, in faucibus augue tincidunt. Aliquam aliquam eleifend augue in eleifend.\r\n\r\nVestibulum nec sem quis felis luctus lacinia id eget purus. Sed lectus metus, ornare sed lacus eget, pharetra consectetur felis. Donec ullamcorper ullamcorper felis sit amet mollis. Sed ornare ex a congue suscipit. Maecenas vel neque sed urna maximus sagittis ut a risus. Mauris pharetra, metus sit amet ultricies lacinia, quam velit pretium nisl, in elementum massa metus et nibh. Cras sed elementum justo. Integer in congue enim, ut ornare libero. Etiam eu mollis leo. Pellentesque ultrices blandit odio, sit amet pharetra massa sollicitudin at. Duis egestas quis quam porta egestas. Maecenas nisi quam, lacinia ut congue ut, laoreet a mi. Fusce gravida purus at mi viverra, eu suscipit libero auctor. In interdum tristique ex, eu elementum dolor facilisis dapibus.', '2023-11-07', 1, 1),
(45, 1, 6, 'CU Achieves Historic Milestone ', 'article-1-1699370637.png', 'We\'re thrilled to announce that Chandigarh University has become the FIRST Private University in India to earn the prestigious ABET accreditation for the highest number of Engineering programs!\r\n\r\nThis international recognition reaffirms our unwavering commitment to providing top-notch education by upholding the highest academic standards, investing in cutting-edge infrastructure, and cultivating a vibrant learning environment.\r\n\r\nWith this monumental achievement, CU\'s #Engineering and #ComputerScience programs have soared to unprecedented levels of excellence.\r\nThe rigorous evaluation by ABET scrutinized every aspect - curriculum, faculty qualifications, #research opportunities, facilities, and student outcomes.\r\n\r\nA huge congratulations to our exceptional #students and dedicated faculty for making this achievement possible!\r\n\r\nYour hard work and commitment continue to set new standards for excellence.\r\nIt\'s always amazing to see institutions pushing the boundaries of academic excellence. Chandigarh University\'s ABET accreditation for Computer Science and Engineering programs is a proud moment for the entire educational community. 🌟 #CUAccredited\r\n\r\nLet\'s keep soaring to new heights!\r\n\r\n', '2023-11-07', 1, 1),
(46, 3, 6, 'Chandigarh University short of inspirational', 'article-3-1699370754.png', 'At Chandigarh University, we believe in nurturing not just academic brilliance but also the champion within its students. From adrenaline-pumping sports events to mind-boggling quizzes, Chandigarh University always encourages its students to participate in various competitions to sharpen their talent.\r\n\r\nToday, Chandigarh University is thrilled to announce that our very own International #RollBall Player and all-rounder student, Srikant Sahu, has showcased his exceptional skills at the 37th Indian #NationalGames 2023 and brought home the Bronze Medal, making CU and the entire nation proud.\r\n\r\nRepresenting Chandigarh University on the national stage, Srikant has showcased true sportsmanship and dedication. His journey from our campus to the podium is nothing short of inspirational!\r\n\r\nToday, Chandigarh University is thrilled to announce that our very own International #RollBall Player and all-rounder student, Srikant Sahu, has showcased his exceptional skills at the 37th Indian #NationalGames 2023 and brought home the Bronze Medal, making CU and the entire nation proud.\r\n\r\nRepresenting Chandigarh University on the national stage, Srikant has showcased true sportsmanship and dedication. His journey from our campus to the podium is nothing short of inspirational!', '2023-11-07', 0, 1),
(47, 7, 6, 'Hon\'ble Chancellor S. Satnam Singh Sandhu ji', 'article-7-1699370863.png', 'Stay connected, informed, and inspired with EcoBulletin - the brand new newsletter from CU\'s University School of Business!\r\n\r\nThanks to the visionary leadership of our Hon\'ble Chancellor S. Satnam Singh Sandhu ji (@satnamsandhuchd ) and the relentless efforts of Hon\'ble Director Prof. Dr. Nilesh Arora, we\'re now equipped with a platform that reflects our commitment to fostering a connected & empowered community and showcases the incredible achievements of our faculty, students, and alumni.\r\n\r\nEcoBulletin isn\'t just a newsletter; it\'s a testament to our commitment to growth and collaboration. Here\'s to new avenues of learning, networking, and growth that will undoubtedly benefit our B-School and everyone connected to it.\r\n\r\nCheck out these glimpses from the launch\r\nEcoBulletin isn\'t just a newsletter; it\'s a testament to our commitment to growth and collaboration. Here\'s to new avenues of learning, networking, and growth that will undoubtedly benefit our B-School and everyone connected to it.\r\n\r\nCheck out these glimpses from the launch', '2023-11-07', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(35) NOT NULL,
  `author_password` varchar(100) NOT NULL,
  `author_email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_password`, `author_email`) VALUES
(6, 'Chirayu', '$2y$10$fxKce49OF4VW9TmFBKb81OhoxbY0mJwdwmcvJalAJdBHXUEg3K0d2', 'jainchirayu2002@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`bookmark_id`, `user_id`, `article_id`) VALUES
(28, 9, 40),
(29, 7, 40),
(32, 7, 42),
(33, 7, 41),
(34, 9, 41),
(37, 7, 44);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(45) NOT NULL,
  `category_color` varchar(35) NOT NULL,
  `category_image` varchar(250) NOT NULL,
  `category_description` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_color`, `category_image`, `category_description`) VALUES
(1, 'Campus News', 'tag-brown', 'Politics1616565135.jpg', 'Covering events, developments, and activities happening on campus, including academic updates, administrative changes, and student achievements.'),
(2, 'Academics', 'tag-orange', 'Technology1616565177.jpg', 'Providing information on courses, programs, faculty, research, and educational resources.'),
(3, 'Sports', 'tag-purple', 'Food1616565209.jpg', 'Covering college sports teams, scores, schedules, and athlete profiles.'),
(4, 'Campus Events', 'tag-yellow', 'Education1616565234.jpg', 'Promoting upcoming events, lectures, workshops, and seminars for the college community.'),
(5, 'Campus Resources', 'tag-pink', 'Business1620564308.jpg', 'Offering information about campus facilities, services, and resources available to students.'),
(6, 'Career and Internship Opportunities', 'tag-purple', 'Sports1616565300.jpg', 'Sharing information about job fairs, internships, and career development resources.'),
(7, 'Student Spotlights', 'tag-orange', 'Entertainment1620564450.jpg', 'Showcasing outstanding students, their achievements, and personal stories.'),
(8, 'Alumni Success Stories', 'tag-yellow', 'Health1616565475.jpg', 'Sharing inspiring stories of alumni who have made an impact in their respective fields.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(35) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(7, 'Chirayu', 'jainchirayu2002@gmail.com', '$2y$10$fxKce49OF4VW9TmFBKb81OhoxbY0mJwdwmcvJalAJdBHXUEg3K0d2'),
(9, 'anupam', 'anupamkumar@gmail.com', '$2y$10$BgysdvT9eS2l7vNKM/w/wuoJgFpDhWqm5KhNU1cZ8dx8dPOGuQdC.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`bookmark_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
