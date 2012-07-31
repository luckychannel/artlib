-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июл 31 2012 г., 14:15
-- Версия сервера: 5.1.63
-- Версия PHP: 5.3.3-7+squeeze13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `artlib`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Book`
--

CREATE TABLE IF NOT EXISTS `Book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `Book`
--

INSERT INTO `Book` (`id`, `title`, `description`) VALUES
(1, 'Люди льда. Сага', 'Сага о роде Людей Льда, созданная современной норвежской писательницей Маргит Сандему, - один из самых читаемых в Европе сериалов. Здесь вы найдете любовь и страсть, убийства и погони, увлекательный сюжет и мастерски выписанную интригу. Вместе с ...'),
(2, 'Largo', 'Прижизненное издание. Париж, 1930 год. Издание В.П.Сияльского. Издательская обложка. Сохранность хорошая. страницы издания не разрезаны. Представленный в настоящем издании роман "Largo" замечательного русского писателя-реалиста, ...'),
(3, 'Where Angels Fear to Tread', 'E.M.Forster''s forst novel is a witty comedy of manners that is tinged with tragedy. It tells the story of Lilia Herriton, who proves to be an embarrassment to her late husband''s family as, in the small Tuscan town of Monteriano, she begins a relationship ...'),
(4, 'Daniel Deronda', '"What can I do?.. I must get up in the morning and do what everyone else does. It is all like a dance set beforehand. I seem to see all that can be - and I am tired and sick of it. And the world is all confusion to me". George Eliot''s last, most ...'),
(5, 'New Moon', 'I stuck my finger under the edge of the paper and jerked it under the tape. "Shoot", I muttered when the paper sliced my finger. A single drop of blood oozed from the tiny cut. It all happened very quickly then. "No!" Edward roared… Dazed and ...'),
(6, 'Ржавая вода', 'Со смертью отца жизнь Ани кардинально меняется: из беззаботной "золотой детки", живущей в Лондоне, она превращается в девушку без гроша за душой в Москве, где ей, чтобы выжить, предстоит обрасти характером. Аня устраивается на работу к ...'),
(7, 'Animal Farm', '"It is the history of a revolution that went wrong-and of the excellent excuses that were forthcoming at every step for the perversion of the original doctrine", wrote George Orwell for the first edition of "Animal Farm" in 1945. His simple and tragic ...'),
(8, 'Short Second Life Bree Tanner', 'I turned off my brain. It was time to hunt. I took a deep breath, drawing in the scent of the blood inside the humans below. They weren''t the only humans around, but they were the closest. Who you were going to hunt was the kind of decision you had to ...'),
(9, 'The Queen and I', 'The Monarchy Has Been Dismantled. When a Republican party wins the General Election, their first act in power is to strip the royal family of their assets and titles and send them to live on a housing estate in the Midlands. Exchanging Buckingham Palace ...'),
(10, 'Illusions: The Adventures of a Reluctant Messiah', 'The book "Illusions" is about an itinerant flier (ostensibly Richard Bach himself at an earlier stage in his life) who flies passengers around the skies above Midwest corn fields in an antique bi-plane. He is unexpectedly joined on this lonely ...'),
(11, 'Confidence-Man and Billy Budd, Sailor', '''Life is a pic-nic en costume; one must take a part, assume a character, stand ready in a sensible way to play the fool''. In "The Confidence-Man", Melville''s unnerving and hallucinatory satire on the American dream, a slippery trickster and master of ...'),
(12, 'Исчадие рая', 'Череда страшных убийств - безжалостных, коварных, тщательно спланированных и требующих немалого мастерства - потрясает узкий мирок элитарного общества, давно отгородившегося от жизни неприступным забором. В жизни этих людей было все, что давало ...'),
(13, 'Грязные танцы', 'Анна и Наташа, две отвязные девчонки и закадычные подружки, живут в маленьком английском городке. Они снимают дешевую квартиру и вместе работают в обувном магазине. Каждый субботний вечер девушки отправляются в ночной клуб на поиски приключений...'),
(14, 'Соло', 'Росс Монаган, преуспевающий делец и донжуан, давно пресытился удовольствиями. Он не верил в любовь с первого взгляда до тех пор, пока случайная встреча с простой художницей Тессой Дювалль не перевернула всю его жизнь. Однако завоевать сердце избранницы ...'),
(15, 'Герой нашего времени', 'Мирек пять дней в неделю сидит в ненавистном офисе, а вечер пятницы и суббота - его дни. Он оттягивается, и оттягивается по-крупному... Роман молодого польского прозаика - это взрыв, литературный эксперимент, принесший писателю известность и ...'),
(16, 'Иметь банкира. Столичная Love Story', 'Что сейчас модно делать? Завтракать в ресторанах Аркадия Новикова. (Кто знает, вдруг повезет и рядом окажется симпатичный миллионер!) Одеваться в бутиках в Третьяковском проезде. (Может быть, другой миллионер захочет оплатить вашу покупку!) ...'),
(17, 'Хохот в пустоте', 'Пронзительная история любви. Путешествие в лабиринте души, где инстинкт продолжения жизни то борется, то сливается с эйфорическим влечением к пороку. Рассказывая о себе, герои рассказывают о каждом из нас, вскрывая сокровенное, заставляя почувст ...'),
(18, 'Русское варенье и другое', 'В сборнике впервые публикуются пьесы "Русское варенье", "Семеро святых из деревни Брюхо" и "Мой внук Вениамин", написанные Людмилой Улицкой в период с 1988 по 2003 год. ...'),
(19, 'Вечера на кладбище - Оригинальные повести из рассказов могильщика', 'Прижизненное издание. Редкость. Одна из первых книг ужасов в России. Москва, 1837 год. Университетская типография. Владельческий переплет. Золотое тиснение на корешке. Ляссе. Сохранность хорошая. В книгу вошли 1 и 2 части. Изда ...'),
(20, 'Солнечная сторона', 'Герои рассказов и повестей Алексея Емельянова - наши современники. Это, как правило, сильные, мужественные люди, утверждающие идеалы нашего общества. Хорошо зная заводскую среду, автор глубоко и проникновенно раскрывает воздействие рабочего коллектива на ...'),
(21, 'Легенда об Уленшпигеле и Ламме Гудзаке', 'Ленинград, 1929 год. Издание "Красной газеты". Издательский переплет. Сохранность хорошая. "Легенда о героических, забавных и славных приключениях Уленшпигеля и Ламме Гудзаке" бельгийского писателя Шарля де Костера повествует о ...'),
(22, 'Заря Колхиды', 'Константин Лордкипанидзе - виднейший грузинский прозаик, автор многих повестей, рассказов и романа "Заря Колхиды", неоднократно издававшегося на родном языке и в русском переводе. Роман посвящен бурным годам коллективизации и победе новых, ...'),
(23, 'Годы нашей жизни', 'Сборник очерков русского советского писателя и журналиста Бориса Абрамовича Галина (1904-1983). ...'),
(24, 'Манхэттен по Фрейду', 'В 1909 году Зигмунд Фрейд и его ученик Карл Юнг впервые посетили Нью-Йорк. "А что было бы, если бы Зигмунду Фрейду предложили расследовать убийство?" - предположил автор. Главный строитель Манхеттена найден мертвым. Под подозрением - его дочь, страд ...'),
(25, 'Девочка и пустыня.Абука развода от Я до ОН', 'Развод – странная и печальная тема. О нём страшно думать, пока семья крепка, и очень неприятно вспоминать, когда всё неожиданно рушится. Выбираешься из-под обломков, и хочется бежать, не оглядываясь, будто и не было ничего, только новая жизнь впереди ...'),
(26, 'mASIAfucker', 'Дорога имеет смысл, если это дорога домой. Все на свете имеет смысл только, если это помогает тебе оказаться там, где ты должен оказаться. Дорога домой сложна. Двигаться по прямой – всегда проще. Но как быть, если прямая дорога увозит тебя туда, куда ты ...');
