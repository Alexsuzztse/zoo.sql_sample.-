-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 23 2025 г., 13:57
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Zoopark`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Bk_Medosmotr`
--

CREATE TABLE `Bk_Medosmotr` (
  `id_Bk_medosmotr` int(11) NOT NULL,
  `ID_Med` int(11) NOT NULL,
  `ID_Sotrudnika` int(11) NOT NULL,
  `Date` date NOT NULL,
  `ID_Status_z` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Bk_Obmen_s_zoo`
--

CREATE TABLE `Bk_Obmen_s_zoo` (
  `id_Bk_obmen` int(11) NOT NULL,
  `OLD_ID_Obmen` int(11) NOT NULL,
  `OLD_ID_Jivotnoe` int(11) NOT NULL,
  `OLD_Name_Jiv` varchar(20) NOT NULL,
  `OLD_Date_Obmena` date NOT NULL,
  `OLD_ID_Zoopark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Bk_Postavka`
--

CREATE TABLE `Bk_Postavka` (
  `id_Bk_postavka` int(11) NOT NULL,
  `OLD_ID_Postavka` int(11) NOT NULL,
  `OLD_Name_Postavka` varchar(50) NOT NULL,
  `OLD_ID_Postavshika` int(11) NOT NULL,
  `OLD_Date_Postavka` date NOT NULL,
  `OLD_Kolvo_korma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Bk_Proizvodstvo`
--

CREATE TABLE `Bk_Proizvodstvo` (
  `id_Bk_proizvodstva` int(11) NOT NULL,
  `OLD_ID_Proizvodstva` int(11) NOT NULL,
  `OLD_ID_Korm` int(11) NOT NULL,
  `OLD_Name_proizvodstva` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Bk_Zacreplenie`
--

CREATE TABLE `Bk_Zacreplenie` (
  `id_Bk_zacrep` int(11) NOT NULL,
  `OLD_ID_Zacrep` int(11) NOT NULL,
  `OLD_ID_Jivotnoe` int(11) NOT NULL,
  `OLD_ID_Sotrudnik` int(11) NOT NULL,
  `OLD_Data_Zacrep` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Bk_Zaselenie_v_kletky`
--

CREATE TABLE `Bk_Zaselenie_v_kletky` (
  `id_Bk_zaselenie` int(11) NOT NULL,
  `OLD_ID_Zaselenie` int(11) NOT NULL,
  `OLD_ID_Jivotnoe` int(11) NOT NULL,
  `OLD_ID_Kletki` int(11) NOT NULL,
  `OLD_Data_Zaseleniya` date NOT NULL,
  `OLD_ID_Klim_Zone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Bolezni`
--

CREATE TABLE `Bolezni` (
  `ID_Bolezni` int(11) NOT NULL,
  `Name_Bolezni` varchar(25) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL,
  `ID_Lechenie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Bolezni`
--

INSERT INTO `Bolezni` (`ID_Bolezni`, `Name_Bolezni`, `ID_Jivotnoe`, `ID_Lechenie`) VALUES
(1, 'Простуда', 2, 2),
(2, 'Алопеция', 5, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `Doljnoste`
--

CREATE TABLE `Doljnoste` (
  `ID_Doljnost` int(11) NOT NULL,
  `Name_Doljnoste` varchar(50) NOT NULL,
  `Zarplata` float(10,2) NOT NULL,
  `ID_Dostupa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Doljnoste`
--

INSERT INTO `Doljnoste` (`ID_Doljnost`, `Name_Doljnoste`, `Zarplata`, `ID_Dostupa`) VALUES
(1, 'Зоолог', 70000.00, 1),
(2, 'Смотритель', 65000.00, 2),
(3, 'Производитель корма', 35000.00, 3),
(4, 'Администратор', 80000.00, 3),
(5, 'Врач', 60000.00, 1),
(6, 'Хирург', 40000.00, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Doljnostnoy_dostup`
--

CREATE TABLE `Doljnostnoy_dostup` (
  `ID_Dostup` int(11) NOT NULL,
  `Name_dostupa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Doljnostnoy_dostup`
--

INSERT INTO `Doljnostnoy_dostup` (`ID_Dostup`, `Name_dostupa`) VALUES
(1, 'полный доступ'),
(2, 'частичный доступ'),
(3, 'нет доступа');

-- --------------------------------------------------------

--
-- Структура таблицы `Jivotnoe`
--

CREATE TABLE `Jivotnoe` (
  `ID_Jivotnoe` int(11) NOT NULL,
  `Name_Jiv` varchar(20) NOT NULL,
  `ID_Vid` int(11) NOT NULL,
  `ID_Pol` int(11) NOT NULL,
  `BDate` date NOT NULL,
  `Rost` float NOT NULL,
  `Ves` float NOT NULL,
  `Data_postuplenia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Jivotnoe`
--

INSERT INTO `Jivotnoe` (`ID_Jivotnoe`, `Name_Jiv`, `ID_Vid`, `ID_Pol`, `BDate`, `Rost`, `Ves`, `Data_postuplenia`) VALUES
(1, 'Лалик', 2, 2, '2022-05-13', 0.5, 3, NULL),
(2, 'Жорика', 3, 1, '2011-09-17', 1, 45, '2014-05-20'),
(3, 'Лоло', 4, 1, '2024-06-20', 1.32, 55, NULL),
(4, 'Лолита', 4, 1, '2020-05-20', 2.4, 87.5, '2024-03-20'),
(5, 'Дан', 1, 2, '2017-09-25', 1.35, 120, NULL),
(6, 'Толик', 3, 2, '2024-11-06', 0.6, 25, NULL),
(7, 'Дон', 1, 2, '2024-05-15', 1, 55, NULL),
(8, 'Лали', 4, 1, '2018-10-13', 2.45, 129, NULL);

--
-- Триггеры `Jivotnoe`
--
DELIMITER $$
CREATE TRIGGER `TrInsertJiv` AFTER INSERT ON `Jivotnoe` FOR EACH ROW BEGIN
INSERT INTO Log_Jivotnoe SET
Log_Jivotnoe.ID_Jivotnoe = NEW.ID_Jivotnoe,
Log_Jivotnoe.DateAction = CURRENT_DATE,
Log_Jivotnoe.TimeAction = CURRENT_TIME,
Log_Jivotnoe.UserAvtor = CURRENT_USER,
Log_Jivotnoe.Action = "Добавили строку";
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `jiv_insert` BEFORE INSERT ON `Jivotnoe` FOR EACH ROW INSERT INTO jiv_log SET user= 'имя_пользователя', query='Вставил данные'
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `jivotnoe_1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `jivotnoe_1` (
`Name_Jiv` varchar(20)
,`Name_vida` varchar(50)
,`Name_kletki` varchar(15)
,`Name_pol` varchar(25)
,`Rost` float
,`Ves` float
,`Vozrast` bigint(21)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `jivotnoe_2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `jivotnoe_2` (
`Name_Jiv` varchar(20)
,`Name_vida` varchar(50)
,`Name_kletki` varchar(15)
,`Name_klim_zone` varchar(25)
,`Vozrast` varchar(21)
,`Nujda_v_teplom_pomechenie` varchar(12)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `jivotnoe_3`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `jivotnoe_3` (
`Name_Jiv` varchar(20)
,`Name_pol` varchar(25)
,`ID_Vid` int(11)
,`Opisanie_yslovia` varchar(100)
,`Vozrast` bigint(21)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `jivotnoe_4`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `jivotnoe_4` (
`Name_Jiv` varchar(20)
,`Name_vida` varchar(50)
,`Rost` float
,`Ves` float
,`BDate` date
,`Data_postuplenia` date
,`Name_Privivki` varchar(25)
,`ID_Prostavlenie` int(11)
,`Kolichestvo_Potomstva` bigint(21)
,`Vozrast` bigint(21)
,`Name_kletki` varchar(15)
,`Data_Zaseleniya` date
);

-- --------------------------------------------------------

--
-- Структура таблицы `Kletka`
--

CREATE TABLE `Kletka` (
  `ID_Kletki` int(11) NOT NULL,
  `Name_kletki` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Kletka`
--

INSERT INTO `Kletka` (`ID_Kletki`, `Name_kletki`) VALUES
(1, 'К-22'),
(2, 'В-10'),
(3, 'Т-55'),
(4, 'Х-15');

-- --------------------------------------------------------

--
-- Структура таблицы `Klin_Zone`
--

CREATE TABLE `Klin_Zone` (
  `ID_Klim_zone` int(11) NOT NULL,
  `Name_klim_zone` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Klin_Zone`
--

INSERT INTO `Klin_Zone` (`ID_Klim_zone`, `Name_klim_zone`) VALUES
(1, 'экваториальный'),
(2, 'полярный'),
(3, 'Саванна');

-- --------------------------------------------------------

--
-- Структура таблицы `Korm`
--

CREATE TABLE `Korm` (
  `ID_Korm` int(11) NOT NULL,
  `Name_korm` varchar(50) NOT NULL,
  `ID_Type_korm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Korm`
--

INSERT INTO `Korm` (`ID_Korm`, `Name_korm`, `ID_Type_korm`) VALUES
(1, 'Витаминный', 1),
(2, 'Мясной', 2),
(3, 'Полный', 1),
(4, 'Для Хищников', 2);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `kormlenie_1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `kormlenie_1` (
`Name_Jiv` varchar(20)
,`Name_vida` varchar(50)
,`ID_Type_korm` int(11)
,`Name_seson` varchar(20)
,`ID_Type_kormlenia` int(11)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `korm_1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `korm_1` (
`Name_korm` varchar(50)
,`Кол-во` double(19,2)
);

-- --------------------------------------------------------

--
-- Структура таблицы `Lechenie`
--

CREATE TABLE `Lechenie` (
  `ID_Lechenie` int(11) NOT NULL,
  `Name_lechenia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Lechenie`
--

INSERT INTO `Lechenie` (`ID_Lechenie`, `Name_lechenia`) VALUES
(2, 'Антибиотики, хороший сон и правильное питание'),
(3, 'Покой, прогулки на воздухе'),
(4, 'Прописанные препараты и антибиотики');

-- --------------------------------------------------------

--
-- Структура таблицы `Log_Doljnost`
--

CREATE TABLE `Log_Doljnost` (
  `id_Log_Doljnost` int(11) NOT NULL,
  `ID_Doljnost` int(11) NOT NULL,
  `DateAction` date NOT NULL,
  `TimeAction` time NOT NULL,
  `UserLog` varchar(100) NOT NULL,
  `Action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Log_Jivotnoe`
--

CREATE TABLE `Log_Jivotnoe` (
  `ID_Log_Jivotnoe` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL,
  `DateAction` date NOT NULL,
  `TimeAction` time NOT NULL,
  `UserAvtor` varchar(100) NOT NULL,
  `Action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Log_Medosmotr`
--

CREATE TABLE `Log_Medosmotr` (
  `id_Log_Medosmotr` int(11) NOT NULL,
  `id_med` int(11) NOT NULL,
  `DateAction` date NOT NULL,
  `TimeAction` time NOT NULL,
  `UserLog` varchar(100) NOT NULL,
  `Action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Log_Obmen_s_zoo`
--

CREATE TABLE `Log_Obmen_s_zoo` (
  `id_Log_Obmen_s_zoo` int(11) NOT NULL,
  `id_obmen` int(11) NOT NULL,
  `DateAction` date NOT NULL,
  `TimeAction` time NOT NULL,
  `UserLog` varchar(100) NOT NULL,
  `Action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Log_Postavka`
--

CREATE TABLE `Log_Postavka` (
  `id_Log_Postavka` int(11) NOT NULL,
  `id_postavka` int(11) NOT NULL,
  `DateAction` date NOT NULL,
  `TimeAction` time NOT NULL,
  `UserLog` varchar(100) NOT NULL,
  `Action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Log_Proizvodstvo`
--

CREATE TABLE `Log_Proizvodstvo` (
  `id_Log_Proizvodstva` int(11) NOT NULL,
  `id_proizvodstva` int(11) NOT NULL,
  `DateAction` date NOT NULL,
  `TimeAction` time NOT NULL,
  `UserLog` varchar(100) NOT NULL,
  `Action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Log_Zacreplenie`
--

CREATE TABLE `Log_Zacreplenie` (
  `id_Log_Zacreplenie` int(11) NOT NULL,
  `id_zacrep` int(11) NOT NULL,
  `DateAction` date NOT NULL,
  `TimeAction` time NOT NULL,
  `UserLog` varchar(100) NOT NULL,
  `Action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Log_Zaselenie_v_kletky`
--

CREATE TABLE `Log_Zaselenie_v_kletky` (
  `id_Log_Zaselenie_v_kletky` int(11) NOT NULL,
  `id_zaselenie` int(11) NOT NULL,
  `DateAction` date NOT NULL,
  `TimeAction` time NOT NULL,
  `UserLog` varchar(100) NOT NULL,
  `Action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Medosmotr`
--

CREATE TABLE `Medosmotr` (
  `ID_Med` int(11) NOT NULL,
  `ID_Sotrudnika` int(11) NOT NULL,
  `Date` date NOT NULL,
  `ID_Status_z` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Medosmotr`
--

INSERT INTO `Medosmotr` (`ID_Med`, `ID_Sotrudnika`, `Date`, `ID_Status_z`, `ID_Jivotnoe`) VALUES
(1, 5, '2024-10-10', 2, 2),
(2, 5, '2024-10-11', 1, 1),
(3, 5, '2024-11-12', 1, 4),
(5, 5, '2024-11-09', 2, 5),
(6, 5, '2024-11-11', 1, 7),
(7, 5, '2024-11-12', 1, 3),
(8, 5, '2024-11-12', 1, 6);

--
-- Триггеры `Medosmotr`
--
DELIMITER $$
CREATE TRIGGER `TrDeleteMedosmotr` BEFORE DELETE ON `Medosmotr` FOR EACH ROW BEGIN
    INSERT INTO Bk_Medosmotr SET
        Bk_Medosmotr.ID_Med = OLD.ID_Med,
        Bk_Medosmotr.ID_Sotrudnika = OLD.ID_Sotrudnika,
        Bk_Medosmotr.Date = OLD.Date,
        Bk_Medosmotr.ID_Status_z = OLD.ID_Status_z,
        Bk_Medosmotr.ID_Jivotnoe = OLD.ID_Jivotnoe;

    INSERT INTO Log_Medosmotr SET
        Log_Medosmotr.id_med = OLD.ID_Med,
        Log_Medosmotr.DateAction = CURRENT_DATE,
        Log_Medosmotr.TimeAction = CURRENT_TIME,
        Log_Medosmotr.UserLog = CURRENT_USER,
        Log_Medosmotr.Action = "Удалили данные";
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrInsertMedosmotr` AFTER INSERT ON `Medosmotr` FOR EACH ROW BEGIN
    INSERT INTO Log_Medosmotr SET
        Log_Medosmotr.id_med = NEW.ID_Med,
        Log_Medosmotr.DateAction = CURRENT_DATE,
        Log_Medosmotr.TimeAction = CURRENT_TIME,
        Log_Medosmotr.UserLog = CURRENT_USER,
        Log_Medosmotr.Action = "Добавили строку";
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrUpdateMedosmotr` BEFORE UPDATE ON `Medosmotr` FOR EACH ROW BEGIN
    INSERT INTO Bk_Medosmotr SET
        Bk_Medosmotr.ID_Med = OLD.ID_Med,
        Bk_Medosmotr.ID_Sotrudnika = OLD.ID_Sotrudnika,
        Bk_Medosmotr.Date = OLD.Date,
        Bk_Medosmotr.ID_Status_z = OLD.ID_Status_z,
        Bk_Medosmotr.ID_Jivotnoe = OLD.ID_Jivotnoe;

    INSERT INTO Log_Medosmotr SET
        Log_Medosmotr.id_med = OLD.ID_Med,
        Log_Medosmotr.DateAction = CURRENT_DATE,
        Log_Medosmotr.TimeAction = CURRENT_TIME,
        Log_Medosmotr.UserLog = CURRENT_USER,
        Log_Medosmotr.Action = "Обновили данные";
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `Obmen_s_zoo`
--

CREATE TABLE `Obmen_s_zoo` (
  `ID_Obmen` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL,
  `Date_Obmena` date NOT NULL,
  `ID_Zoopark` int(11) NOT NULL,
  `Name_Jiv` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Obmen_s_zoo`
--

INSERT INTO `Obmen_s_zoo` (`ID_Obmen`, `ID_Jivotnoe`, `Date_Obmena`, `ID_Zoopark`, `Name_Jiv`) VALUES
(1, 2, '2024-11-03', 2, 'Жорика'),
(2, 4, '2024-03-20', 3, 'Лолита');

--
-- Триггеры `Obmen_s_zoo`
--
DELIMITER $$
CREATE TRIGGER `TrInsertObmen_s_zoo` AFTER INSERT ON `Obmen_s_zoo` FOR EACH ROW BEGIN
    INSERT INTO Log_Obmen_s_zoo SET
        Log_Obmen_s_zoo.id_obmen = NEW.ID_Obmen,
        Log_Obmen_s_zoo.DateAction = CURRENT_DATE,
        Log_Obmen_s_zoo.TimeAction = CURRENT_TIME,
        Log_Obmen_s_zoo.UserLog = CURRENT_USER,
        Log_Obmen_s_zoo.Action = "Добавили строку";
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrUpdateObmen_s_zoo` BEFORE UPDATE ON `Obmen_s_zoo` FOR EACH ROW BEGIN
    INSERT INTO Bk_Obmen_s_zoo SET
        Bk_Obmen_s_zoo.OLD_ID_Obmen = OLD.ID_Obmen,
        Bk_Obmen_s_zoo.OLD_ID_Jivotnoe = OLD.ID_Jivotnoe,
        Bk_Obmen_s_zoo.OLD_Name_Jiv = OLD.Name_Jiv,
        Bk_Obmen_s_zoo.OLD_Date_Obmena = OLD.Date_Obmena,
        Bk_Obmen_s_zoo.OLD_ID_Zoopark = OLD.ID_Zoopark;

    INSERT INTO Log_Obmen_s_zoo SET
        Log_Obmen_s_zoo.id_obmen = OLD.ID_Obmen,
        Log_Obmen_s_zoo.DateAction = CURRENT_DATE,
        Log_Obmen_s_zoo.TimeAction = CURRENT_TIME,
        Log_Obmen_s_zoo.UserLog = CURRENT_USER,
        Log_Obmen_s_zoo.Action = "Обновили данные";
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `Pol`
--

CREATE TABLE `Pol` (
  `ID_Pol` int(11) NOT NULL,
  `Name_pol` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Pol`
--

INSERT INTO `Pol` (`ID_Pol`, `Name_pol`) VALUES
(1, 'женский'),
(2, 'мужской');

-- --------------------------------------------------------

--
-- Структура таблицы `Postavka`
--

CREATE TABLE `Postavka` (
  `ID_Postavka` int(11) NOT NULL,
  `Name_Postavka` varchar(50) NOT NULL,
  `ID_Postavshika` int(11) NOT NULL,
  `ID_Korm` int(11) NOT NULL,
  `Date_Postavka` date NOT NULL,
  `Kolvo_korma` float(10,2) NOT NULL,
  `Price` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Postavka`
--

INSERT INTO `Postavka` (`ID_Postavka`, `Name_Postavka`, `ID_Postavshika`, `ID_Korm`, `Date_Postavka`, `Kolvo_korma`, `Price`) VALUES
(1, 'М-555', 1, 2, '2024-10-03', 100.00, 6000.00),
(2, 'С-1111', 2, 1, '2024-11-01', 160.00, 12000.00),
(3, 'Т-222', 1, 3, '2024-11-11', 100.00, 20000.00);

--
-- Триггеры `Postavka`
--
DELIMITER $$
CREATE TRIGGER `TrDeletePostavka` BEFORE DELETE ON `Postavka` FOR EACH ROW BEGIN
    INSERT INTO Bk_Postavka SET
        Bk_Postavka.OLD_ID_Postavka = OLD.ID_Postavka,
        Bk_Postavka.OLD_Name_Postavka = OLD.Name_Postavka,
        Bk_Postavka.OLD_ID_Postavshika = OLD.ID_Postavshika,
        Bk_Postavka.OLD_Date_Postavka = OLD.Date_Postavka,
        Bk_Postavka.OLD_Kolvo_korma = OLD.Kolvo_korma;

    INSERT INTO Log_Postavka SET
        Log_Postavka.id_postavka = OLD.ID_Postavka,
        Log_Postavka.DateAction = CURRENT_DATE,
        Log_Postavka.TimeAction = CURRENT_TIME,
        Log_Postavka.UserLog = CURRENT_USER,
        Log_Postavka.Action = "Удалили данные";
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrInsertPostavka` AFTER INSERT ON `Postavka` FOR EACH ROW BEGIN
    INSERT INTO Log_Postavka SET
        Log_Postavka.id_postavka = NEW.ID_Postavka,
        Log_Postavka.DateAction = CURRENT_DATE,
        Log_Postavka.TimeAction = CURRENT_TIME,
        Log_Postavka.UserLog = CURRENT_USER,
        Log_Postavka.Action = "Добавили строку";
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrUpdatePostavka` BEFORE UPDATE ON `Postavka` FOR EACH ROW BEGIN
    INSERT INTO Bk_Postavka SET
        Bk_Postavka.OLD_ID_Postavka = OLD.ID_Postavka,
        Bk_Postavka.OLD_Name_Postavka = OLD.Name_Postavka,
        Bk_Postavka.OLD_ID_Postavshika = OLD.ID_Postavshika,
        Bk_Postavka.OLD_Date_Postavka = OLD.Date_Postavka,
        Bk_Postavka.OLD_Kolvo_korma = OLD.Kolvo_korma;

    INSERT INTO Log_Postavka SET
        Log_Postavka.id_postavka = OLD.ID_Postavka,
        Log_Postavka.DateAction = CURRENT_DATE,
        Log_Postavka.TimeAction = CURRENT_TIME,
        Log_Postavka.UserLog = CURRENT_USER,
        Log_Postavka.Action = "Обновили данные";
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `Postavshik`
--

CREATE TABLE `Postavshik` (
  `ID_Postavshika` int(11) NOT NULL,
  `Name_Postavshika` varchar(50) NOT NULL,
  `Adres` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Postavshik`
--

INSERT INTO `Postavshik` (`ID_Postavshika`, `Name_Postavshika`, `Adres`) VALUES
(1, 'ООО \"Торг-торг\"', 'г.Москва ул. Красногвардейцев, д.5'),
(2, 'ООО \"Архан\"', 'г.Москва ул.Сорокетов д.88');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `postavshik_1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `postavshik_1` (
`Name_Postavshika` varchar(50)
,`ID_Korm` int(11)
,`Total_Kolvo` double(19,2)
,`Post_Price` double(14,6)
,`Total_postavka` bigint(21)
,`First_post_Date` date
,`Last_post_Date` date
);

-- --------------------------------------------------------

--
-- Структура таблицы `Potomstvo`
--

CREATE TABLE `Potomstvo` (
  `ID_Potomstvo` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL,
  `Name_Jiv` varchar(20) NOT NULL,
  `ID_Vid` int(11) NOT NULL,
  `BDate` datetime(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Potomstvo`
--

INSERT INTO `Potomstvo` (`ID_Potomstvo`, `ID_Jivotnoe`, `Name_Jiv`, `ID_Vid`, `BDate`) VALUES
(1, 6, 'Толик', 3, '2024-10-10 10:10:10.10100'),
(2, 7, 'Дон', 1, '2024-05-15 15:35:00.00000'),
(3, 3, 'Лоло', 4, '2024-11-20 06:29:20.18000');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `potomstvo_1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `potomstvo_1` (
`Name_Jiv` varchar(20)
,`Name_pol` varchar(25)
,`Name_Privivki` varchar(25)
,`Name_Bolezni` varchar(25)
,`Kolichestvo_Potomstva` bigint(21)
,`Vozrast` bigint(21)
,`Dlitelnist_Prebivaniya` int(7)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `potomstvo_2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `potomstvo_2` (
`животное` varchar(20)
,`Дата рождения` datetime(5)
,`Пол_детеныша` varchar(25)
);

-- --------------------------------------------------------

--
-- Структура таблицы `Privivki`
--

CREATE TABLE `Privivki` (
  `ID_Privivki` int(11) NOT NULL,
  `Name_Privivki` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Privivki`
--

INSERT INTO `Privivki` (`ID_Privivki`, `Name_Privivki`) VALUES
(1, '2323-ПР'),
(2, '1111-ПР'),
(3, 'ПР-1212');

-- --------------------------------------------------------

--
-- Структура таблицы `Proizvodstvo`
--

CREATE TABLE `Proizvodstvo` (
  `ID_Proizvodstva` int(11) NOT NULL,
  `ID_Korm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Proizvodstvo`
--

INSERT INTO `Proizvodstvo` (`ID_Proizvodstva`, `ID_Korm`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Prostavlenie_privivok`
--

CREATE TABLE `Prostavlenie_privivok` (
  `ID_Prostavlenie` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL,
  `ID_Privivki` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Prostavlenie_privivok`
--

INSERT INTO `Prostavlenie_privivok` (`ID_Prostavlenie`, `ID_Jivotnoe`, `ID_Privivki`, `Date`) VALUES
(1, 2, 2, '2024-10-10'),
(2, 6, 1, '2024-11-05'),
(3, 5, 3, '2024-11-05');

-- --------------------------------------------------------

--
-- Структура таблицы `Racion`
--

CREATE TABLE `Racion` (
  `ID_Racion` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL,
  `Type_kormlenia` varchar(15) NOT NULL,
  `Date` datetime(5) NOT NULL,
  `ID_Sezon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Racion`
--

INSERT INTO `Racion` (`ID_Racion`, `ID_Jivotnoe`, `Type_kormlenia`, `Date`, `ID_Sezon`) VALUES
(1, 2, 'всеядный', '2024-11-14 17:34:40.58500', 1),
(2, 1, 'Хищный', '2024-11-13 00:00:00.00000', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Seson`
--

CREATE TABLE `Seson` (
  `ID_Seson` int(11) NOT NULL,
  `ID_Vid` int(11) NOT NULL,
  `Name_seson` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Seson`
--

INSERT INTO `Seson` (`ID_Seson`, `ID_Vid`, `Name_seson`) VALUES
(1, 3, 'осенний'),
(2, 1, 'зимний');

-- --------------------------------------------------------

--
-- Структура таблицы `Sotrudnik`
--

CREATE TABLE `Sotrudnik` (
  `ID_Sotrudnik` int(11) NOT NULL,
  `FIO_Sotrudnika` varchar(100) NOT NULL,
  `ID_Doljnost` int(11) NOT NULL,
  `BDate` date NOT NULL,
  `Adres` varchar(55) NOT NULL,
  `ID_Pol` int(11) NOT NULL,
  `Data_nachala` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Sotrudnik`
--

INSERT INTO `Sotrudnik` (`ID_Sotrudnik`, `FIO_Sotrudnika`, `ID_Doljnost`, `BDate`, `Adres`, `ID_Pol`, `Data_nachala`) VALUES
(1, 'Куприн Александр Владлунович', 1, '1987-07-14', 'г.Москва ул. Ляпунова д.5', 2, '2021-05-14'),
(2, 'Памятина Татьяна Валерьевна', 2, '1990-11-20', 'г.Москва ул.Сторожилов д.555', 1, '2022-11-05'),
(3, 'Плющин Евгений Олегович', 3, '1990-10-06', 'г.Москва ул.Домоседов д.34', 2, '2023-02-15'),
(4, 'Оринина Евгения Марковна', 4, '1999-09-10', 'г.Москва ул.Велимортаева д.44', 1, '2020-09-07'),
(5, 'Орджин Валерий Глебович', 5, '1981-11-03', 'г.Москва ул. Маровловская д.77', 2, '2018-11-04'),
(6, 'Ляпин Владимир Адлерович', 1, '2002-09-09', 'г.Москва ул. Ляпунова д.8', 2, '2024-10-16');

--
-- Триггеры `Sotrudnik`
--
DELIMITER $$
CREATE TRIGGER `after_sotrudnik_delete` AFTER DELETE ON `Sotrudnik` FOR EACH ROW BEGIN
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sotrudnik_insert` AFTER INSERT ON `Sotrudnik` FOR EACH ROW BEGIN
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sotrudnik_update` AFTER UPDATE ON `Sotrudnik` FOR EACH ROW BEGIN
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `sotrudniki_1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `sotrudniki_1` (
`FIO_Sotrudnika` varchar(100)
,`Name_Doljnoste` varchar(50)
,`Name_pol` varchar(25)
,`Zarplata` float(10,2)
,`Name_dostupa` varchar(50)
,`Vozrast` bigint(21)
,`Prodoljitelnost` bigint(21)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `sotrudniki_2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `sotrudniki_2` (
`FIO_Sotrudnika` varchar(100)
,`Name_Jiv` varchar(20)
,`Name_dostupa` varchar(50)
,`Name_Doljnoste` varchar(50)
);

-- --------------------------------------------------------

--
-- Структура таблицы `Status_z`
--

CREATE TABLE `Status_z` (
  `ID_Status` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL,
  `Name_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Status_z`
--

INSERT INTO `Status_z` (`ID_Status`, `ID_Jivotnoe`, `Name_status`) VALUES
(1, 1, 'здоров'),
(2, 2, 'не здоров');

-- --------------------------------------------------------

--
-- Структура таблицы `Type_korm`
--

CREATE TABLE `Type_korm` (
  `ID_Type_korm` int(11) NOT NULL,
  `Name_Type_korm` varchar(25) NOT NULL,
  `ID_Racion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Type_korm`
--

INSERT INTO `Type_korm` (`ID_Type_korm`, `Name_Type_korm`, `ID_Racion`) VALUES
(1, 'фрукты, овощи', 1),
(2, 'мясо', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Type_kormlenia`
--

CREATE TABLE `Type_kormlenia` (
  `ID_Type_kormlenia` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL,
  `ID_Type_korm` int(11) NOT NULL,
  `Data_kormlenia` date NOT NULL,
  `ID_Seson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Type_kormlenia`
--

INSERT INTO `Type_kormlenia` (`ID_Type_kormlenia`, `ID_Jivotnoe`, `ID_Type_korm`, `Data_kormlenia`, `ID_Seson`) VALUES
(1, 2, 1, '2024-12-10', 2),
(2, 4, 1, '2024-12-04', 1),
(3, 1, 2, '2024-12-11', 2),
(4, 5, 2, '2024-12-10', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Vid_Jiv`
--

CREATE TABLE `Vid_Jiv` (
  `ID_Vid` int(11) NOT NULL,
  `Name_vida` varchar(50) NOT NULL,
  `ID_Klim_zone` int(11) NOT NULL,
  `Opisanie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Vid_Jiv`
--

INSERT INTO `Vid_Jiv` (`ID_Vid`, `Name_vida`, `ID_Klim_zone`, `Opisanie`) VALUES
(1, 'тигр', 1, 'полосатый, в черно-оранжевую полоску'),
(2, 'песец', 2, 'полярный песец'),
(3, 'Шимпанзе', 1, 'обезьяна, размером с боинг'),
(4, 'жираф', 3, 'высокий жираф, с полосатым животом'),
(5, 'Зебра', 3, 'Полосатая в черно-белую полоску');

-- --------------------------------------------------------

--
-- Структура таблицы `Yslovie_soderjania`
--

CREATE TABLE `Yslovie_soderjania` (
  `ID_Yslovie` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL,
  `Opisanie_yslovia` varchar(100) NOT NULL,
  `ID_Vid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Yslovie_soderjania`
--

INSERT INTO `Yslovie_soderjania` (`ID_Yslovie`, `ID_Jivotnoe`, `Opisanie_yslovia`, `ID_Vid`) VALUES
(1, 2, 'нуждается в теплом помещении', 3),
(2, 1, 'не нуждается в теплом помещении, необходимо переселить', 1),
(3, 4, 'необходимо переселить', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `Zacreplenie`
--

CREATE TABLE `Zacreplenie` (
  `ID_Zacrep` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL,
  `ID_Sotrudnik` int(11) NOT NULL,
  `ID_Vid` int(11) NOT NULL,
  `Data_Zacrep` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Zacreplenie`
--

INSERT INTO `Zacreplenie` (`ID_Zacrep`, `ID_Jivotnoe`, `ID_Sotrudnik`, `ID_Vid`, `Data_Zacrep`) VALUES
(1, 2, 1, 3, '2022-10-01'),
(2, 4, 2, 4, '2024-11-03'),
(3, 8, 2, 4, '2024-09-16'),
(4, 5, 1, 1, '2024-09-30');

--
-- Триггеры `Zacreplenie`
--
DELIMITER $$
CREATE TRIGGER `TrDeleteZacreplenie` BEFORE DELETE ON `Zacreplenie` FOR EACH ROW BEGIN
    INSERT INTO Bk_Zacreplenie SET
        Bk_Zacreplenie.OLD_ID_Zacrep = OLD.ID_Zacrep,
        Bk_Zacreplenie.OLD_ID_Jivotnoe = OLD.ID_Jivotnoe,
        Bk_Zacreplenie.OLD_ID_Sotrudnik = OLD.ID_Sotrudnik,
        Bk_Zacreplenie.OLD_Data_Zacrep = OLD.Data_Zacrep;

    INSERT INTO Log_Zacreplenie SET
        Log_Zacreplenie.id_zacrep = OLD.ID_Zacrep,
        Log_Zacreplenie.DateAction = CURRENT_DATE,
        Log_Zacreplenie.TimeAction = CURRENT_TIME,
        Log_Zacreplenie.UserLog = CURRENT_USER,
        Log_Zacreplenie.Action = "Удалили данные";
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrInsertZacreplenie` AFTER INSERT ON `Zacreplenie` FOR EACH ROW BEGIN
    INSERT INTO Log_Zacreplenie SET
        Log_Zacreplenie.id_zacrep = NEW.ID_Zacrep,
        Log_Zacreplenie.DateAction = CURRENT_DATE,
        Log_Zacreplenie.TimeAction = CURRENT_TIME,
        Log_Zacreplenie.UserLog = CURRENT_USER,
        Log_Zacreplenie.Action = "Добавили строку";
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrUpdateZacreplenie` BEFORE UPDATE ON `Zacreplenie` FOR EACH ROW BEGIN
    INSERT INTO Bk_Zacreplenie SET
        Bk_Zacreplenie.OLD_ID_Zacrep = OLD.ID_Zacrep,
        Bk_Zacreplenie.OLD_ID_Jivotnoe = OLD.ID_Jivotnoe,
        Bk_Zacreplenie.OLD_ID_Sotrudnik = OLD.ID_Sotrudnik,
        Bk_Zacreplenie.OLD_Data_Zacrep = OLD.Data_Zacrep;

    INSERT INTO Log_Zacreplenie SET
        Log_Zacreplenie.id_zacrep = OLD.ID_Zacrep,
        Log_Zacreplenie.DateAction = CURRENT_DATE,
        Log_Zacreplenie.TimeAction = CURRENT_TIME,
        Log_Zacreplenie.UserLog = CURRENT_USER,
        Log_Zacreplenie.Action = "Обновили данные";
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `zacreplenie_1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `zacreplenie_1` (
`FIO_Sotrudnika` varchar(100)
,`Name_vida` varchar(50)
,`Name_Jiv` varchar(20)
,`Prebivanie` varchar(21)
);

-- --------------------------------------------------------

--
-- Структура таблицы `Zaselenie_v_kletky`
--

CREATE TABLE `Zaselenie_v_kletky` (
  `ID_Zaselenie` int(11) NOT NULL,
  `ID_Jivotnoe` int(11) NOT NULL,
  `ID_Kletki` int(11) NOT NULL,
  `Data_Zaseleniya` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Zaselenie_v_kletky`
--

INSERT INTO `Zaselenie_v_kletky` (`ID_Zaselenie`, `ID_Jivotnoe`, `ID_Kletki`, `Data_Zaseleniya`) VALUES
(1, 2, 1, '2024-11-04'),
(2, 1, 2, '2023-11-16'),
(3, 4, 3, '2024-06-12'),
(4, 3, 3, '2024-07-12'),
(5, 6, 1, '2024-11-07');

--
-- Триггеры `Zaselenie_v_kletky`
--
DELIMITER $$
CREATE TRIGGER `TrInsertZaselenie_v_kletky` AFTER INSERT ON `Zaselenie_v_kletky` FOR EACH ROW BEGIN
    INSERT INTO Log_Zaselenie_v_kletky SET
        Log_Zaselenie_v_kletky.id_zaselenie = NEW.ID_Zaselenie,
        Log_Zaselenie_v_kletky.DateAction = CURRENT_DATE,
        Log_Zaselenie_v_kletky.TimeAction = CURRENT_TIME,
        Log_Zaselenie_v_kletky.UserLog = CURRENT_USER,
        Log_Zaselenie_v_kletky.Action = "Добавили строку";
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `Zoopark`
--

CREATE TABLE `Zoopark` (
  `ID_Zoopark` int(11) NOT NULL,
  `Name_zooparka` varchar(25) NOT NULL,
  `Adres_zoo` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Zoopark`
--

INSERT INTO `Zoopark` (`ID_Zoopark`, `Name_zooparka`, `Adres_zoo`) VALUES
(1, '\"Лим-по-по\"', 'г.Санкт-Петербург ул.Велижаево, д.25'),
(2, '\"Казанский Зоопарк\"', 'г.Казань ул.Велижаево, д.777'),
(3, '\"Джумамбла\"', 'г.Рязань ул.Великих  д.22');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `zoopark_1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `zoopark_1` (
`Name_vida` varchar(50)
,`Name_Jiv` varchar(20)
,`Name_zooparka` varchar(25)
);

-- --------------------------------------------------------

--
-- Структура для представления `jivotnoe_1`
--
DROP TABLE IF EXISTS `jivotnoe_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`jivotnoe_1`  AS  select `zoopark`.`jivotnoe`.`Name_Jiv` AS `Name_Jiv`,`zoopark`.`vid_jiv`.`Name_vida` AS `Name_vida`,`zoopark`.`kletka`.`Name_kletki` AS `Name_kletki`,`zoopark`.`pol`.`Name_pol` AS `Name_pol`,`zoopark`.`jivotnoe`.`Rost` AS `Rost`,`zoopark`.`jivotnoe`.`Ves` AS `Ves`,timestampdiff(YEAR,`zoopark`.`jivotnoe`.`BDate`,curdate()) AS `Vozrast` from ((((`zoopark`.`zaselenie_v_kletky` join `zoopark`.`jivotnoe` on((`zoopark`.`zaselenie_v_kletky`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) join `zoopark`.`kletka` on((`zoopark`.`zaselenie_v_kletky`.`ID_Kletki` = `zoopark`.`kletka`.`ID_Kletki`))) join `zoopark`.`pol` on((`zoopark`.`jivotnoe`.`ID_Pol` = `zoopark`.`pol`.`ID_Pol`))) join `zoopark`.`vid_jiv` on((`zoopark`.`jivotnoe`.`ID_Vid` = `zoopark`.`vid_jiv`.`ID_Vid`))) ;

-- --------------------------------------------------------

--
-- Структура для представления `jivotnoe_2`
--
DROP TABLE IF EXISTS `jivotnoe_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`jivotnoe_2`  AS  select `zoopark`.`jivotnoe`.`Name_Jiv` AS `Name_Jiv`,`zoopark`.`vid_jiv`.`Name_vida` AS `Name_vida`,`zoopark`.`kletka`.`Name_kletki` AS `Name_kletki`,`zoopark`.`klin_zone`.`Name_klim_zone` AS `Name_klim_zone`,timestampdiff(YEAR,`zoopark`.`jivotnoe`.`BDate`,curdate()) AS `Vozrast`,(case when (`zoopark`.`klin_zone`.`ID_Klim_zone` in (1,3)) then 'нуждается' else 'не нуждается' end) AS `Nujda_v_teplom_pomechenie` from ((((`zoopark`.`zaselenie_v_kletky` join `zoopark`.`jivotnoe` on((`zoopark`.`zaselenie_v_kletky`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) join `zoopark`.`vid_jiv` on((`zoopark`.`jivotnoe`.`ID_Vid` = `zoopark`.`vid_jiv`.`ID_Vid`))) join `zoopark`.`kletka` on((`zoopark`.`zaselenie_v_kletky`.`ID_Kletki` = `zoopark`.`kletka`.`ID_Kletki`))) join `zoopark`.`klin_zone` on((`zoopark`.`vid_jiv`.`ID_Klim_zone` = `zoopark`.`klin_zone`.`ID_Klim_zone`))) union all select 'Всего:' AS `Name_Jiv`,count(`zoopark`.`jivotnoe`.`ID_Jivotnoe`) AS `Name_vida`,'' AS `Name_kletki`,'' AS `Name_klim_zone`,'' AS `Vozrast`,'' AS `Nujdaetsa` from (((`zoopark`.`jivotnoe` join `zoopark`.`zaselenie_v_kletky` on((`zoopark`.`zaselenie_v_kletky`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) join `zoopark`.`vid_jiv` on((`zoopark`.`jivotnoe`.`ID_Vid` = `zoopark`.`vid_jiv`.`ID_Vid`))) join `zoopark`.`klin_zone` on((`zoopark`.`vid_jiv`.`ID_Klim_zone` = `zoopark`.`klin_zone`.`ID_Klim_zone`))) ;

-- --------------------------------------------------------

--
-- Структура для представления `jivotnoe_3`
--
DROP TABLE IF EXISTS `jivotnoe_3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`jivotnoe_3`  AS  select `zoopark`.`jivotnoe`.`Name_Jiv` AS `Name_Jiv`,`zoopark`.`pol`.`Name_pol` AS `Name_pol`,`zoopark`.`potomstvo`.`ID_Vid` AS `ID_Vid`,`zoopark`.`yslovie_soderjania`.`Opisanie_yslovia` AS `Opisanie_yslovia`,timestampdiff(YEAR,`zoopark`.`jivotnoe`.`BDate`,curdate()) AS `Vozrast` from (((`zoopark`.`jivotnoe` join `zoopark`.`pol` on((`zoopark`.`jivotnoe`.`ID_Pol` = `zoopark`.`pol`.`ID_Pol`))) left join `zoopark`.`potomstvo` on((`zoopark`.`potomstvo`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) left join `zoopark`.`yslovie_soderjania` on((`zoopark`.`yslovie_soderjania`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) where ((`zoopark`.`potomstvo`.`ID_Vid` in ('шимпанзе','жираф')) or (`zoopark`.`yslovie_soderjania`.`Opisanie_yslovia` like '%необходимо переселить%') or (`zoopark`.`yslovie_soderjania`.`Opisanie_yslovia` like '%нуждается в теплом помещении%')) ;

-- --------------------------------------------------------

--
-- Структура для представления `jivotnoe_4`
--
DROP TABLE IF EXISTS `jivotnoe_4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`jivotnoe_4`  AS  select `zoopark`.`jivotnoe`.`Name_Jiv` AS `Name_Jiv`,`zoopark`.`vid_jiv`.`Name_vida` AS `Name_vida`,`zoopark`.`jivotnoe`.`Rost` AS `Rost`,`zoopark`.`jivotnoe`.`Ves` AS `Ves`,`zoopark`.`jivotnoe`.`BDate` AS `BDate`,`zoopark`.`jivotnoe`.`Data_postuplenia` AS `Data_postuplenia`,`zoopark`.`privivki`.`Name_Privivki` AS `Name_Privivki`,`zoopark`.`prostavlenie_privivok`.`ID_Prostavlenie` AS `ID_Prostavlenie`,count(`zoopark`.`potomstvo`.`ID_Potomstvo`) AS `Kolichestvo_Potomstva`,timestampdiff(YEAR,`zoopark`.`jivotnoe`.`BDate`,curdate()) AS `Vozrast`,`zoopark`.`kletka`.`Name_kletki` AS `Name_kletki`,`zoopark`.`zaselenie_v_kletky`.`Data_Zaseleniya` AS `Data_Zaseleniya` from ((((((`zoopark`.`jivotnoe` left join `zoopark`.`vid_jiv` on((`zoopark`.`jivotnoe`.`ID_Vid` = `zoopark`.`vid_jiv`.`ID_Vid`))) left join `zoopark`.`prostavlenie_privivok` on((`zoopark`.`prostavlenie_privivok`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) left join `zoopark`.`privivki` on((`zoopark`.`prostavlenie_privivok`.`ID_Privivki` = `zoopark`.`privivki`.`ID_Privivki`))) left join `zoopark`.`potomstvo` on((`zoopark`.`jivotnoe`.`ID_Jivotnoe` = `zoopark`.`potomstvo`.`ID_Jivotnoe`))) join `zoopark`.`zaselenie_v_kletky` on((`zoopark`.`zaselenie_v_kletky`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) left join `zoopark`.`kletka` on((`zoopark`.`zaselenie_v_kletky`.`ID_Kletki` = `zoopark`.`kletka`.`ID_Kletki`))) where (((`zoopark`.`vid_jiv`.`Name_vida` = 'шимпанзе') or isnull('жираф')) and ((`zoopark`.`kletka`.`Name_kletki` = 'К-22') or isnull('К-22')) and ((`zoopark`.`jivotnoe`.`Name_Jiv` = 'Жорика') or isnull('Толик'))) group by `zoopark`.`jivotnoe`.`ID_Jivotnoe`,`zoopark`.`vid_jiv`.`Name_vida`,`zoopark`.`jivotnoe`.`Rost`,`zoopark`.`jivotnoe`.`Ves`,`zoopark`.`jivotnoe`.`BDate`,`zoopark`.`jivotnoe`.`Data_postuplenia`,`zoopark`.`privivki`.`Name_Privivki`,`zoopark`.`kletka`.`Name_kletki`,`zoopark`.`zaselenie_v_kletky`.`Data_Zaseleniya` order by `Vozrast` desc ;

-- --------------------------------------------------------

--
-- Структура для представления `kormlenie_1`
--
DROP TABLE IF EXISTS `kormlenie_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`kormlenie_1`  AS  select `zoopark`.`jivotnoe`.`Name_Jiv` AS `Name_Jiv`,`zoopark`.`vid_jiv`.`Name_vida` AS `Name_vida`,`zoopark`.`type_korm`.`ID_Type_korm` AS `ID_Type_korm`,`zoopark`.`seson`.`Name_seson` AS `Name_seson`,`zoopark`.`type_kormlenia`.`ID_Type_kormlenia` AS `ID_Type_kormlenia` from ((((`zoopark`.`jivotnoe` join `zoopark`.`type_kormlenia` on((`zoopark`.`jivotnoe`.`ID_Jivotnoe` = `zoopark`.`type_kormlenia`.`ID_Jivotnoe`))) join `zoopark`.`type_korm` on((`zoopark`.`type_korm`.`ID_Type_korm` = `zoopark`.`type_kormlenia`.`ID_Type_korm`))) join `zoopark`.`seson` on((`zoopark`.`type_kormlenia`.`ID_Seson` = `zoopark`.`seson`.`ID_Seson`))) join `zoopark`.`vid_jiv` on((`zoopark`.`jivotnoe`.`ID_Vid` = `zoopark`.`vid_jiv`.`ID_Vid`))) where (((`zoopark`.`jivotnoe`.`Name_Jiv` in ('Жорика','Лалик','Лолита')) or isnull('Жорика')) and ((`zoopark`.`type_korm`.`ID_Type_korm` in ('1','3','2')) or isnull('1')) and ((`zoopark`.`seson`.`Name_seson` = 'зимний') or isnull('зимний'))) group by `zoopark`.`jivotnoe`.`Name_Jiv`,`zoopark`.`vid_jiv`.`Name_vida`,`zoopark`.`type_korm`.`ID_Type_korm`,`zoopark`.`seson`.`Name_seson` ;

-- --------------------------------------------------------

--
-- Структура для представления `korm_1`
--
DROP TABLE IF EXISTS `korm_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`korm_1`  AS  select `zoopark`.`korm`.`Name_korm` AS `Name_korm`,sum(`zoopark`.`postavka`.`Kolvo_korma`) AS `Кол-во` from (`zoopark`.`korm` left join `zoopark`.`postavka` on((`zoopark`.`korm`.`ID_Korm` = `zoopark`.`postavka`.`ID_Korm`))) group by `zoopark`.`korm`.`ID_Korm`,`zoopark`.`korm`.`Name_korm` union all select 'Всего' AS `Name_korm`,sum(`zoopark`.`postavka`.`Kolvo_korma`) AS `Кол-во` from (`zoopark`.`korm` left join `zoopark`.`postavka` on((`zoopark`.`korm`.`ID_Korm` = `zoopark`.`postavka`.`ID_Korm`))) union all select `zoopark`.`korm`.`Name_korm` AS `Name_korm`,sum(`zoopark`.`postavka`.`Kolvo_korma`) AS `Кол-во` from ((`zoopark`.`korm` left join `zoopark`.`proizvodstvo` on((`zoopark`.`korm`.`ID_Korm` = `zoopark`.`proizvodstvo`.`ID_Korm`))) left join `zoopark`.`postavka` on((`zoopark`.`korm`.`ID_Korm` = `zoopark`.`postavka`.`ID_Korm`))) where (`zoopark`.`proizvodstvo`.`ID_Korm` is not null) group by `zoopark`.`korm`.`ID_Korm`,`zoopark`.`korm`.`Name_korm` ;

-- --------------------------------------------------------

--
-- Структура для представления `postavshik_1`
--
DROP TABLE IF EXISTS `postavshik_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`postavshik_1`  AS  select `zoopark`.`postavshik`.`Name_Postavshika` AS `Name_Postavshika`,`zoopark`.`korm`.`ID_Korm` AS `ID_Korm`,sum(`zoopark`.`postavka`.`Kolvo_korma`) AS `Total_Kolvo`,avg(`zoopark`.`postavka`.`Price`) AS `Post_Price`,count(`zoopark`.`postavka`.`ID_Postavka`) AS `Total_postavka`,min(`zoopark`.`postavka`.`Date_Postavka`) AS `First_post_Date`,max(`zoopark`.`postavka`.`Date_Postavka`) AS `Last_post_Date` from ((`zoopark`.`postavshik` join `zoopark`.`postavka` on((`zoopark`.`postavka`.`ID_Postavshika` = `zoopark`.`postavshik`.`ID_Postavshika`))) join `zoopark`.`korm` on((`zoopark`.`postavka`.`ID_Korm` = `zoopark`.`korm`.`ID_Korm`))) where ((`zoopark`.`korm`.`ID_Korm` in ('1','3')) and (`zoopark`.`postavka`.`Date_Postavka` between '2024-01-01' and '2024-12-31')) group by `zoopark`.`postavshik`.`Name_Postavshika`,`zoopark`.`korm`.`ID_Korm` union all select 'Всего:' AS `Name_Postavshika`,NULL AS `ID_Korm`,sum(`zoopark`.`postavka`.`Kolvo_korma`) AS `Total_Kolvo`,avg(`zoopark`.`postavka`.`Price`) AS `Post_Price`,count(`zoopark`.`postavka`.`ID_Postavka`) AS `Total_postavka`,min(`zoopark`.`postavka`.`Date_Postavka`) AS `First_post_Date`,max(`zoopark`.`postavka`.`Date_Postavka`) AS `Last_post_Date` from ((`zoopark`.`postavshik` join `zoopark`.`postavka` on((`zoopark`.`postavka`.`ID_Postavshika` = `zoopark`.`postavshik`.`ID_Postavshika`))) join `zoopark`.`korm` on((`zoopark`.`postavka`.`ID_Korm` = `zoopark`.`korm`.`ID_Korm`))) where ((`zoopark`.`korm`.`ID_Korm` in ('1','3')) and (`zoopark`.`postavka`.`Date_Postavka` between '2024-01-01' and '2024-12-31')) order by `Total_Kolvo` desc ;

-- --------------------------------------------------------

--
-- Структура для представления `potomstvo_1`
--
DROP TABLE IF EXISTS `potomstvo_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`potomstvo_1`  AS  select `zoopark`.`jivotnoe`.`Name_Jiv` AS `Name_Jiv`,`zoopark`.`pol`.`Name_pol` AS `Name_pol`,`zoopark`.`privivki`.`Name_Privivki` AS `Name_Privivki`,`zoopark`.`bolezni`.`Name_Bolezni` AS `Name_Bolezni`,count(`zoopark`.`potomstvo`.`ID_Vid`) AS `Kolichestvo_Potomstva`,timestampdiff(YEAR,`zoopark`.`jivotnoe`.`BDate`,curdate()) AS `Vozrast`,(to_days(curdate()) - to_days(`zoopark`.`jivotnoe`.`Data_postuplenia`)) AS `Dlitelnist_Prebivaniya` from (((((`zoopark`.`jivotnoe` join `zoopark`.`pol` on((`zoopark`.`jivotnoe`.`ID_Pol` = `zoopark`.`pol`.`ID_Pol`))) join `zoopark`.`prostavlenie_privivok` on((`zoopark`.`prostavlenie_privivok`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) join `zoopark`.`privivki` on((`zoopark`.`prostavlenie_privivok`.`ID_Privivki` = `zoopark`.`privivki`.`ID_Privivki`))) left join `zoopark`.`bolezni` on((`zoopark`.`bolezni`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) left join `zoopark`.`potomstvo` on((`zoopark`.`potomstvo`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) where ((`zoopark`.`privivki`.`Name_Privivki` = '1111-ПР') or (`zoopark`.`bolezni`.`Name_Bolezni` = 'Простуда')) group by `zoopark`.`jivotnoe`.`ID_Jivotnoe`,`zoopark`.`pol`.`Name_pol`,`zoopark`.`privivki`.`Name_Privivki`,`zoopark`.`bolezni`.`Name_Bolezni` order by `Dlitelnist_Prebivaniya` desc ;

-- --------------------------------------------------------

--
-- Структура для представления `potomstvo_2`
--
DROP TABLE IF EXISTS `potomstvo_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`potomstvo_2`  AS  select `zoopark`.`jivotnoe`.`Name_Jiv` AS `животное`,`zoopark`.`potomstvo`.`BDate` AS `Дата рождения`,`zoopark`.`pol`.`Name_pol` AS `Пол_детеныша` from ((`zoopark`.`jivotnoe` join `zoopark`.`potomstvo` on((`zoopark`.`potomstvo`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) join `zoopark`.`pol` on((`zoopark`.`jivotnoe`.`ID_Pol` = `zoopark`.`pol`.`ID_Pol`))) where (`zoopark`.`potomstvo`.`BDate` between '2024.01.01' and '2024.12.31') ;

-- --------------------------------------------------------

--
-- Структура для представления `sotrudniki_1`
--
DROP TABLE IF EXISTS `sotrudniki_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`sotrudniki_1`  AS  select `zoopark`.`sotrudnik`.`FIO_Sotrudnika` AS `FIO_Sotrudnika`,`zoopark`.`doljnoste`.`Name_Doljnoste` AS `Name_Doljnoste`,`zoopark`.`pol`.`Name_pol` AS `Name_pol`,`zoopark`.`doljnoste`.`Zarplata` AS `Zarplata`,`zoopark`.`doljnostnoy_dostup`.`Name_dostupa` AS `Name_dostupa`,timestampdiff(YEAR,`zoopark`.`sotrudnik`.`BDate`,curdate()) AS `Vozrast`,timestampdiff(YEAR,`zoopark`.`sotrudnik`.`Data_nachala`,curdate()) AS `Prodoljitelnost` from (((`zoopark`.`sotrudnik` join `zoopark`.`pol` on((`zoopark`.`sotrudnik`.`ID_Pol` = `zoopark`.`pol`.`ID_Pol`))) join `zoopark`.`doljnoste` on((`zoopark`.`sotrudnik`.`ID_Doljnost` = `zoopark`.`doljnoste`.`ID_Doljnost`))) join `zoopark`.`doljnostnoy_dostup` on((`zoopark`.`doljnoste`.`ID_Dostupa` = `zoopark`.`doljnostnoy_dostup`.`ID_Dostup`))) ;

-- --------------------------------------------------------

--
-- Структура для представления `sotrudniki_2`
--
DROP TABLE IF EXISTS `sotrudniki_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`sotrudniki_2`  AS  select `zoopark`.`sotrudnik`.`FIO_Sotrudnika` AS `FIO_Sotrudnika`,`zoopark`.`jivotnoe`.`Name_Jiv` AS `Name_Jiv`,`zoopark`.`doljnostnoy_dostup`.`Name_dostupa` AS `Name_dostupa`,`zoopark`.`doljnoste`.`Name_Doljnoste` AS `Name_Doljnoste` from ((((`zoopark`.`zacreplenie` join `zoopark`.`sotrudnik` on((`zoopark`.`zacreplenie`.`ID_Sotrudnik` = `zoopark`.`sotrudnik`.`ID_Sotrudnik`))) join `zoopark`.`jivotnoe` on((`zoopark`.`zacreplenie`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) join `zoopark`.`doljnoste` on((`zoopark`.`sotrudnik`.`ID_Doljnost` = `zoopark`.`doljnoste`.`ID_Doljnost`))) join `zoopark`.`doljnostnoy_dostup` on((`zoopark`.`doljnoste`.`ID_Dostupa` = `zoopark`.`doljnostnoy_dostup`.`ID_Dostup`))) union select 'Всего:' AS `Всего:`,count(`zoopark`.`sotrudnik`.`FIO_Sotrudnika`) AS `COUNT(Sotrudnik.FIO_Sotrudnika)`,'' AS `Name_exp_7`,'' AS `Name_exp_8` from (`zoopark`.`sotrudnik` join `zoopark`.`zacreplenie` on((`zoopark`.`zacreplenie`.`ID_Sotrudnik` = `zoopark`.`sotrudnik`.`ID_Sotrudnik`))) ;

-- --------------------------------------------------------

--
-- Структура для представления `zacreplenie_1`
--
DROP TABLE IF EXISTS `zacreplenie_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`zacreplenie_1`  AS  select `zoopark`.`sotrudnik`.`FIO_Sotrudnika` AS `FIO_Sotrudnika`,`zoopark`.`vid_jiv`.`Name_vida` AS `Name_vida`,`zoopark`.`jivotnoe`.`Name_Jiv` AS `Name_Jiv`,timestampdiff(YEAR,`zoopark`.`jivotnoe`.`BDate`,curdate()) AS `Prebivanie` from (((`zoopark`.`zacreplenie` join `zoopark`.`sotrudnik` on((`zoopark`.`zacreplenie`.`ID_Sotrudnik` = `zoopark`.`sotrudnik`.`ID_Sotrudnik`))) join `zoopark`.`jivotnoe` on((`zoopark`.`zacreplenie`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) join `zoopark`.`vid_jiv` on((`zoopark`.`jivotnoe`.`ID_Vid` = `zoopark`.`vid_jiv`.`ID_Vid`))) where (`zoopark`.`zacreplenie`.`Data_Zacrep` between '2022-01-01' and '2022-12-31') union select 'Всего:' AS `Всего:`,count(`zoopark`.`sotrudnik`.`FIO_Sotrudnika`) AS `COUNT(Sotrudnik.FIO_Sotrudnika)`,'' AS `Name_exp_7`,'' AS `Name_exp_8` from (`zoopark`.`sotrudnik` join `zoopark`.`zacreplenie` on((`zoopark`.`zacreplenie`.`ID_Sotrudnik` = `zoopark`.`sotrudnik`.`ID_Sotrudnik`))) where (`zoopark`.`zacreplenie`.`Data_Zacrep` between '2022-01-01' and '2022-12-31') ;

-- --------------------------------------------------------

--
-- Структура для представления `zoopark_1`
--
DROP TABLE IF EXISTS `zoopark_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `zoopark`.`zoopark_1`  AS  select `zoopark`.`vid_jiv`.`Name_vida` AS `Name_vida`,`zoopark`.`jivotnoe`.`Name_Jiv` AS `Name_Jiv`,`zoopark`.`zoopark`.`Name_zooparka` AS `Name_zooparka` from (((`zoopark`.`obmen_s_zoo` join `zoopark`.`jivotnoe` on((`zoopark`.`obmen_s_zoo`.`ID_Jivotnoe` = `zoopark`.`jivotnoe`.`ID_Jivotnoe`))) join `zoopark`.`vid_jiv` on((`zoopark`.`jivotnoe`.`ID_Vid` = `zoopark`.`vid_jiv`.`ID_Vid`))) join `zoopark`.`zoopark` on((`zoopark`.`obmen_s_zoo`.`ID_Zoopark` = `zoopark`.`zoopark`.`ID_Zoopark`))) union select 'Всего:' AS `Всего:`,count(`zoopark`.`zoopark`.`Name_zooparka`) AS `COUNT(Zoopark.Name_zooparka)`,'' AS `Name_exp_6` from (`zoopark`.`zoopark` join `zoopark`.`obmen_s_zoo` on((`zoopark`.`obmen_s_zoo`.`ID_Zoopark` = `zoopark`.`zoopark`.`ID_Zoopark`))) ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Bk_Medosmotr`
--
ALTER TABLE `Bk_Medosmotr`
  ADD PRIMARY KEY (`id_Bk_medosmotr`);

--
-- Индексы таблицы `Bk_Obmen_s_zoo`
--
ALTER TABLE `Bk_Obmen_s_zoo`
  ADD PRIMARY KEY (`id_Bk_obmen`);

--
-- Индексы таблицы `Bk_Postavka`
--
ALTER TABLE `Bk_Postavka`
  ADD PRIMARY KEY (`id_Bk_postavka`);

--
-- Индексы таблицы `Bk_Proizvodstvo`
--
ALTER TABLE `Bk_Proizvodstvo`
  ADD PRIMARY KEY (`id_Bk_proizvodstva`);

--
-- Индексы таблицы `Bk_Zacreplenie`
--
ALTER TABLE `Bk_Zacreplenie`
  ADD PRIMARY KEY (`id_Bk_zacrep`);

--
-- Индексы таблицы `Bk_Zaselenie_v_kletky`
--
ALTER TABLE `Bk_Zaselenie_v_kletky`
  ADD PRIMARY KEY (`id_Bk_zaselenie`);

--
-- Индексы таблицы `Bolezni`
--
ALTER TABLE `Bolezni`
  ADD PRIMARY KEY (`ID_Bolezni`),
  ADD KEY `ID_Jivotnoe` (`ID_Jivotnoe`),
  ADD KEY `ID_Lechenie` (`ID_Lechenie`);

--
-- Индексы таблицы `Doljnoste`
--
ALTER TABLE `Doljnoste`
  ADD PRIMARY KEY (`ID_Doljnost`),
  ADD KEY `ID_Dostupa` (`ID_Dostupa`);

--
-- Индексы таблицы `Doljnostnoy_dostup`
--
ALTER TABLE `Doljnostnoy_dostup`
  ADD PRIMARY KEY (`ID_Dostup`);

--
-- Индексы таблицы `Jivotnoe`
--
ALTER TABLE `Jivotnoe`
  ADD PRIMARY KEY (`ID_Jivotnoe`),
  ADD KEY `ID_Pol` (`ID_Pol`),
  ADD KEY `ID_Vid` (`ID_Vid`);

--
-- Индексы таблицы `Kletka`
--
ALTER TABLE `Kletka`
  ADD PRIMARY KEY (`ID_Kletki`);

--
-- Индексы таблицы `Klin_Zone`
--
ALTER TABLE `Klin_Zone`
  ADD PRIMARY KEY (`ID_Klim_zone`);

--
-- Индексы таблицы `Korm`
--
ALTER TABLE `Korm`
  ADD PRIMARY KEY (`ID_Korm`),
  ADD KEY `ID_Type_korm` (`ID_Type_korm`);

--
-- Индексы таблицы `Lechenie`
--
ALTER TABLE `Lechenie`
  ADD PRIMARY KEY (`ID_Lechenie`);

--
-- Индексы таблицы `Log_Doljnost`
--
ALTER TABLE `Log_Doljnost`
  ADD PRIMARY KEY (`id_Log_Doljnost`);

--
-- Индексы таблицы `Log_Jivotnoe`
--
ALTER TABLE `Log_Jivotnoe`
  ADD PRIMARY KEY (`ID_Log_Jivotnoe`);

--
-- Индексы таблицы `Log_Medosmotr`
--
ALTER TABLE `Log_Medosmotr`
  ADD PRIMARY KEY (`id_Log_Medosmotr`);

--
-- Индексы таблицы `Log_Obmen_s_zoo`
--
ALTER TABLE `Log_Obmen_s_zoo`
  ADD PRIMARY KEY (`id_Log_Obmen_s_zoo`);

--
-- Индексы таблицы `Log_Postavka`
--
ALTER TABLE `Log_Postavka`
  ADD PRIMARY KEY (`id_Log_Postavka`);

--
-- Индексы таблицы `Log_Proizvodstvo`
--
ALTER TABLE `Log_Proizvodstvo`
  ADD PRIMARY KEY (`id_Log_Proizvodstva`);

--
-- Индексы таблицы `Log_Zacreplenie`
--
ALTER TABLE `Log_Zacreplenie`
  ADD PRIMARY KEY (`id_Log_Zacreplenie`);

--
-- Индексы таблицы `Log_Zaselenie_v_kletky`
--
ALTER TABLE `Log_Zaselenie_v_kletky`
  ADD PRIMARY KEY (`id_Log_Zaselenie_v_kletky`);

--
-- Индексы таблицы `Medosmotr`
--
ALTER TABLE `Medosmotr`
  ADD PRIMARY KEY (`ID_Med`),
  ADD KEY `ID_Sotrudnika` (`ID_Sotrudnika`),
  ADD KEY `ID_Status_z` (`ID_Status_z`),
  ADD KEY `ID_Jivotnoe` (`ID_Jivotnoe`);

--
-- Индексы таблицы `Obmen_s_zoo`
--
ALTER TABLE `Obmen_s_zoo`
  ADD PRIMARY KEY (`ID_Obmen`),
  ADD KEY `ID_Jivotnoe` (`ID_Jivotnoe`),
  ADD KEY `ID_Zoopark` (`ID_Zoopark`);

--
-- Индексы таблицы `Pol`
--
ALTER TABLE `Pol`
  ADD PRIMARY KEY (`ID_Pol`);

--
-- Индексы таблицы `Postavka`
--
ALTER TABLE `Postavka`
  ADD PRIMARY KEY (`ID_Postavka`),
  ADD KEY `ID_Postavshika` (`ID_Postavshika`),
  ADD KEY `ID_Korm` (`ID_Korm`);

--
-- Индексы таблицы `Postavshik`
--
ALTER TABLE `Postavshik`
  ADD PRIMARY KEY (`ID_Postavshika`);

--
-- Индексы таблицы `Potomstvo`
--
ALTER TABLE `Potomstvo`
  ADD PRIMARY KEY (`ID_Potomstvo`),
  ADD KEY `ID_Jivotnoe` (`ID_Jivotnoe`),
  ADD KEY `ID_Vid` (`ID_Vid`);

--
-- Индексы таблицы `Privivki`
--
ALTER TABLE `Privivki`
  ADD PRIMARY KEY (`ID_Privivki`);

--
-- Индексы таблицы `Proizvodstvo`
--
ALTER TABLE `Proizvodstvo`
  ADD PRIMARY KEY (`ID_Proizvodstva`),
  ADD KEY `ID_Korm` (`ID_Korm`);

--
-- Индексы таблицы `Prostavlenie_privivok`
--
ALTER TABLE `Prostavlenie_privivok`
  ADD PRIMARY KEY (`ID_Prostavlenie`),
  ADD KEY `ID_Jivotnoe` (`ID_Jivotnoe`),
  ADD KEY `ID_Privivki` (`ID_Privivki`);

--
-- Индексы таблицы `Racion`
--
ALTER TABLE `Racion`
  ADD PRIMARY KEY (`ID_Racion`),
  ADD KEY `ID_Jivotnoe` (`ID_Jivotnoe`),
  ADD KEY `ID_Sezon` (`ID_Sezon`);

--
-- Индексы таблицы `Seson`
--
ALTER TABLE `Seson`
  ADD PRIMARY KEY (`ID_Seson`),
  ADD KEY `ID_Vid` (`ID_Vid`);

--
-- Индексы таблицы `Sotrudnik`
--
ALTER TABLE `Sotrudnik`
  ADD PRIMARY KEY (`ID_Sotrudnik`),
  ADD KEY `ID_Doljnost` (`ID_Doljnost`),
  ADD KEY `ID_Pol` (`ID_Pol`);

--
-- Индексы таблицы `Status_z`
--
ALTER TABLE `Status_z`
  ADD PRIMARY KEY (`ID_Status`),
  ADD KEY `ID_Jivotnoe` (`ID_Jivotnoe`);

--
-- Индексы таблицы `Type_korm`
--
ALTER TABLE `Type_korm`
  ADD PRIMARY KEY (`ID_Type_korm`),
  ADD KEY `ID_Racion` (`ID_Racion`);

--
-- Индексы таблицы `Type_kormlenia`
--
ALTER TABLE `Type_kormlenia`
  ADD PRIMARY KEY (`ID_Type_kormlenia`),
  ADD KEY `ID_Type_korm` (`ID_Type_korm`),
  ADD KEY `ID_Jivotnoe` (`ID_Jivotnoe`),
  ADD KEY `ID_Seson` (`ID_Seson`);

--
-- Индексы таблицы `Vid_Jiv`
--
ALTER TABLE `Vid_Jiv`
  ADD PRIMARY KEY (`ID_Vid`),
  ADD KEY `ID_Klim_zone` (`ID_Klim_zone`);

--
-- Индексы таблицы `Yslovie_soderjania`
--
ALTER TABLE `Yslovie_soderjania`
  ADD PRIMARY KEY (`ID_Yslovie`),
  ADD KEY `ID_Jivotnoe` (`ID_Jivotnoe`),
  ADD KEY `ID_Vid` (`ID_Vid`);

--
-- Индексы таблицы `Zacreplenie`
--
ALTER TABLE `Zacreplenie`
  ADD PRIMARY KEY (`ID_Zacrep`),
  ADD KEY `ID_Jivotnoe` (`ID_Jivotnoe`),
  ADD KEY `ID_Sotrudnik` (`ID_Sotrudnik`),
  ADD KEY `ID_Vid` (`ID_Vid`);

--
-- Индексы таблицы `Zaselenie_v_kletky`
--
ALTER TABLE `Zaselenie_v_kletky`
  ADD PRIMARY KEY (`ID_Zaselenie`),
  ADD KEY `ID_Jivotnoe` (`ID_Jivotnoe`),
  ADD KEY `ID_Kletki` (`ID_Kletki`);

--
-- Индексы таблицы `Zoopark`
--
ALTER TABLE `Zoopark`
  ADD PRIMARY KEY (`ID_Zoopark`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Bk_Medosmotr`
--
ALTER TABLE `Bk_Medosmotr`
  MODIFY `id_Bk_medosmotr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Bk_Obmen_s_zoo`
--
ALTER TABLE `Bk_Obmen_s_zoo`
  MODIFY `id_Bk_obmen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Bk_Postavka`
--
ALTER TABLE `Bk_Postavka`
  MODIFY `id_Bk_postavka` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Bk_Proizvodstvo`
--
ALTER TABLE `Bk_Proizvodstvo`
  MODIFY `id_Bk_proizvodstva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Bk_Zacreplenie`
--
ALTER TABLE `Bk_Zacreplenie`
  MODIFY `id_Bk_zacrep` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Bk_Zaselenie_v_kletky`
--
ALTER TABLE `Bk_Zaselenie_v_kletky`
  MODIFY `id_Bk_zaselenie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Bolezni`
--
ALTER TABLE `Bolezni`
  MODIFY `ID_Bolezni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Doljnoste`
--
ALTER TABLE `Doljnoste`
  MODIFY `ID_Doljnost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Doljnostnoy_dostup`
--
ALTER TABLE `Doljnostnoy_dostup`
  MODIFY `ID_Dostup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Jivotnoe`
--
ALTER TABLE `Jivotnoe`
  MODIFY `ID_Jivotnoe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `Kletka`
--
ALTER TABLE `Kletka`
  MODIFY `ID_Kletki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Klin_Zone`
--
ALTER TABLE `Klin_Zone`
  MODIFY `ID_Klim_zone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Korm`
--
ALTER TABLE `Korm`
  MODIFY `ID_Korm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Lechenie`
--
ALTER TABLE `Lechenie`
  MODIFY `ID_Lechenie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Log_Doljnost`
--
ALTER TABLE `Log_Doljnost`
  MODIFY `id_Log_Doljnost` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Log_Jivotnoe`
--
ALTER TABLE `Log_Jivotnoe`
  MODIFY `ID_Log_Jivotnoe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Log_Medosmotr`
--
ALTER TABLE `Log_Medosmotr`
  MODIFY `id_Log_Medosmotr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Log_Obmen_s_zoo`
--
ALTER TABLE `Log_Obmen_s_zoo`
  MODIFY `id_Log_Obmen_s_zoo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Log_Postavka`
--
ALTER TABLE `Log_Postavka`
  MODIFY `id_Log_Postavka` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Log_Proizvodstvo`
--
ALTER TABLE `Log_Proizvodstvo`
  MODIFY `id_Log_Proizvodstva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Log_Zacreplenie`
--
ALTER TABLE `Log_Zacreplenie`
  MODIFY `id_Log_Zacreplenie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Log_Zaselenie_v_kletky`
--
ALTER TABLE `Log_Zaselenie_v_kletky`
  MODIFY `id_Log_Zaselenie_v_kletky` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Medosmotr`
--
ALTER TABLE `Medosmotr`
  MODIFY `ID_Med` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `Obmen_s_zoo`
--
ALTER TABLE `Obmen_s_zoo`
  MODIFY `ID_Obmen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Pol`
--
ALTER TABLE `Pol`
  MODIFY `ID_Pol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Postavka`
--
ALTER TABLE `Postavka`
  MODIFY `ID_Postavka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Postavshik`
--
ALTER TABLE `Postavshik`
  MODIFY `ID_Postavshika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Potomstvo`
--
ALTER TABLE `Potomstvo`
  MODIFY `ID_Potomstvo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Privivki`
--
ALTER TABLE `Privivki`
  MODIFY `ID_Privivki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Proizvodstvo`
--
ALTER TABLE `Proizvodstvo`
  MODIFY `ID_Proizvodstva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Prostavlenie_privivok`
--
ALTER TABLE `Prostavlenie_privivok`
  MODIFY `ID_Prostavlenie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Racion`
--
ALTER TABLE `Racion`
  MODIFY `ID_Racion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Seson`
--
ALTER TABLE `Seson`
  MODIFY `ID_Seson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Sotrudnik`
--
ALTER TABLE `Sotrudnik`
  MODIFY `ID_Sotrudnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Status_z`
--
ALTER TABLE `Status_z`
  MODIFY `ID_Status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Type_korm`
--
ALTER TABLE `Type_korm`
  MODIFY `ID_Type_korm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Type_kormlenia`
--
ALTER TABLE `Type_kormlenia`
  MODIFY `ID_Type_kormlenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Vid_Jiv`
--
ALTER TABLE `Vid_Jiv`
  MODIFY `ID_Vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Yslovie_soderjania`
--
ALTER TABLE `Yslovie_soderjania`
  MODIFY `ID_Yslovie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Zacreplenie`
--
ALTER TABLE `Zacreplenie`
  MODIFY `ID_Zacrep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Zaselenie_v_kletky`
--
ALTER TABLE `Zaselenie_v_kletky`
  MODIFY `ID_Zaselenie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Zoopark`
--
ALTER TABLE `Zoopark`
  MODIFY `ID_Zoopark` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Bolezni`
--
ALTER TABLE `Bolezni`
  ADD CONSTRAINT `bolezni_ibfk_1` FOREIGN KEY (`ID_Jivotnoe`) REFERENCES `Jivotnoe` (`ID_Jivotnoe`),
  ADD CONSTRAINT `bolezni_ibfk_2` FOREIGN KEY (`ID_Lechenie`) REFERENCES `Lechenie` (`ID_Lechenie`);

--
-- Ограничения внешнего ключа таблицы `Doljnoste`
--
ALTER TABLE `Doljnoste`
  ADD CONSTRAINT `doljnoste_ibfk_2` FOREIGN KEY (`ID_Dostupa`) REFERENCES `Doljnostnoy_dostup` (`ID_Dostup`);

--
-- Ограничения внешнего ключа таблицы `Jivotnoe`
--
ALTER TABLE `Jivotnoe`
  ADD CONSTRAINT `jivotnoe_ibfk_2` FOREIGN KEY (`ID_Pol`) REFERENCES `Pol` (`ID_Pol`),
  ADD CONSTRAINT `jivotnoe_ibfk_3` FOREIGN KEY (`ID_Vid`) REFERENCES `Vid_Jiv` (`ID_Vid`);

--
-- Ограничения внешнего ключа таблицы `Korm`
--
ALTER TABLE `Korm`
  ADD CONSTRAINT `korm_ibfk_1` FOREIGN KEY (`ID_Type_korm`) REFERENCES `Type_korm` (`ID_Type_korm`);

--
-- Ограничения внешнего ключа таблицы `Medosmotr`
--
ALTER TABLE `Medosmotr`
  ADD CONSTRAINT `medosmotr_ibfk_1` FOREIGN KEY (`ID_Sotrudnika`) REFERENCES `Sotrudnik` (`ID_Sotrudnik`),
  ADD CONSTRAINT `medosmotr_ibfk_2` FOREIGN KEY (`ID_Status_z`) REFERENCES `Status_z` (`ID_Status`),
  ADD CONSTRAINT `medosmotr_ibfk_3` FOREIGN KEY (`ID_Jivotnoe`) REFERENCES `Jivotnoe` (`ID_Jivotnoe`);

--
-- Ограничения внешнего ключа таблицы `Obmen_s_zoo`
--
ALTER TABLE `Obmen_s_zoo`
  ADD CONSTRAINT `obmen_s_zoo_ibfk_1` FOREIGN KEY (`ID_Jivotnoe`) REFERENCES `Jivotnoe` (`ID_Jivotnoe`),
  ADD CONSTRAINT `obmen_s_zoo_ibfk_2` FOREIGN KEY (`ID_Zoopark`) REFERENCES `Zoopark` (`ID_Zoopark`);

--
-- Ограничения внешнего ключа таблицы `Postavka`
--
ALTER TABLE `Postavka`
  ADD CONSTRAINT `postavka_ibfk_1` FOREIGN KEY (`ID_Postavshika`) REFERENCES `Postavshik` (`ID_Postavshika`);

--
-- Ограничения внешнего ключа таблицы `Potomstvo`
--
ALTER TABLE `Potomstvo`
  ADD CONSTRAINT `potomstvo_ibfk_1` FOREIGN KEY (`ID_Jivotnoe`) REFERENCES `Jivotnoe` (`ID_Jivotnoe`),
  ADD CONSTRAINT `potomstvo_ibfk_2` FOREIGN KEY (`ID_Vid`) REFERENCES `Vid_Jiv` (`ID_Vid`);

--
-- Ограничения внешнего ключа таблицы `Proizvodstvo`
--
ALTER TABLE `Proizvodstvo`
  ADD CONSTRAINT `proizvodstvo_ibfk_1` FOREIGN KEY (`ID_Korm`) REFERENCES `Korm` (`ID_Korm`);

--
-- Ограничения внешнего ключа таблицы `Prostavlenie_privivok`
--
ALTER TABLE `Prostavlenie_privivok`
  ADD CONSTRAINT `prostavlenie_privivok_ibfk_1` FOREIGN KEY (`ID_Privivki`) REFERENCES `Privivki` (`ID_Privivki`),
  ADD CONSTRAINT `prostavlenie_privivok_ibfk_2` FOREIGN KEY (`ID_Jivotnoe`) REFERENCES `Jivotnoe` (`ID_Jivotnoe`);

--
-- Ограничения внешнего ключа таблицы `Racion`
--
ALTER TABLE `Racion`
  ADD CONSTRAINT `racion_ibfk_1` FOREIGN KEY (`ID_Jivotnoe`) REFERENCES `Jivotnoe` (`ID_Jivotnoe`),
  ADD CONSTRAINT `racion_ibfk_2` FOREIGN KEY (`ID_Sezon`) REFERENCES `Seson` (`ID_Seson`);

--
-- Ограничения внешнего ключа таблицы `Seson`
--
ALTER TABLE `Seson`
  ADD CONSTRAINT `seson_ibfk_1` FOREIGN KEY (`ID_Vid`) REFERENCES `Vid_Jiv` (`ID_Vid`);

--
-- Ограничения внешнего ключа таблицы `Sotrudnik`
--
ALTER TABLE `Sotrudnik`
  ADD CONSTRAINT `sotrudnik_ibfk_1` FOREIGN KEY (`ID_Doljnost`) REFERENCES `Doljnoste` (`ID_Doljnost`),
  ADD CONSTRAINT `sotrudnik_ibfk_2` FOREIGN KEY (`ID_Pol`) REFERENCES `Pol` (`ID_Pol`);

--
-- Ограничения внешнего ключа таблицы `Status_z`
--
ALTER TABLE `Status_z`
  ADD CONSTRAINT `status_z_ibfk_1` FOREIGN KEY (`ID_Jivotnoe`) REFERENCES `Jivotnoe` (`ID_Jivotnoe`);

--
-- Ограничения внешнего ключа таблицы `Type_korm`
--
ALTER TABLE `Type_korm`
  ADD CONSTRAINT `type_korm_ibfk_2` FOREIGN KEY (`ID_Racion`) REFERENCES `Racion` (`ID_Racion`);

--
-- Ограничения внешнего ключа таблицы `Type_kormlenia`
--
ALTER TABLE `Type_kormlenia`
  ADD CONSTRAINT `type_kormlenia_ibfk_1` FOREIGN KEY (`ID_Type_korm`) REFERENCES `Type_korm` (`ID_Type_korm`),
  ADD CONSTRAINT `type_kormlenia_ibfk_2` FOREIGN KEY (`ID_Jivotnoe`) REFERENCES `Jivotnoe` (`ID_Jivotnoe`);

--
-- Ограничения внешнего ключа таблицы `Vid_Jiv`
--
ALTER TABLE `Vid_Jiv`
  ADD CONSTRAINT `vid_jiv_ibfk_2` FOREIGN KEY (`ID_Klim_zone`) REFERENCES `Klin_Zone` (`ID_Klim_zone`);

--
-- Ограничения внешнего ключа таблицы `Yslovie_soderjania`
--
ALTER TABLE `Yslovie_soderjania`
  ADD CONSTRAINT `yslovie_soderjania_ibfk_1` FOREIGN KEY (`ID_Vid`) REFERENCES `Vid_Jiv` (`ID_Vid`),
  ADD CONSTRAINT `yslovie_soderjania_ibfk_2` FOREIGN KEY (`ID_Jivotnoe`) REFERENCES `Jivotnoe` (`ID_Jivotnoe`);

--
-- Ограничения внешнего ключа таблицы `Zacreplenie`
--
ALTER TABLE `Zacreplenie`
  ADD CONSTRAINT `zacreplenie_ibfk_1` FOREIGN KEY (`ID_Jivotnoe`) REFERENCES `Jivotnoe` (`ID_Jivotnoe`),
  ADD CONSTRAINT `zacreplenie_ibfk_2` FOREIGN KEY (`ID_Sotrudnik`) REFERENCES `Sotrudnik` (`ID_Sotrudnik`),
  ADD CONSTRAINT `zacreplenie_ibfk_3` FOREIGN KEY (`ID_Vid`) REFERENCES `Vid_Jiv` (`ID_Vid`);

--
-- Ограничения внешнего ключа таблицы `Zaselenie_v_kletky`
--
ALTER TABLE `Zaselenie_v_kletky`
  ADD CONSTRAINT `zaselenie_v_kletky_ibfk_1` FOREIGN KEY (`ID_Jivotnoe`) REFERENCES `Jivotnoe` (`ID_Jivotnoe`),
  ADD CONSTRAINT `zaselenie_v_kletky_ibfk_2` FOREIGN KEY (`ID_Kletki`) REFERENCES `Kletka` (`ID_Kletki`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
