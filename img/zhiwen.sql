-- phpMyAdmin SQL Dump
-- version 4.1.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-10-21 08:03:59
-- 服务器版本： 5.5.28
-- PHP Version: 5.4.42

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zhiwen`
--

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `titleid` smallint(6) unsigned NOT NULL,
  `user` varchar(20) CHARACTER SET utf8 NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `titleid`, `user`, `comment`, `date`) VALUES
(1, 6, 'vdouw', 'sdfsdfsdf', '2015-10-21 11:49:24'),
(2, 6, 'vdouw', '这是第二次评论。。', '2015-10-21 12:31:56'),
(3, 5, 'vdouw', '第二条的第一个评论~！', '2015-10-21 12:32:26'),
(4, 6, 'vdouw', 'aaaaaaaaaaaaaaaa', '2015-10-21 14:30:13'),
(5, 6, 'vdouw', 'fgf', '2015-10-21 14:30:19'),
(6, 6, 'vdouw', 'werwerwer', '2015-10-21 14:30:26'),
(7, 6, 'vdouw', 'sdfsdfsdfsdf', '2015-10-21 14:30:30'),
(8, 6, 'vdouw', 'sdfsfsfasdadfadf', '2015-10-21 14:30:40'),
(9, 6, 'vdouw', 'asdf424', '2015-10-21 14:30:47'),
(10, 6, 'vdouw', 'sdfsfdsadf453254544', '2015-10-21 14:30:59'),
(11, 5, 'vdouw', 'sdfsdfwerwerwer', '2015-10-21 14:39:12'),
(12, 5, 'vdouw', '111', '2015-10-21 14:39:26'),
(13, 5, 'vdouw', '11111111', '2015-10-21 14:39:43');

-- --------------------------------------------------------

--
-- 表的结构 `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  `user` varchar(20) CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `question`
--

INSERT INTO `question` (`id`, `title`, `content`, `user`, `date`) VALUES
(4, '为何刘备不管多落魄都有人跟随？', '而且王粲还写过这样一句话：灵帝末年，备尝在京师，复与曹公俱还沛国，募召合众。会灵帝崩，天下大乱，备亦起军，从讨董卓。<br>如果这个事实成立，刘备和公孙瓒混的时候，还去过首都，并结识了曹操。这个结识可不简单，复与曹公俱还沛国，募召合众，这件事儿发生在灵帝死之前，泄露出的消息是什么呢 ？<br>当时的西园八校尉的兵，可能是自己招的。皇帝死后，蹇硕拿得住这支部队才叫见鬼，何进...而且王粲还写过这样一句话：灵帝末年，备尝在京师，复与曹公俱还沛国，募召合众。会灵帝崩，天下大乱，备亦起军，从讨董卓。<br>如果这个事实成立，刘备和公孙瓒混的时候，还去过首都，并结识了曹操。这个结识可不简单，复与曹公俱还沛国，募召合众，这件事儿发生在灵帝死之前，泄露出的消息是什么呢 ？<br>当时的西园八校尉的兵，可能是自己招的。皇帝死后，蹇硕拿得住这支部队才叫见鬼，何进', 'vdouw', '2015-10-20 12:51:25'),
(5, '那些年入上百万的人是如何做到的？平均年龄是多少？', '之后去的底薪40K/月的一个我认为更适合我的公司管理几百个码农。之后创业。虽然经历了连续创业失败以及生活上的种种困难导致我事实上很穷，但，我自己现在的职业目标和选择依然和薪水无关，只希望能在我自己手上做成多少年以后还能让我骄傲的事情。<br>我先说创业的。<br>找关系包俩工程，每个百十来万，然后各种偷工减料，花点钱搞定监理和甲方。搞定。当然了，前提是你的内心能够过得去。千万别在学校啊之后去的底薪40K/月的一个我认为更适合我的公司管理几百个码农。之后创业。虽然经历了连续创业失败以及生活上的种种困难导致我事实上很穷，但，我自己现在的职业目标和选择依然和薪水无关，只希望能在我自己手上做成多少年以后还能让我骄傲的事情。<br>我先说创业的。<br>找关系包俩工程，每个百十来万，然后各种偷工减料，花点钱搞定监理和甲方。搞定。当然了，前提是你的内心能够过得去。千万别在学校啊', 'vdouw', '2015-10-20 12:52:08'),
(6, '程序员想转行当医生，可行吗？', '别逗了题主，正常人18岁上医科大学，23岁本科毕业考研，26岁硕士毕业考博，29岁博士毕业。并且这些都是一路顺风的情况下。现在又特么出台个住院医师规范化培训，要求在教学医院轮转三年充当免费劳动力，当然博士可以减免一年（各地政策不同，轮转期间待遇有好有差，一般不到两千，而且不给奖金）。轮转后32岁花了不少钱找了不少关系终于在大医院入编了。刚工作依旧苦逼，晋职称前面有一百多号人排队，何时能排到自己？...别逗了题主，正常人18岁上医科大学，23岁本科毕业考研，26岁硕士毕业考博，29岁博士毕业。并且这些都是一路顺风的情况下。现在又特么出台个住院医师规范化培训，要求在教学医院轮转三年充当免费劳动力，当然博士可以减免一年（各地政策不同，轮转期间待遇有好有差，一般不到两千，而且不给奖金）。轮转后32岁花了不少钱找了不少关系终于在大医院入编了。刚工作依旧苦逼，晋职称前面有一百多号人排队，何时能排', 'vdouw', '2015-10-20 12:52:40');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(20) CHARACTER SET utf8 NOT NULL,
  `pass` char(40) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 NOT NULL,
  `birthday` date DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `email`, `sex`, `birthday`, `date`) VALUES
