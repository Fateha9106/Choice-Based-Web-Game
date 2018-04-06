-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2018 at 07:22 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `challenge`
--

CREATE TABLE `challenge` (
  `cid` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `option_no` int(11) NOT NULL,
  `option1` varchar(1000) NOT NULL,
  `option2` varchar(1000) NOT NULL,
  `option3` varchar(1000) NOT NULL,
  `result1` varchar(1000) NOT NULL,
  `result2` varchar(1000) NOT NULL,
  `result3` varchar(1000) NOT NULL,
  `next1` varchar(1000) NOT NULL,
  `next2` varchar(1000) NOT NULL,
  `next3` varchar(1000) NOT NULL,
  `cashflow1` int(11) NOT NULL DEFAULT '0',
  `cashflow2` int(11) NOT NULL DEFAULT '0',
  `cashflow3` int(11) NOT NULL DEFAULT '0',
  `weeklychange1` int(11) NOT NULL DEFAULT '0',
  `weeklychange2` int(11) NOT NULL DEFAULT '0',
  `weeklychange3` int(11) NOT NULL DEFAULT '0',
  `jobstrike1` int(11) NOT NULL DEFAULT '0',
  `jobstrike2` int(11) NOT NULL DEFAULT '0',
  `jobstrike3` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `challenge`
--

INSERT INTO `challenge` (`cid`, `day`, `title`, `description`, `option_no`, `option1`, `option2`, `option3`, `result1`, `result2`, `result3`, `next1`, `next2`, `next3`, `cashflow1`, `cashflow2`, `cashflow3`, `weeklychange1`, `weeklychange2`, `weeklychange3`, `jobstrike1`, `jobstrike2`, `jobstrike3`) VALUES
(1, 1, 'Get a job', 'Surving as a single person you will need to get a job. There are not much job for fresh graduates with no experience of real life jobs. Yet you need to try your best to choose.', 3, 'Junior programmer. Pays Weekly 3000tk a week.', 'IT Engineer at Govt Job, Pays monthly. 30000 a month. **Requires a lobbing of 120,000 tk.**', '', 'You got a job which will help you learn but pay less. Since you have very little money now. Weekly payment will help you get in feet easily.', 'You cannot choose this since you don\'t have any money to pay the lobbing.', '', '2', '#20', '', 0, 0, 0, 3000, 0, 0, 0, 0, 0),
(2, 2, 'Find a place to live', 'Since you graduated you cannot stay in the university accomodation any longer and you need a place to crash at night. ', 3, '3 Room Apartment. Nice view and close to work. 10000 tk per month', 'Cozy but close to work 5000 tk per month', 'Share a mess 2000 tk per month', 'With a very little salary this appears to be a luxarious choice which might led you to starving. You have to pay 2500 tk a week.', 'This could be a good option for the time being but might not be the best considering no savings at the end of the month. You have to pay 1250 tk a week.', 'Many of the people in country as such as ours choose to live in very little space to save money', '4', '4', '3', 0, 0, 0, -2500, -1250, -500, 0, 0, 0),
(3, 2, 'A saving plan', 'Since you have chose to go with a mess for living you have created a 1000 taka per month saving account.', 2, 'Ok! Let\'s do this', 'No, I rather spend.', '', 'This might be helpful at the end of the day. Weekly payment 250 tk.', 'Well, now you will have some money in the pocket.', '', '4', '4', '', 0, 0, 0, -250, 0, 0, 0, 0, 0),
(4, 3, 'Going to job first day', 'You wouldn\'t want to look tired or sweaty from travel in the first day at work, would you?', 3, 'Go by bus: 10tk', 'By rickshaw: 50tk', 'Call an Uber: 120tk', 'Most people of country choose to go by public transport for cheaper cost. Which sometimes lead elderly people to suffer on the road. ', 'You went comfortably but that costed a good load of money.', 'This luxarious ride might make you suffer in the end. ', '5', '5', '5', -10, -50, -120, 0, 0, 0, 0, 0, 0),
(5, 3, 'Deciding the best way to travel everyday.', 'After the first day at job now you are to decide which vehicle to use for everyday travel.', 3, 'Bus', 'Rickshaw', 'Uber', 'Saved a lot of money at the end of each week. Weekly cost increases 5 x 10 = 50 tk.', 'Will not save a lot of money at the end of each week. Weekly cost increases 5 x 50 = 250 tk.', 'Probably waste of a lot of money at the end of each week. Weekly cost increases 5 x 120 = 600 tk.', '6', '6', '6', 0, 0, 0, -50, -250, -600, 0, 0, 0),
(6, 4, 'Daily meal cost', 'Whatever might the earning might be you have to feed yourself.', 2, 'Maid made food. 120 taka day.', 'Street food 80 tk day.', '', 'You chose to have a maid prepare your food. This will cost you 120 taka a day. Healthy but costly. Weekly cost 860 tk.', 'You manage to make the cost 80 taka a day but less healthy. Weekly cost 560 tk.', '', '7', '7', '', 0, 0, 0, -860, -560, 0, 0, 0, 0),
(7, 5, 'Party', 'Your friends are happy that you got the job. they want to throw a party.', 2, 'Spent 500tk', 'Say you are busy to go out.', '', 'Your friends are happy. ', 'Everyone needs recreation. But having less money might make it hard.', '', '8', '8', '', -500, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 6, 'Pay Day', 'You passed your week #1 Successfully.', 1, 'Ok! move on.', '', '', 'Earning the money is great. But a few payments are due.', '', '', '9', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 8, 'Ooops! ', 'Your Shoe is broken. You need to buy a new one. what would you do? Will you buy a new one or just ignore it?', 2, 'Buy a new one: 500', 'Get it repaired from combler. 30 tk.', '', 'New shoe! Hum.. Shiny.', 'Even employed people often cannot afford what they want.', '', '10', '10', '', -500, -30, 0, 0, 0, 0, 0, 0, 0),
(10, 9, 'Lend money to your friend', 'Your friend need some money(300tk). He wants to borrow it from you. ', 2, 'Lend him the money', 'Tell him that you don\'t have that much.', '', 'Time to time lending money can make your social status a bit up.', 'Low pay-scale sometimes makes us tell lie to save money.', '', '11', '11', '', -300, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 10, 'Haccchooo!', 'Today you are sick. you are not feeling well. Maybe a seasonal flew!', 2, 'Go to the office', 'Stay home', '', 'Working with sickness is nothing new in our country. We see many people even pulling rickshaws with fever and so on.', 'Since this is a new job your employer will not be happy about this and put a strike on you.But you got well.', '', '12', '13', '', 0, 0, 0, 0, 0, 0, 0, 1, 0),
(12, 10, 'See a doctor, Maybe!', 'You have higher headache now after working whole day throughout the pain. ', 2, 'Go see a doctor. Will cost 500 tk visit.', 'Eh! I will have a aspirin when at home.', '', 'Seeing a doctor might seem very costly at the moment. But it might save you from tons at the end of the day.', 'Not always you have a luck to recover with aspirin. You fell unconscious next day at work and was taken to hospital which costed 2000 taka.', '', '13', '13', '', -500, -2000, 0, 0, 0, 0, 0, 0, 0),
(13, 11, 'Recharge the phone', 'You suddenly notice you cannot make any call. Ah.. Balance over. Gotta recharge. ', 3, 'Recharge 100 tk', 'Recharge 50 tk', 'Ask friend to send some money.', 'Recharged carrier for a few days.', 'Recharged carrier for a few days.', 'A friend in need is a friend indeed.', '14', '14', '14', -100, -50, 0, 0, 0, 0, 0, 0, 0),
(14, 12, 'Stay clean and fresh', 'You need to buy some cosmetic materials. That will cost you 300 taka.', 3, 'Buy a soap to cover the job of soap and shampoo 40 tk.', 'Buy both soap and shampoo.', 'Keep showering with water only.', 'Killing two birds in one stone.', 'Well now you will smell good. Good job.', 'In public transport some people often stinks! You might become one of those people.', '15', '15', '15', -40, -300, 0, 0, 0, 0, 0, 0, 0),
(15, 14, 'Pay day', 'Hurrah!! You survived another week.', 1, 'Cool lets go dig more.', '', '', 'You are doing pretty well. Good luck.', '', '', '16', '16', '16', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 15, 'It\'s your friends Birthday!', 'Bringing a present at your best friend\'s party is the least he will expect.', 3, 'Go with a gift spend 500 tk.', 'Don\'t go', 'Go without any gifts', 'Giving gift have certain toll to consider.', 'Joining parties every now and then can ease mind which many newly recruits are deprived of because of low pay.', 'Well your friend will understand.... Hopefully.. it will cost the transportation cost 50 taka though.', '17', '17', '17', -550, 0, -50, 0, 0, 0, 0, 0, 0),
(17, 16, 'Family Crisis', 'You mother is sick and wants to see you. ', 2, 'Go see her taking the day off.', 'Say you cannot go ', '', 'Job strikes. And transportation cost 500 tk.', 'We see many people in the time of family crisis. Is this one of the major reason?', '', '18', '18', '18', -500, 0, 0, 0, 0, 0, 1, 0, 0),
(18, 17, 'Off day!! Go on a date.', 'You have been somehow avoiding your girlfriend because of financial issue. But now that you have a job she is insisting to see you.', 3, 'Go on a dinner date.', 'Take a walk in Dhanmondi Lake.', 'Take her to movie.', 'Huge strike on your moneybag. Though see contributed like a good person. 1000 tk bill even after splitting. Whoa!!', 'You had a good walk, talk, had some street food. Good day. Costed you 300 taka.', 'She decided to treat you the whole day. So you just gave the CNG fares 500 tk.', '19', '19', '19', -1000, -300, -500, 0, 0, 0, 0, 0, 0),
(19, 21, 'Pay Day', 'It\'s 3rd week in your job. Congrats!', 2, 'Cool lets go dig more.', 'Exit Game! Had Enough.', '', 'Someone said last week is the worst week in month for a bachelor. Lets see if you can survive!.', 'Hope you had fun.', '', '20', '35', '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 22, 'Mom Sick', 'Your mom\'s sickness is now through the roof. And she needs to be treated immediately. Needs 2000 tk at least.', 3, 'Send 2000 tk.', 'Send 1000 tk.', 'Ask your school friend to send some money.', 'You have made a wise choice though it might not be financially good one. Family always comes first.', 'At least you are contributing.', 'Pay the lent money in time if possible.', '21', '21', '21', -2000, -1000, 0, 0, 0, 0, 0, 0, 0),
(21, 23, 'Good deeds come back', 'Remember your friend whom you given 300 taka earlier. Just repaid you.', 1, 'Nice', '', '', 'Getting back money is always sweet! ', '', '', '22', '', '', 300, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 24, 'Bills are due', 'You ISP just called for the monthly charge 500tk.', 2, 'Pay the bill.', 'Ask to disconnect broadband.', '', 'You have a good internet to listen to music when stressed or browse memes maybe.', 'Well there goes your internet.', '', '23', '23', '', -500, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 25, 'Turn on the lights!!', 'Electric bill is due. 600tk.', 2, 'Pay the bill.', 'Take your chance with govt.', '', 'Paying the bill is sign of good citizen.', 'Lets see how many days govt let you turn those lights on.', '', '24', '24', '', -600, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 26, 'Ooopsss!', 'You were coming home an event. Suddenly the bus\'s engine stopped. You had to take a rickshaw to come home.', 1, 'Ok!', '', '', 'Had a good night ride. ', '', '', '25', '', '', -50, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 27, 'Lightening!!', 'You forgot to disconnect your workstation from Ethernet cable and a sudden lightening strike roasted your station.', 2, 'Repair it for 4000 taka', 'Let it stay roasted.', '', 'Working working. Tap tap.', 'You now have to check emails on phone.', '', '26', '26', '', -4000, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 28, 'Pay Day', 'Last payday of the month. Nice', 2, 'I will survive the month.', 'End the misery.', '', 'Go on brave warrior', 'Hope you enjoyed. ', '', '27', '35', '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 29, 'Apply for Convocation', 'Suddenly your friend called and asked you to register for convocation.', 2, 'Pay the registration fee of 3000 taka.', 'Maybe next year.', '', 'You will get the certificate.', 'It doesn\'t matter! Does it? ', '', '28', '36', '', -3000, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 30, 'Go to convocation', 'You go to your much awaited convocation.', 1, 'Enjoy the day.', '', '', 'You get a job strike.', '', '', '36', '', '', 0, 0, 0, 0, 0, 0, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `challenge`
--
ALTER TABLE `challenge`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `challenge`
--
ALTER TABLE `challenge`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
