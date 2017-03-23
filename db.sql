/* mysql -uroot --default-character-set=utf8 quiz */

DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `quiz`;
DROP TABLE IF EXISTS `question`;
DROP TABLE IF EXISTS `answer`;
DROP TABLE IF EXISTS `right`;
DROP TABLE IF EXISTS `wrong`;

CREATE TABLE `users`    ( user_id     int(4) AUTO_INCREMENT, name varchar(64), password  varchar(40), stats varchar(256), PRIMARY KEY (`user_id`)) engine myisam DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE TABLE `quiz`     ( quiz_id     int(4), name varchar(32), questions varchar(64) ) engine myisam DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE TABLE `question` ( question_id int(4), question_text text    ) engine myisam DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE TABLE `answer`   ( answer_id   int(4), answer_text text      ) engine myisam DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE TABLE `right`    ( question_id int(4), answer_id int(4)      ) engine myisam DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE TABLE `wrong`    ( question_id int(4), answer_id int(4)      ) engine myisam DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO `users`     ( name, password, stats )  VALUES ( "Kent","5701c6993265d3630e540840dbdfced62423d1b5","[]");
INSERT INTO `users`     ( name, password, stats )  VALUES ( "Knut","5701c6993265d3630e540840dbdfced62423d1b5","[]");

INSERT INTO `quiz`      ( quiz_id, name, questions ) VALUES ( 1,"MiniWebbQuiz","[1,3,4,6,9]");
INSERT INTO `quiz`      ( quiz_id, name, questions ) VALUES ( 2,"DramatisktQuiz","[100,101,102,103]");

INSERT INTO `quiz`      ( quiz_id, name, questions ) VALUES ( 3,"MegaWebbQuiz","[1,2,3,4,5,6,7,8,9]");
INSERT INTO `quiz`      ( quiz_id, name, questions ) VALUES ( 4,"JavascriptQuiz","[3,7,8,10,11,12]");
INSERT INTO `quiz`      ( quiz_id, name, questions ) VALUES ( 5,"PythonQuiz","[4,6,13,14,15,16]");
INSERT INTO `quiz`      ( quiz_id, name, questions ) VALUES ( 6,"SQLQuiz","[1,9,17,18,19,20]");
INSERT INTO `quiz`      ( quiz_id, name, questions ) VALUES ( 7,"MegaDramatisktQuiz","[100,101,102,103,21,22,23,24,25,26,27]");

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 1,"Vilket språk är detta?<br><i>SELECT * FROM users LIMIT 8;</i>");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 1,16);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 1,3);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 1,9);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 1,10);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 2,"Vilket språk är detta?<br><i>cout << 'Hello' << endl;</i>");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 2,10);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 2,9);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 2,3);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 2,18);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 3,"Vilket språk är detta?<br><i>document.getElementById('input').value</i>");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 3,9);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 3,10);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 3,16);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 3,18);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 4,"Vilket språk är detta?<br><i>FOR x IN listofx:<br>&nbsp;&nbsp;&nbsp;&nbsp;PRINT x</i>");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 4,3);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 4,9);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 4,11);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 4,16);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 5,"Vilket språk är detta?<br><i>echo 'Hello';</i>");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 5,18);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 5,3);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 5,9);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 5,10);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 5,16);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 6,"Vad är Flask?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 6,8);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 6,9);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 6,12);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 6,16);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 7,"Vad är Angular?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 7,8);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 7,13);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 7,14);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 8,"Vad används för AJAX?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 8,4);
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 8,9);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 8,15);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 8,16);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 8,17);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 9,"Vilka är relationsdatabaser?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 9,15);
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 9,20);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 9,17);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 10,"vilken funktion av följande lägger till eller tar bort element i en Array?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 10,22);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 10,21);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 10,23);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 11,"vilket är rätt syntax för att ändra innehållet på följande HTML tagg<br>
< p id='demo'>This is a demonstration.< /p >");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 11,25);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 11,24);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 11,26);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 11,27);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 12,"Hur startas en For Loop?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 12,28);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 12,29);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 12,30);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 12,31);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 13,"Vilken av följande funktioner konverterar ett objekt till en string i Python?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 13,35);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 13,32);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 13,33);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 13,34);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 14,"Vilket programmeringsspråk är väldigt likt Python?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 14,18);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 14,9);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 14,10);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 14,19);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 14,16);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 15,"Vad betyder OOP?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 15,37);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 15,36);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 15,38);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 15,39);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 16,"Vilken funktion returnerar ett slumpmässigt objekt från en tuple, list eller string?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 16,42);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 16,40);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 16,41);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 16,43);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 17,"Kan en använda flera joins i ett SQL kommando?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 17,44);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 17,45);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 17,46);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 18,"Vad betyder SQL?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 18,47);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 18,48);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 18,49);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 19,"Vilket kommando använder man för att hämta data från databasen?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 19,53);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 19,50);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 19,51);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 19,52);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 20,"Vilket kommando använder en för att lägga till ny data i databasen?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 20,56);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 20,54);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 20,55);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 20,57);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 21,"Vilken person får huvudpersonen att börja handla i ett drama?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 21,58);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 21,59);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 21,60);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 21,62);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 22,"Vad kommer först i ett dramatiskt berättande?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 22,61);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 22,62);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 22,46);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 22,59);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 23,"Hur är den dramatiska triangeln uppbyggd?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 23,63);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 23,64);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 23,65);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 23,46);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 24,"Vad innebär omvänd tid?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 24,66);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 24,67);
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 24,68);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 24,69);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 25,"Kan tiden vara irreversibel i ett dramatiskt berättande?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 25,44);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 25,45);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 25,46);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 26,"Varför ska man undvika för beskrivande miljöer i sitt berättande?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 26,70);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 26,71);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 26,72);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 26,46);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 27,"Vilken är den andra scenen en menar när en talar om den dubbla scenen?");
INSERT INTO `right`     ( question_id, answer_id )   VALUES ( 27,73);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 27,74);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 27,75);
INSERT INTO `wrong`     ( question_id, answer_id )   VALUES ( 27,46);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 100,"Vilket är nödvändigt och ofrånkomligt i allt dramatiskt berättande?");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 100,"Intrig");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 101,"Brott");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 102,"Dödsfall");
INSERT INTO `right`     ( question_id, answer_id )        VALUES ( 100,100);
INSERT INTO `wrong`     ( question_id, answer_id )        VALUES ( 100,101);
INSERT INTO `wrong`     ( question_id, answer_id )        VALUES ( 100,102);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 101,"Vad är intrigens uppgift?");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 104,"Driva handligen");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 105,"Driva huvudpersonen i fördärv");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 106,"Driva antagonisten i fördärv");
INSERT INTO `right`     ( question_id, answer_id )        VALUES ( 101,104);
INSERT INTO `wrong`     ( question_id, answer_id )        VALUES ( 101,105);
INSERT INTO `wrong`     ( question_id, answer_id )        VALUES ( 101,106);
INSERT INTO `wrong`     ( question_id, answer_id )        VALUES ( 101,46);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 102,"Vad kan sägas om spänningen i ett perfekt uppbyggt drama?");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 108,"Ständigt stigande");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 109,"Ständigt fallande");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 110,"Den är konstant");
INSERT INTO `right`     ( question_id, answer_id )        VALUES ( 102,108);
INSERT INTO `wrong`     ( question_id, answer_id )        VALUES ( 102,109);
INSERT INTO `wrong`     ( question_id, answer_id )        VALUES ( 102,110);
INSERT INTO `wrong`     ( question_id, answer_id )        VALUES ( 102,46);