(20, 'bnbbs', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'bnbbs@163.com', 'male', '2014-02-03', '2014-02-27 17:36:00'),
(21, 'qqqq', '63ab89682d9a027b1f5c91f6b0ed347ef7dc9ac7', 'qq@163.com', 'female', '2014-10-29', '2014-10-28 12:44:08'),
(22, 'qqqqsdf', '63ab89682d9a027b1f5c91f6b0ed347ef7dc9ac7', 'qq@163.com', 'female', '2014-10-29', '2014-10-28 13:18:09'),
(23, 'sssss', '1e3633c9d2260d5131566a467958c05cf97aad1a', 'sss@163.com', 'male', '2014-10-15', '2014-10-28 13:26:41'),
(24, 'ddd', '44713fe5165828cbfdd02bb4efe98bcbc5214b44', 'ddddd@163.com', 'female', '2014-10-15', '2014-10-28 13:38:41'),
(25, 'ddd', '93f6abdd698f3a4382be9f7a8dfa5758d16a287e', 'ddddd@163.com', 'female', '2014-10-15', '2014-10-28 13:39:15'),
(26, 'ddd', '93f6abdd698f3a4382be9f7a8dfa5758d16a287e', 'ddddd@163.com', 'female', '2014-10-15', '2014-10-28 13:40:26'),
(27, 'ddd', '44713fe5165828cbfdd02bb4efe98bcbc5214b44', 'ddddd@163.com', 'female', '2014-10-15', '2014-10-28 13:40:38'),
(28, 'dddddd', 'bcd47d7947c97dc2a67642c3a8da0a6a0868faa5', 'ddddd@163.comd', 'female', '2014-10-15', '2014-10-28 13:43:45'),
(29, 'ddd', 'd36da3e6884f6d1e9e7983ff13e99cf5c8f5745a', 'dddd@163.com', 'fmale', '2014-10-30', '2014-10-28 13:47:02'),
(30, 'ddd', 'aed78a2adb75014073c1bd80d40e7ecbf382517d', 'dddd@163.com', 'fmale', '2014-10-30', '2014-10-28 13:47:46'),
(31, 'ddd', '44713fe5165828cbfdd02bb4efe98bcbc5214b44', 'dddd@163.com', 'fmale', '2014-10-30', '2014-10-28 13:49:30'),
(32, 'ddd', '11213b568b9653b00576ecb2aa7a45dda7b0e26f', 'dddd@163.com', 'fmale', '2014-10-30', '2014-10-28 13:53:24'),
(33, 'sdfdsf', 'b5cc17d3a35877ca8b76f0b2e07497039c250696', 'sdfsdf@163.com', 'fmale', '2014-10-02', '2014-10-28 15:32:53'),
(34, 'sdf', 'd97d698222f665f2ec7f4d8d4a3f8f3204915428', 'zzz@dd.dd', 'male', '2014-10-01', '2014-10-28 15:34:01'),
(35, '1212', '677dc4becb4708a83b3a1376f0b4182322aeed5a', '121@163.com', 'male', '2014-10-29', '2014-10-28 15:35:29'),
(36, '1212', '40d4aca182cca09df18e8d71e61de1d73cf3739d', '121@163.com', 'male', '2014-10-29', '2014-10-28 15:36:18'),
(37, '1212', '039c501ac8dfcac91c6f05601cee876e1cc07e17', '121@163.com', 'male', '2014-10-29', '2014-10-28 15:37:51'),
(38, '1212', 'd36da3e6884f6d1e9e7983ff13e99cf5c8f5745a', '121@163.com', 'male', '2014-10-29', '2014-10-28 15:38:42'),
(39, '1212', '3bc50b86815b1d9c0ab4bffc9df3ca844ab0cbe9', '121@163.comsdf', 'male', '2014-10-29', '2014-10-28 15:39:30'),
(40, '1212', 'e02a74589d9061f2bff284fdd8918b39175e4012', '121@163.comsdf', 'male', '2014-10-29', '2014-10-28 15:40:14'),
(41, 'sdfdsf', '553ae7da92f5505a92bbb8c9d47be76ab9f65bc2', 'sdfsdfsdf@sina.com.cn', 'female', '2014-10-02', '2014-10-28 15:44:19'),
(42, 'sdfdsf', 'a8db83ce709755b536b4763bc82c9d2cef787b76', 'sdfsdfsdf@sina.com.cn', 'female', '2014-10-02', '2014-10-28 15:44:54'),
(43, 'sdfdsf', 'd36da3e6884f6d1e9e7983ff13e99cf5c8f5745a', 'sdfsdfsdf@sina.com.cn', 'female', '2014-10-02', '2014-10-28 15:49:00'),
(44, 'sdfdsf', '5523b89c160c320d72598c1060cbcee1259d4216', 'sdfsdfsdf@sina.com.cn', 'female', '2014-10-02', '2014-10-28 15:50:21'),
(45, 'sdfsdfdsfds', 'b5cc17d3a35877ca8b76f0b2e07497039c250696', 'sfdsfsdf@163.com', 'female', '2014-10-02', '2014-10-28 15:50:49'),
(46, 'vdouw', '6e8a9686c97dd50bb20993ef4b752dcc17b07632', 'vdouw@qq.com', 'male', '2015-07-07', '2015-07-30 16:12:28'),
(47, 'vdouw123', '6e8a9686c97dd50bb20993ef4b752dcc17b07632', 'qq@qq.com', 'male', '2015-09-05', '2015-09-28 14:25:02'),
(48, '1@sdf', '6e8a9686c97dd50bb20993ef4b752dcc17b07632', '213123@sdf.sdf', '', '2015-09-01', '2015-09-28 14:26:13'),
(49, 'sdfsdfsdf', 'fa376e383626491fb6f3b6b5c06b1c208bba702b', '11122@sdfsf.sdf', 'male', '2015-10-05', '2015-10-16 15:02:02'),
(50, '董火锅', '6e8a9686c97dd50bb20993ef4b752dcc17b07632', 'donghg@126.com', 'male', '2015-10-05', '2015-10-16 15:07:31');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