INSERT INTO `question`  ( question_id, question_text  )   VALUES ( 103,"Om huvudpersonen dör, på vilket sätt måste det ske enligt Wells Roots dramamodell?");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 112,"Med värdighet");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 113,"Plågsamt");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 114,"Genom mord");
INSERT INTO `right`     ( question_id, answer_id )        VALUES ( 103,112);
INSERT INTO `wrong`     ( question_id, answer_id )        VALUES ( 103,113);
INSERT INTO `wrong`     ( question_id, answer_id )        VALUES ( 103,114);
INSERT INTO `wrong`     ( question_id, answer_id )        VALUES ( 103,46);


INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 1,"Angular");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 2,"Flask");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 3,"Python");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 4,"XMLHttpRequest");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 5,"Raspberry Pi");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 6,"UNIX");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 7,"Windows");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 8,"Ramverk");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES ( 9,"Javascript");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (10,"C++");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (11,"Express");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (12,"TCP/IP");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (13,"HTML");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (14,"CSS");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (15,"MySQL");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (16,"SQL");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (17,"MongoDB");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (18,"PHP");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (19,"Java");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (20,"PostgreSQL");

INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (21,"sort()");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (22,"splice()");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (23,"split()");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (24,"document.getElement('p').innerHTML = 'Hello World!';");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (25,"document.getElementById('demo').innerHTML = 'Hello World!';");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (26,"document.getElementByName('p').innerHTML = 'Hello World!';");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (27,"demo.innerHTML = 'Hello World!';");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (28,"for (i = 0; i <= 5; i++)");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (29,"for (i = 0; i <= 5)");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (30,"for i = 1 to 5");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (31,"for (i <= 5; i++)");

INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (32,"int(x)");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (33,"string(x)");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (34,"float(x)");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (35,"str(x)");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (36,"Object Oriented Principles");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (37,"Object Oriented Programming");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (38,"Out of Process");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (39,"Out of Program");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (40,"choice(random)");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (41,"randrange ([start,] stop [,step])");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (42,"random()");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (43,"seed([x])");

INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (44,"Ja");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (45,"Nej");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (46,"Går ej att svara på");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (47,"Strong Question Language");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (48,"Structured Query Language");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (49,"Structured Question Language");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (50,"GET");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (51,"EXTRACT");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (52,"OPEN");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (53,"SELECT");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (54,"ADD NEW");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (55,"INSERT NEW");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (56,"INSERT INTO");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (57,"ADD RECORD");

INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (58,"Antagonisten");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (59,"Protagonisten");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (60,"Räddaren");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (61,"Handlingen");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (62,"Karaktären");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (63,"Räddare, förföljare, offer");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (64,"Huvudperson, Hjälte, Bi-roll");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (65,"Ond, god, likgiltig");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (66,"Verkan på grund av orsak");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (67,"Orsak till följd av verkan");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (68,"Rörelse bakåt");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (69,"Rörelse framåt");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (70,"Desorientera publiken");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (71,"För lång historia");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (72,"Sidospår");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (73,"Åhörarens fantasi");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (74,"Salongen");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (75,"En extra scen");
INSERT INTO `answer`    ( answer_id,   answer_text    )   VALUES (76,"Stol");
