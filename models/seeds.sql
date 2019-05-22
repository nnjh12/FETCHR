INSERT INTO users (name, zipcode)
VALUES ("Alec", 19146),
        ("Ben Franklin", 19103),
        ("Will Smith", 19119);

INSERT INTO surveys (user_id, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13)
VALUES (1, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1),
        (2, 1, 2, 3, 1, 2, 2, 2, 2, 3, 1, 2, 3, 1),
        (3, 1, 2, 3, 1, 2, 2, 2, 2, 3, 1, 2, 3, 1);  

INSERT INTO breed_matches (user_id, survey_id)
VALUES ( 1, 1),
        (1, 2),
        (1, 3), 
        (2, 4),
        (2, 5);       


INSERT INTO questions (question)
VALUES ("What type of home do you live in?"),
       ("Do you have a yard?"),
       ("What type of environment do you live in?"),
       ("How many people live in your home?"),
       ("Do you have small children?"),
       ("How active are you?"),
       ("What type of energy level dog are you looking for?"),
       ("What size dog are you looking for?"),
       ("Do you want a dog that will protect your property?"),
       ("How much shedding are you willing to live with?"),
       ("Fill in later 1"),
       ("Fill in later 2"),
       ("Have you owned a dog before?");

INSERT INTO choices (questionId, choice)
VALUES ( 
(SELECT id FROM questions WHERE question = "What type of home do you live in?"),"Apartment"),
((SELECT id FROM questions WHERE question = "What type of home do you live in?"),"Small Home"),
((SELECT id FROM questions WHERE question = "What type of home do you live in?"),"Large Home"),
((SELECT id FROM questions WHERE question = "Do you have a yard?"),"Yes"),
((SELECT id FROM questions WHERE question = "Do you have a yard?"),"No"),
((SELECT id FROM questions WHERE question = "What type of environment do you live in?"),"Urban"),
((SELECT id FROM questions WHERE question = "What type of environment do you live in?"),"Suburb"),
((SELECT id FROM questions WHERE question = "What type of environment do you live in?"),"Rural"),
((SELECT id FROM questions WHERE question = "How many people live in your home?"),"Myself"),
((SELECT id FROM questions WHERE question = "How many people live in your home?"),"2 - 3"),
((SELECT id FROM questions WHERE question = "How many people live in your home?"),"3 or More"),
((SELECT id FROM questions WHERE question = "Do you have small children?"),"Yes"),
((SELECT id FROM questions WHERE question = "Do you have small children?"),"No"),
((SELECT id FROM questions WHERE question = "Do you have small children?"),"No, but we want to have a baby soon"),
((SELECT id FROM questions WHERE question = "How active are you?"),"Not Very"),
((SELECT id FROM questions WHERE question = "How active are you?"),"Slightly Active"),
((SELECT id FROM questions WHERE question = "How active are you?"),"Moderately Active"),
((SELECT id FROM questions WHERE question = "How active are you?"),"Very Active"),
((SELECT id FROM questions WHERE question = "What type of energy level dog are you looking for?"),"Let's binge watch everything on Netflix"),
((SELECT id FROM questions WHERE question = "What type of energy level dog are you looking for?"),"Let's go for a walk..but just not too far"),
((SELECT id FROM questions WHERE question = "What type of energy level dog are you looking for?"),"What do you mean you're tired? It's only been 5 hours"),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"Small enough to fit in a bag"),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"Not tiny, but still fits in my lap"),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"Too big for my lap, but not too big for a large dog door"),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"I want people to question if it's a bear"),
((SELECT id FROM questions WHERE question = "Do you want a dog that will protect your property?"),"No, I want a cream puff"),
((SELECT id FROM questions WHERE question = "Do you want a dog that will protect your property?"),"I want a bark or two to warn me of people outside"),
((SELECT id FROM questions WHERE question = "Do you want a dog that will protect your property?"),"I want strangers to think twice before trying to enter"),
((SELECT id FROM questions WHERE question = "How much shedding are you willing to live with?"),"As little as possible"),
((SELECT id FROM questions WHERE question = "How much shedding are you willing to live with?"),"I don't mind having to do a quick lint roll before leaving the house"),
((SELECT id FROM questions WHERE question = "How much shedding are you willing to live with?"),"The fluffier the better!"),
((SELECT id FROM questions WHERE question = "Fill in later 1"),"Fill in later"),
((SELECT id FROM questions WHERE question = "Fill in later 2"),"Fill in later"),
((SELECT id FROM questions WHERE question = "Have you owned a dog before?"),"Yes"),
((SELECT id FROM questions WHERE question = "Have you owned a dog before?"),"No");      


-- INSERT INTO breeds (breed_id, breed_name, attribute, score) 
-- VALUES
--     (1, 'affenpinscher','Adapts Well to Apartment Living',5),
--     (1, 'affenpinscher','Good For Novice Owners',4),
--     (1, 'affenpinscher','Sensitivity Level',3),
--     (1, 'affenpinscher','Tolerates Being Alone',1),
--     (1, 'affenpinscher','Affectionate with Family',5),
--     (1, 'affenpinscher','Incredibly Kid Friendly Dogs',1),
--     (1, 'affenpinscher','Dog Friendly',4),
--     (1, 'affenpinscher','Amount Of Shedding',1),
--     (1, 'affenpinscher','Size',1),
--     (1, 'affenpinscher','Easy To Train',2),
--     (1, 'affenpinscher','Energy Level',4),
--     (1, 'affenpinscher','Exercise Needs',3),
--     (2,'afghan hound','Adapts Well to Apartment Living',5),
--     (2,'afghan hound','Good For Novice Owners',3),
--     (2,'afghan hound','Sensitivity Level',5),
--     (2,'afghan hound','Tolerates Being Alone',2),
--     (2,'afghan hound','Affectionate with Family',5),
--     (2,'afghan hound','Incredibly Kid Friendly Dogs',5),
--     (2,'afghan hound','Dog Friendly',4),
--     (2,'afghan hound','Amount Of Shedding',4),
--     (2,'afghan hound','Size',4),
--     (2,'afghan hound','Easy To Train',1),
--     (2,'afghan hound','Energy Level',5),
--     (2,'afghan hound','Exercise Needs',4),
--     (3,'akita','Adapts Well to Apartment Living',2),
--     (3,'akita','Good For Novice Owners',2),
--     (3,'akita','Sensitivity Level',5),
--     (3,'akita','Tolerates Being Alone',1),
--     (3,'akita','Affectionate with Family',5),
--     (3,'akita','Incredibly Kid Friendly Dogs',1),
--     (3,'akita','Dog Friendly',1),
--     (3,'akita','Amount Of Shedding',5),
--     (3,'akita','Size',4),
--     (3,'akita','Easy To Train',2),
--     (3,'akita','Energy Level',4),
--     (3,'akita','Exercise Needs',4),
--     (4,'alaskan malamute','Adapts Well to Apartment Living',1),
--     (4,'alaskan malamute','Good For Novice Owners',1),
--     (4,'alaskan malamute','Sensitivity Level',4),
--     (4,'alaskan malamute','Tolerates Being Alone',1),
--     (4,'alaskan malamute','Affectionate with Family',4),
--     (4,'alaskan malamute','Incredibly Kid Friendly Dogs',3),
--     (4,'alaskan malamute','Dog Friendly',2),
--     (4,'alaskan malamute','Amount Of Shedding',5),
--     (4,'alaskan malamute','Size',4),
--     (4,'alaskan malamute','Easy To Train',4),
--     (4,'alaskan malamute','Energy Level',5),
--     (4,'alaskan malamute','Exercise Needs',5),
--     (5,'american bulldog','Adapts Well to Apartment Living',1),
--     (5,'american bulldog','Good For Novice Owners',1),
--     (5,'american bulldog','Sensitivity Level',4),
--     (5,'american bulldog','Tolerates Being Alone',1),
--     (5,'american bulldog','Affectionate with Family',5),
--     (5,'american bulldog','Incredibly Kid Friendly Dogs',4),
--     (5,'american bulldog','Dog Friendly',2),
--     (5,'american bulldog','Amount Of Shedding',1),
--     (5,'american bulldog','Size',4),
--     (5,'american bulldog','Easy To Train',4),
--     (5,'american bulldog','Energy Level',4),
--     (5,'american eskimo dog','Exercise Needs',4),
--     (6,'american foxhound','Adapts Well to Apartment Living',1),
--     (6,'american foxhound','Good For Novice Owners',2),
--     (6,'american foxhound','Sensitivity Level',2),
--     (6,'american foxhound','Tolerates Being Alone',1),
--     (6,'american foxhound','Affectionate with Family',4),
--     (6,'american foxhound','Incredibly Kid Friendly Dogs',5),
--     (6,'american foxhound','Dog Friendly',5),
--     (6,'american foxhound','Amount Of Shedding',3),
--     (6,'american foxhound','Size',3),
--     (6,'american foxhound','Easy To Train',2),
--     (6,'american foxhound','Energy Level',5),
--     (6,'american foxhound','Exercise Needs',5),
--     (7,'american pit bull terrier','Adapts Well to Apartment Living',3),
--     (7,'american pit bull terrier','Good For Novice Owners',2),
--     (7,'american pit bull terrier','Sensitivity Level',4),
--     (7,'american pit bull terrier','Tolerates Being Alone',1),
--     (7,'american pit bull terrier','Affectionate with Family',5),
--     (7,'american pit bull terrier','Incredibly Kid Friendly Dogs',5),
--     (7,'american pit bull terrier','Dog Friendly',1),
--     (7,'american pit bull terrier','Amount Of Shedding',4),
--     (7,'american pit bull terrier','Size',3),
--     (7,'american pit bull terrier','Easy To Train',4),
--     (7,'american pit bull terrier','Energy Level',4),
--     (7,'american pit bull terrier','Exercise Needs',4),
--     (8,'american staffordshire terrier','Adapts Well to Apartment Living',2),
--     (8,'american staffordshire terrier','Good For Novice Owners',2),
--     (8,'american staffordshire terrier','Sensitivity Level',3),
--     (8,'american staffordshire terrier','Tolerates Being Alone',2),
--     (8,'american staffordshire terrier','Affectionate with Family',4),
--     (8,'american staffordshire terrier','Incredibly Kid Friendly Dogs',4),
--     (8,'american staffordshire terrier','Dog Friendly',2),
--     (8,'american staffordshire terrier','Amount Of Shedding',2),
--     (8,'american staffordshire terrier','Size',3),
--     (8,'american staffordshire terrier','Easy To Train',4),
--     (8,'american staffordshire terrier','Energy Level',3),
--     (8,'american staffordshire terrier','Exercise Needs',3),
--     (9,'australian cattle dog','Adapts Well to Apartment Living',2),
--     (9,'australian cattle dog','Good For Novice Owners',1),
--     (9,'australian cattle dog','Sensitivity Level',4),
--     (9,'australian cattle dog','Tolerates Being Alone',3),
--     (9,'australian cattle dog','Affectionate with Family',5),
--     (9,'australian cattle dog','Incredibly Kid Friendly Dogs',3),
--     (9,'australian cattle dog','Dog Friendly',4),
--     (9,'australian cattle dog','Amount Of Shedding',3),
--     (9,'australian cattle dog','Size',3),
--     (9,'australian cattle dog','Easy To Train',5),
--     (9,'australian cattle dog','Energy Level',5),
--     (9,'australian cattle dog','Exercise Needs',5),
--     (10,'australian kelpie','Adapts Well to Apartment Living',2),
--     (10,'australian kelpie','Good For Novice Owners',2),
--     (10,'australian kelpie','Sensitivity Level',4),
--     (10,'australian kelpie','Tolerates Being Alone',2),
--     (10,'australian kelpie','Affectionate with Family',4),
--     (10,'australian kelpie','Incredibly Kid Friendly Dogs',2),
--     (10,'australian kelpie','Dog Friendly',3),
--     (10,'australian kelpie','Amount Of Shedding',3),
--     (10,'australian kelpie','Size',3),
--     (10,'australian kelpie','Easy To Train',5),
--     (10,'australian kelpie','Energy Level',5),
--     (10,'australian kelpie','Exercise Needs',5),
--     (11,'australian shepherd','Adapts Well to Apartment Living',1),
--     (11,'australian shepherd','Good For Novice Owners',2),
--     (11,'australian shepherd','Sensitivity Level',5),
--     (11,'australian shepherd','Tolerates Being Alone',2),
--     (11,'australian shepherd','Affectionate with Family',5),
--     (11,'australian shepherd','Incredibly Kid Friendly Dogs',4),
--     (11,'australian shepherd','Dog Friendly',5),
--     (11,'australian shepherd','Amount Of Shedding',3),
--     (11,'australian shepherd','Size',3),
--     (11,'australian shepherd','Easy To Train',5),
--     (11,'australian shepherd','Energy Level',5),
--     (11,'australian shepherd','Exercise Needs',5),
--     (12,'australian terrier','Adapts Well to Apartment Living',5),
--     (12,'australian terrier','Good For Novice Owners',3),
--     (12,'australian terrier','Sensitivity Level',2),
--     (12,'australian terrier','Tolerates Being Alone',2),
--     (12,'australian terrier','Affectionate with Family',4),
--     (12,'australian terrier','Incredibly Kid Friendly Dogs',3),
--     (12,'australian terrier','Dog Friendly',2),
--     (12,'australian terrier','Amount Of Shedding',1),
--     (12,'australian terrier','Size',1),
--     (12,'australian terrier','Easy To Train',3),
--     (12,'australian terrier','Energy Level',5),
--     (12,'australian terrier','Exercise Needs',4),
--     (13,'basenji','Adapts Well to Apartment Living',5),
--     (13,'basenji','Good For Novice Owners',4),
--     (13,'basenji','Sensitivity Level',3),
--     (13,'basenji','Tolerates Being Alone',4),
--     (13,'basenji','Affectionate with Family',5),
--     (13,'basenji','Incredibly Kid Friendly Dogs',5),
--     (13,'basenji','Dog Friendly',4),
--     (13,'basenji','Amount Of Shedding',1),
--     (13,'basenji','Size',2),
--     (13,'basenji','Easy To Train',1),
--     (13,'basenji','Energy Level',5),
--     (13,'basenji','Exercise Needs',5),
--     (14,'basset hound','Adapts Well to Apartment Living',5),
--     (14,'basset hound','Good For Novice Owners',4),
--     (14,'basset hound','Sensitivity Level',4),
--     (14,'basset hound','Tolerates Being Alone',3),
--     (14,'basset hound','Affectionate with Family',5),
--     (14,'basset hound','Incredibly Kid Friendly Dogs',5),
--     (14,'basset hound','Dog Friendly',5),
--     (14,'basset hound','Amount Of Shedding',4),
--     (14,'basset hound','Size',2),
--     (14,'basset hound','Easy To Train',2),
--     (14,'basset hound','Energy Level',2),
--     (14,'basset hound','Exercise Needs',2),
--     (15,'beagle','Adapts Well to Apartment Living',4),
--     (15,'beagle','Good For Novice Owners',3),
--     (15,'beagle','Sensitivity Level',4),
--     (15,'beagle','Tolerates Being Alone',1),
--     (15,'beagle','Affectionate with Family',5),
--     (15,'beagle','Incredibly Kid Friendly Dogs',5),
--     (15,'beagle','Dog Friendly',5),
--     (15,'beagle','Amount Of Shedding',3),
--     (15,'beagle','Size',2),
--     (15,'beagle','Easy To Train',1),
--     (15,'beagle','Energy Level',4),
--     (15,'beagle','Exercise Needs',4),
--     (16,'bearded collie','Adapts Well to Apartment Living',3),
--     (16,'bearded collie','Good For Novice Owners',4),
--     (16,'bearded collie','Sensitivity Level',4),
--     (16,'bearded collie','Tolerates Being Alone',2),
--     (16,'bearded collie','Affectionate with Family',5),
--     (16,'bearded collie','Incredibly Kid Friendly Dogs',4),
--     (16,'bearded collie','Dog Friendly',5),
--     (16,'bearded collie','Amount Of Shedding',4),
--     (16,'bearded collie','Size',3),
--     (16,'bearded collie','Easy To Train',5),
--     (16,'bearded collie','Energy Level',4),
--     (16,'bearded collie','Exercise Needs',4),
--     (17,'bernese mountain dog','Adapts Well to Apartment Living',1),
--     (17,'bernese mountain dog','Good For Novice Owners',2),
--     (17,'bernese mountain dog','Sensitivity Level',4),
--     (17,'bernese mountain dog','Tolerates Being Alone',1),
--     (17,'bernese mountain dog','Affectionate with Family',5),
--     (17,'bernese mountain dog','Incredibly Kid Friendly Dogs',5),
--     (17,'bernese mountain dog','Dog Friendly',3),
--     (17,'bernese mountain dog','Amount Of Shedding',5),
--     (17,'bernese mountain dog','Size',5),
--     (17,'bernese mountain dog','Easy To Train',4),
--     (17,'bernese mountain dog','Energy Level',4),
--     (17,'bernese mountain dog','Exercise Needs',3),
--     (18,'bichon frise','Adapts Well to Apartment Living',5),
--     (18,'bichon frise','Good For Novice Owners',5),
--     (18,'bichon frise','Sensitivity Level',5),
--     (18,'bichon frise','Tolerates Being Alone',1),
--     (18,'bichon frise','Affectionate with Family',5),
--     (18,'bichon frise','Incredibly Kid Friendly Dogs',4),
--     (18,'bichon frise','Dog Friendly',4),
--     (18,'bichon frise','Amount Of Shedding',2),
--     (18,'bichon frise','Size',2),
--     (18,'bichon frise','Easy To Train',5),
--     (18,'bichon frise','Energy Level',5),
--     (18,'bichon frise','Exercise Needs',3),
--     (19,'black and tan coonhound','Adapts Well to Apartment Living',1),
--     (19,'black and tan coonhound','Good For Novice Owners',2),
--     (19,'black and tan coonhound','Sensitivity Level',3),
--     (19,'black and tan coonhound','Tolerates Being Alone',2),
--     (19,'black and tan coonhound','Affectionate with Family',5),
--     (19,'black and tan coonhound','Incredibly Kid Friendly Dogs',5),
--     (19,'black and tan coonhound','Dog Friendly',5),
--     (19,'black and tan coonhound','Amount Of Shedding',5),
--     (19,'black and tan coonhound','Size',3),
--     (19,'black and tan coonhound','Easy To Train',2),
--     (19,'black and tan coonhound','Energy Level',5),
--     (19,'black and tan coonhound','Exercise Needs',5),
--     (20,'black mouth cur','Adapts Well to Apartment Living',1),
--     (20,'black mouth cur','Good For Novice Owners',2),
--     (20,'black mouth cur','Sensitivity Level',4),
--     (20,'black mouth cur','Tolerates Being Alone',2),
--     (20,'black mouth cur','Affectionate with Family',5),
--     (20,'black mouth cur','Incredibly Kid Friendly Dogs',5),
--     (20,'black mouth cur','Dog Friendly',3),
--     (20,'black mouth cur','Amount Of Shedding',3),
--     (20,'black mouth cur','Size',4),
--     (20,'black mouth cur','Easy To Train',3);
-- INSERT INTO breeds (breed_id, breed_name, attribute, score) 
-- VALUES
--     (20,'black mouth cur','Energy Level',4),
--     (20,'black mouth cur','Exercise Needs',5),
--     (21,'bloodhound','Adapts Well to Apartment Living',1),
--     (21,'bloodhound','Good For Novice Owners',2),
--     (21,'bloodhound','Sensitivity Level',4),
--     (21,'bloodhound','Tolerates Being Alone',2),
--     (21,'bloodhound','Affectionate with Family',5),
--     (21,'bloodhound','Incredibly Kid Friendly Dogs',5),
--     (21,'bloodhound','Dog Friendly',5),
--     (21,'bloodhound','Amount Of Shedding',4),
--     (21,'bloodhound','Size',4),
--     (21,'bloodhound','Easy To Train',3),
--     (21,'bloodhound','Energy Level',5),
--     (21,'bloodhound','Exercise Needs',5),
--     (22,'bluetick coonhound','Adapts Well to Apartment Living',2),
--     (22,'bluetick coonhound','Good For Novice Owners',2),
--     (22,'bluetick coonhound','Sensitivity Level',5),
--     (22,'bluetick coonhound','Tolerates Being Alone',2),
--     (22,'bluetick coonhound','Affectionate with Family',5),
--     (22,'bluetick coonhound','Incredibly Kid Friendly Dogs',5),
--     (22,'bluetick coonhound','Dog Friendly',3),
--     (22,'bluetick coonhound','Amount Of Shedding',2),
--     (22,'bluetick coonhound','Size',3),
--     (22,'bluetick coonhound','Easy To Train',2),
--     (22,'bluetick coonhound','Energy Level',5),
--     (22,'bluetick coonhound','Exercise Needs',5),
--     (23,'boerboel','Adapts Well to Apartment Living',1),
--     (23,'boerboel','Good For Novice Owners',1),
--     (23,'boerboel','Sensitivity Level',3),
--     (23,'boerboel','Tolerates Being Alone',2),
--     (23,'boerboel','Affectionate with Family',4),
--     (23,'boerboel','Incredibly Kid Friendly Dogs',4),
--     (23,'boerboel','Dog Friendly',2),
--     (23,'boerboel','Amount Of Shedding',3),
--     (23,'boerboel','Size',5),
--     (23,'boerboel','Easy To Train',2),
--     (23,'boerboel','Energy Level',3),
--     (23,'boerboel','Exercise Needs',4),
--     (24,'bolognese','Adapts Well to Apartment Living',5),
--     (24,'bolognese','Good For Novice Owners',3),
--     (24,'bolognese','Sensitivity Level',5),
--     (24,'bolognese','Tolerates Being Alone',2),
--     (24,'bolognese','Affectionate with Family',5),
--     (24,'bolognese','Incredibly Kid Friendly Dogs',5),
--     (24,'bolognese','Dog Friendly',5),
--     (24,'bolognese','Amount Of Shedding',1),
--     (24,'bolognese','Size',1),
--     (24,'bolognese','Easy To Train',5),
--     (24,'bolognese','Energy Level',3),
--     (24,'bolognese','Exercise Needs',4),
--     (25,'border collie','Adapts Well to Apartment Living',2),
--     (25,'border collie','Good For Novice Owners',2),
--     (25,'border collie','Sensitivity Level',5),
--     (25,'border collie','Tolerates Being Alone',1),
--     (25,'border collie','Affectionate with Family',5),
--     (25,'border collie','Incredibly Kid Friendly Dogs',4),
--     (25,'border collie','Dog Friendly',3),
--     (25,'border collie','Amount Of Shedding',3),
--     (25,'border collie','Size',3),
--     (25,'border collie','Easy To Train',5),
--     (25,'border collie','Energy Level',5),
--     (25,'border collie','Exercise Needs',5),
--     (26,'border terrier','Adapts Well to Apartment Living',4),
--     (26,'border terrier','Good For Novice Owners',3),
--     (26,'border terrier','Sensitivity Level',3),
--     (26,'border terrier','Tolerates Being Alone',1),
--     (26,'border terrier','Affectionate with Family',5),
--     (26,'border terrier','Incredibly Kid Friendly Dogs',4),
--     (26,'border terrier','Dog Friendly',2),
--     (26,'border terrier','Amount Of Shedding',3),
--     (26,'border terrier','Size',2),
--     (26,'border terrier','Easy To Train',3),
--     (26,'border terrier','Energy Level',4),
--     (26,'border terrier','Exercise Needs',5),
--     (27,'boston terrier','Adapts Well to Apartment Living',5),
--     (27,'boston terrier','Good For Novice Owners',4),
--     (27,'boston terrier','Sensitivity Level',5),
--     (27,'boston terrier','Tolerates Being Alone',3),
--     (27,'boston terrier','Affectionate with Family',4),
--     (27,'boston terrier','Incredibly Kid Friendly Dogs',5),
--     (27,'boston terrier','Dog Friendly',5),
--     (27,'boston terrier','Amount Of Shedding',2),
--     (27,'boston terrier','Size',2),
--     (27,'boston terrier','Easy To Train',4),
--     (27,'boston terrier','Energy Level',4),
--     (27,'boston terrier','Exercise Needs',4),
--     (28,'boxer','Adapts Well to Apartment Living',4),
--     (28,'boxer','Good For Novice Owners',3),
--     (28,'boxer','Sensitivity Level',4),
--     (28,'boxer','Tolerates Being Alone',1),
--     (28,'boxer','Affectionate with Family',5),
--     (28,'boxer','Incredibly Kid Friendly Dogs',4),
--     (28,'boxer','Dog Friendly',3),
--     (28,'boxer','Amount Of Shedding',4),
--     (28,'boxer','Size',3),
--     (28,'boxer','Easy To Train',4),
--     (28,'boxer','Energy Level',5),
--     (28,'boxer','Exercise Needs',5),
--     (29,'boykin spaniel','Adapts Well to Apartment Living',1),
--     (29,'boykin spaniel','Good For Novice Owners',3),
--     (29,'boykin spaniel','Sensitivity Level',4),
--     (29,'boykin spaniel','Tolerates Being Alone',3),
--     (29,'boykin spaniel','Affectionate with Family',5),
--     (29,'boykin spaniel','Incredibly Kid Friendly Dogs',5),
--     (29,'boykin spaniel','Dog Friendly',4),
--     (29,'boykin spaniel','Amount Of Shedding',4),
--     (29,'boykin spaniel','Size',3),
--     (29,'boykin spaniel','Easy To Train',4),
--     (29,'boykin spaniel','Energy Level',5),
--     (29,'boykin spaniel','Exercise Needs',5),
--     (30,'brittany','Adapts Well to Apartment Living',1),
--     (30,'brittany','Good For Novice Owners',3),
--     (30,'brittany','Sensitivity Level',5),
--     (30,'brittany','Tolerates Being Alone',1),
--     (30,'brittany','Affectionate with Family',5),
--     (30,'brittany','Incredibly Kid Friendly Dogs',5),
--     (30,'brittany','Dog Friendly',5),
--     (30,'brittany','Amount Of Shedding',3),
--     (30,'brittany','Size',3),
--     (30,'brittany','Easy To Train',3),
--     (30,'brittany','Energy Level',5),
--     (30,'brittany','Exercise Needs',5),
--     (31,'brussels griffon','Adapts Well to Apartment Living',5),
--     (31,'brussels griffon','Good For Novice Owners',2),
--     (31,'brussels griffon','Sensitivity Level',5),
--     (31,'brussels griffon','Tolerates Being Alone',1),
--     (31,'brussels griffon','Affectionate with Family',5),
--     (31,'brussels griffon','Incredibly Kid Friendly Dogs',4),
--     (31,'brussels griffon','Dog Friendly',4),
--     (31,'brussels griffon','Amount Of Shedding',3),
--     (31,'brussels griffon','Size',1),
--     (31,'brussels griffon','Easy To Train',3),
--     (31,'brussels griffon','Energy Level',5),
--     (31,'brussels griffon','Exercise Needs',4),
--     (32,'bull terrier','Adapts Well to Apartment Living',4),
--     (32,'bull terrier','Good For Novice Owners',4),
--     (32,'bull terrier','Sensitivity Level',5),
--     (32,'bull terrier','Tolerates Being Alone',2),
--     (32,'bull terrier','Affectionate with Family',5),
--     (32,'bull terrier','Incredibly Kid Friendly Dogs',5),
--     (32,'bull terrier','Dog Friendly',4),
--     (32,'bull terrier','Amount Of Shedding',3),
--     (32,'bull terrier','Size',2),
--     (32,'bull terrier','Easy To Train',5),
--     (32,'bull terrier','Energy Level',4),
--     (32,'bull terrier','Exercise Needs',5),
--     (33,'bulldog','Adapts Well to Apartment Living',5),
--     (33,'bulldog','Good For Novice Owners',4),
--     (33,'bulldog','Sensitivity Level',4),
--     (33,'bulldog','Tolerates Being Alone',3),
--     (33,'bulldog','Affectionate with Family',5),
--     (33,'bulldog','Incredibly Kid Friendly Dogs',4),
--     (33,'bulldog','Dog Friendly',2),
--     (33,'bulldog','Amount Of Shedding',3),
--     (33,'bulldog','Size',2),
--     (33,'bulldog','Easy To Train',3),
--     (33,'bulldog','Energy Level',2),
--     (33,'bulldog','Exercise Needs',3),
--     (34,'bullmastiff','Adapts Well to Apartment Living',3),
--     (34,'bullmastiff','Good For Novice Owners',2),
--     (34,'bullmastiff','Sensitivity Level',4),
--     (34,'bullmastiff','Tolerates Being Alone',2),
--     (34,'bullmastiff','Affectionate with Family',5),
--     (34,'bullmastiff','Incredibly Kid Friendly Dogs',5),
--     (34,'bullmastiff','Dog Friendly',4),
--     (34,'bullmastiff','Amount Of Shedding',1),
--     (34,'bullmastiff','Size',5),
--     (34,'bullmastiff','Easy To Train',3),
--     (34,'bullmastiff','Energy Level',2),
--     (34,'bullmastiff','Exercise Needs',3),
--     (35,'cairn terrier','Adapts Well to Apartment Living',5),
--     (35,'cairn terrier','Good For Novice Owners',4),
--     (35,'cairn terrier','Sensitivity Level',3),
--     (35,'cairn terrier','Tolerates Being Alone',1),
--     (35,'cairn terrier','Affectionate with Family',5),
--     (35,'cairn terrier','Incredibly Kid Friendly Dogs',5),
--     (35,'cairn terrier','Dog Friendly',4),
--     (35,'cairn terrier','Amount Of Shedding',3),
--     (35,'cairn terrier','Size',1),
--     (35,'cairn terrier','Easy To Train',2),
--     (35,'cairn terrier','Energy Level',5),
--     (35,'cairn terrier','Exercise Needs',4),
--     (36,'cane corso','Adapts Well to Apartment Living',1),
--     (36,'cane corso','Good For Novice Owners',1),
--     (36,'cane corso','Sensitivity Level',3),
--     (36,'cane corso','Tolerates Being Alone',1),
--     (36,'cane corso','Affectionate with Family',4),
--     (36,'cane corso','Incredibly Kid Friendly Dogs',2),
--     (36,'cane corso','Dog Friendly',3),
--     (36,'cane corso','Amount Of Shedding',3),
--     (36,'cane corso','Size',4),
--     (36,'cane corso','Easy To Train',4),
--     (36,'cane corso','Energy Level',4),
--     (36,'cane corso','Exercise Needs',5),
--     (37,'cardigan welsh corgi','Adapts Well to Apartment Living',4),
--     (37,'cardigan welsh corgi','Good For Novice Owners',4),
--     (37,'cardigan welsh corgi','Sensitivity Level',4),
--     (37,'cardigan welsh corgi','Tolerates Being Alone',3),
--     (37,'cardigan welsh corgi','Affectionate with Family',5),
--     (37,'cardigan welsh corgi','Incredibly Kid Friendly Dogs',4),
--     (37,'cardigan welsh corgi','Dog Friendly',3),
--     (37,'cardigan welsh corgi','Amount Of Shedding',4),
--     (37,'cardigan welsh corgi','Size',2),
--     (37,'cardigan welsh corgi','Easy To Train',4),
--     (37,'cardigan welsh corgi','Energy Level',3),
--     (37,'cardigan welsh corgi','Exercise Needs',3),
--     (38,'catahoula leopard dog','Adapts Well to Apartment Living',1),
--     (38,'catahoula leopard dog','Good For Novice Owners',1),
--     (38,'catahoula leopard dog','Sensitivity Level',2),
--     (38,'catahoula leopard dog','Tolerates Being Alone',2),
--     (38,'catahoula leopard dog','Affectionate with Family',5),
--     (38,'catahoula leopard dog','Incredibly Kid Friendly Dogs',3),
--     (38,'catahoula leopard dog','Dog Friendly',1),
--     (38,'catahoula leopard dog','Amount Of Shedding',3),
--     (38,'catahoula leopard dog','Size',4),
--     (38,'catahoula leopard dog','Easy To Train',2),
--     (38,'catahoula leopard dog','Energy Level',4),
--     (38,'catahoula leopard dog','Exercise Needs',5),
--     (39,'caucasian shepherd dog','Adapts Well to Apartment Living',2),
--     (39,'caucasian shepherd dog','Good For Novice Owners',1),
--     (39,'caucasian shepherd dog','Sensitivity Level',2),
--     (39,'caucasian shepherd dog','Tolerates Being Alone',3),
--     (39,'caucasian shepherd dog','Affectionate with Family',4),
--     (39,'caucasian shepherd dog','Incredibly Kid Friendly Dogs',2),
--     (39,'caucasian shepherd dog','Dog Friendly',2),
--     (39,'caucasian shepherd dog','Amount Of Shedding',4),
--     (39,'caucasian shepherd dog','Size',5),
--     (39,'caucasian shepherd dog','Easy To Train',2),
--     (39,'caucasian shepherd dog','Energy Level',2),
--     (39,'caucasian shepherd dog','Exercise Needs',2),
--     (40,'cavalier king charles spaniel','Adapts Well to Apartment Living',5),
--     (40,'cavalier king charles spaniel','Good For Novice Owners',5),
--     (40,'cavalier king charles spaniel','Sensitivity Level',5),
--     (40,'cavalier king charles spaniel','Tolerates Being Alone',1),
--     (40,'cavalier king charles spaniel','Affectionate with Family',5),
--     (40,'cavalier king charles spaniel','Incredibly Kid Friendly Dogs',5),
--     (40,'cavalier king charles spaniel','Dog Friendly',5),
--     (40,'cavalier king charles spaniel','Amount Of Shedding',3),
--     (40,'cavalier king charles spaniel','Size',2),
--     (40,'cavalier king charles spaniel','Easy To Train',4),
--     (40,'cavalier king charles spaniel','Energy Level',3),
--     (40,'cavalier king charles spaniel','Exercise Needs',4),
--     (41,'chesapeake bay retriever','Adapts Well to Apartment Living',1),
--     (41,'chesapeake bay retriever','Good For Novice Owners',1),
--     (41,'chesapeake bay retriever','Sensitivity Level',3),
--     (41,'chesapeake bay retriever','Tolerates Being Alone',2),
--     (41,'chesapeake bay retriever','Affectionate with Family',5),
--     (41,'chesapeake bay retriever','Incredibly Kid Friendly Dogs',3),
--     (41,'chesapeake bay retriever','Dog Friendly',1),
--     (41,'chesapeake bay retriever','Amount Of Shedding',5);
-- INSERT INTO breeds 
-- (breed_id, breed_name, attribute, score) VALUES
--     (41,'chesapeake bay retriever','Size',3),
--     (41,'chesapeake bay retriever','Easy To Train',3),
--     (41,'chesapeake bay retriever','Energy Level',5),
--     (41,'chesapeake bay retriever','Exercise Needs',5),
--     (42,'chihuahua','Adapts Well to Apartment Living',5),
--     (42,'chihuahua','Good For Novice Owners',4),
--     (42,'chihuahua','Sensitivity Level',5),
--     (42,'chihuahua','Tolerates Being Alone',1),
--     (42,'chihuahua','Affectionate with Family',5),
--     (42,'chihuahua','Incredibly Kid Friendly Dogs',5),
--     (42,'chihuahua','Dog Friendly',2),
--     (42,'chihuahua','Amount Of Shedding',2),
--     (42,'chihuahua','Size',1),
--     (42,'chihuahua','Easy To Train',4),
--     (42,'chihuahua','Energy Level',3),
--     (42,'chihuahua','Exercise Needs',1),
--     (43,'chinese crested','Adapts Well to Apartment Living',5),
--     (43,'chinese crested','Good For Novice Owners',3),
--     (43,'chinese crested','Sensitivity Level',5),
--     (43,'chinese crested','Tolerates Being Alone',1),
--     (43,'chinese crested','Affectionate with Family',4),
--     (43,'chinese crested','Incredibly Kid Friendly Dogs',5),
--     (43,'chinese crested','Dog Friendly',4),
--     (43,'chinese crested','Amount Of Shedding',2),
--     (43,'chinese crested','Size',2),
--     (43,'chinese crested','Easy To Train',4),
--     (43,'chinese crested','Energy Level',2),
--     (43,'chinese crested','Exercise Needs',2),
--     (44,'chinese shar pei','Adapts Well to Apartment Living',4),
--     (44,'chinese shar pei','Good For Novice Owners',2),
--     (44,'chinese shar pei','Sensitivity Level',2),
--     (44,'chinese shar pei','Tolerates Being Alone',4),
--     (44,'chinese shar pei','Affectionate with Family',2),
--     (44,'chinese shar pei','Incredibly Kid Friendly Dogs',2),
--     (44,'chinese shar pei','Dog Friendly',1),
--     (44,'chinese shar pei','Amount Of Shedding',5),
--     (44,'chinese shar pei','Size',3),
--     (44,'chinese shar pei','Easy To Train',3),
--     (44,'chinese shar pei','Energy Level',2),
--     (44,'chinese shar pei','Exercise Needs',3),
--     (45,'chinook','Adapts Well to Apartment Living',4),
--     (45,'chinook','Good For Novice Owners',1),
--     (45,'chinook','Sensitivity Level',5),
--     (45,'chinook','Tolerates Being Alone',1),
--     (45,'chinook','Affectionate with Family',5),
--     (45,'chinook','Incredibly Kid Friendly Dogs',5),
--     (45,'chinook','Dog Friendly',5),
--     (45,'chinook','Amount Of Shedding',5),
--     (45,'chinook','Size',4),
--     (45,'chinook','Easy To Train',4),
--     (45,'chinook','Energy Level',3),
--     (45,'chinook','Exercise Needs',3),
--     (46,'chow chow','Adapts Well to Apartment Living',3),
--     (46,'chow chow','Good For Novice Owners',2),
--     (46,'chow chow','Sensitivity Level',2),
--     (46,'chow chow','Tolerates Being Alone',5),
--     (46,'chow chow','Affectionate with Family',2),
--     (46,'chow chow','Incredibly Kid Friendly Dogs',1),
--     (46,'chow chow','Dog Friendly',1),
--     (46,'chow chow','Amount Of Shedding',1),
--     (46,'chow chow','Size',4),
--     (46,'chow chow','Easy To Train',2),
--     (46,'chow chow','Energy Level',2),
--     (46,'chow chow','Exercise Needs',2),
--     (47,'clumber spaniel','Adapts Well to Apartment Living',5),
--     (47,'clumber spaniel','Good For Novice Owners',5),
--     (47,'clumber spaniel','Sensitivity Level',4),
--     (47,'clumber spaniel','Tolerates Being Alone',2),
--     (47,'clumber spaniel','Affectionate with Family',5),
--     (47,'clumber spaniel','Incredibly Kid Friendly Dogs',3),
--     (47,'clumber spaniel','Dog Friendly',4),
--     (47,'clumber spaniel','Amount Of Shedding',5),
--     (47,'clumber spaniel','Size',3),
--     (47,'clumber spaniel','Easy To Train',4),
--     (47,'clumber spaniel','Energy Level',3),
--     (47,'clumber spaniel','Exercise Needs',2),
--     (48,'cockapoo','Adapts Well to Apartment Living',4),
--     (48,'cockapoo','Good For Novice Owners',5),
--     (48,'cockapoo','Sensitivity Level',4),
--     (48,'cockapoo','Tolerates Being Alone',3),
--     (48,'cockapoo','Affectionate with Family',5),
--     (48,'cockapoo','Incredibly Kid Friendly Dogs',4),
--     (48,'cockapoo','Dog Friendly',5),
--     (48,'cockapoo','Amount Of Shedding',1),
--     (48,'cockapoo','Size',2),
--     (48,'cockapoo','Easy To Train',4),
--     (48,'cockapoo','Energy Level',3),
--     (48,'cockapoo','Exercise Needs',3),
--     (49,'cocker spaniel','Adapts Well to Apartment Living',5),
--     (49,'cocker spaniel','Good For Novice Owners',3),
--     (49,'cocker spaniel','Sensitivity Level',5),
--     (49,'cocker spaniel','Tolerates Being Alone',1),
--     (49,'cocker spaniel','Affectionate with Family',5),
--     (49,'cocker spaniel','Incredibly Kid Friendly Dogs',3),
--     (49,'cocker spaniel','Dog Friendly',4),
--     (49,'cocker spaniel','Amount Of Shedding',3),
--     (49,'cocker spaniel','Size',2),
--     (49,'cocker spaniel','Easy To Train',5),
--     (49,'cocker spaniel','Energy Level',4),
--     (49,'cocker spaniel','Exercise Needs',3),
--     (50,'collie','Adapts Well to Apartment Living',3),
--     (50,'collie','Good For Novice Owners',4),
--     (50,'collie','Sensitivity Level',5),
--     (50,'collie','Tolerates Being Alone',2),
--     (50,'collie','Affectionate with Family',5),
--     (50,'collie','Incredibly Kid Friendly Dogs',5),
--     (50,'collie','Dog Friendly',4),
--     (50,'collie','Amount Of Shedding',5),
--     (50,'collie','Size',3),
--     (50,'collie','Easy To Train',4),
--     (50,'collie','Energy Level',3),
--     (50,'collie','Exercise Needs',3),
--     (51,'curly coated retriever','Adapts Well to Apartment Living',1),
--     (51,'curly coated retriever','Good For Novice Owners',3),
--     (51,'curly coated retriever','Sensitivity Level',3),
--     (51,'curly coated retriever','Tolerates Being Alone',3),
--     (51,'curly coated retriever','Affectionate with Family',5),
--     (51,'curly coated retriever','Incredibly Kid Friendly Dogs',5),
--     (51,'curly coated retriever','Dog Friendly',4),
--     (51,'curly coated retriever','Amount Of Shedding',3),
--     (51,'curly coated retriever','Size',3),
--     (51,'curly coated retriever','Easy To Train',4),
--     (51,'curly coated retriever','Energy Level',5),
--     (51,'curly coated retriever','Exercise Needs',4),
--     (52,'dachshund','Adapts Well to Apartment Living',5),
--     (52,'dachshund','Good For Novice Owners',4),
--     (52,'dachshund','Sensitivity Level',4),
--     (52,'dachshund','Tolerates Being Alone',3),
--     (52,'dachshund','Affectionate with Family',4),
--     (52,'dachshund','Incredibly Kid Friendly Dogs',5),
--     (52,'dachshund','Dog Friendly',3),
--     (52,'dachshund','Amount Of Shedding',3),
--     (52,'dachshund','Size',1),
--     (52,'dachshund','Easy To Train',2),
--     (52,'dachshund','Energy Level',3),
--     (52,'dachshund','Exercise Needs',3),
--     (53,'dalmatian','Adapts Well to Apartment Living',2),
--     (53,'dalmatian','Good For Novice Owners',3),
--     (53,'dalmatian','Sensitivity Level',4),
--     (53,'dalmatian','Tolerates Being Alone',3),
--     (53,'dalmatian','Affectionate with Family',5),
--     (53,'dalmatian','Incredibly Kid Friendly Dogs',4),
--     (53,'dalmatian','Dog Friendly',4),
--     (53,'dalmatian','Amount Of Shedding',5),
--     (53,'dalmatian','Size',3),
--     (53,'dalmatian','Easy To Train',4),
--     (53,'dalmatian','Energy Level',5),
--     (53,'dalmatian','Exercise Needs',5),
--     (54,'doberman pinscher','Adapts Well to Apartment Living',3),
--     (54,'doberman pinscher','Good For Novice Owners',3),
--     (54,'doberman pinscher','Sensitivity Level',5),
--     (54,'doberman pinscher','Tolerates Being Alone',2),
--     (54,'doberman pinscher','Affectionate with Family',5),
--     (54,'doberman pinscher','Incredibly Kid Friendly Dogs',3),
--     (54,'doberman pinscher','Dog Friendly',1),
--     (54,'doberman pinscher','Amount Of Shedding',4),
--     (54,'doberman pinscher','Size',4),
--     (54,'doberman pinscher','Easy To Train',5),
--     (54,'doberman pinscher','Energy Level',3),
--     (54,'doberman pinscher','Exercise Needs',3),
--     (55,'dogo argentino','Adapts Well to Apartment Living',1),
--     (55,'dogo argentino','Good For Novice Owners',1),
--     (55,'dogo argentino','Sensitivity Level',3),
--     (55,'dogo argentino','Tolerates Being Alone',2),
--     (55,'dogo argentino','Affectionate with Family',4),
--     (55,'dogo argentino','Incredibly Kid Friendly Dogs',2),
--     (55,'dogo argentino','Dog Friendly',2),
--     (55,'dogo argentino','Amount Of Shedding',1),
--     (55,'dogo argentino','Size',4),
--     (55,'dogo argentino','Easy To Train',2),
--     (55,'dogo argentino','Energy Level',4),
--     (55,'dogo argentino','Exercise Needs',4),
--     (56,'dogue de bordeaux','Adapts Well to Apartment Living',5),
--     (56,'dogue de bordeaux','Good For Novice Owners',1),
--     (56,'dogue de bordeaux','Sensitivity Level',4),
--     (56,'dogue de bordeaux','Tolerates Being Alone',2),
--     (56,'dogue de bordeaux','Affectionate with Family',5),
--     (56,'dogue de bordeaux','Incredibly Kid Friendly Dogs',5),
--     (56,'dogue de bordeaux','Dog Friendly',1),
--     (56,'dogue de bordeaux','Amount Of Shedding',3),
--     (56,'dogue de bordeaux','Size',4),
--     (56,'dogue de bordeaux','Easy To Train',2),
--     (56,'dogue de bordeaux','Energy Level',2),
--     (56,'dogue de bordeaux','Exercise Needs',5),
--     (57,'dutch shepherd','Adapts Well to Apartment Living',3),
--     (57,'dutch shepherd','Good For Novice Owners',3),
--     (57,'dutch shepherd','Sensitivity Level',3),
--     (57,'dutch shepherd','Tolerates Being Alone',2),
--     (57,'dutch shepherd','Affectionate with Family',4),
--     (57,'dutch shepherd','Incredibly Kid Friendly Dogs',4),
--     (57,'dutch shepherd','Dog Friendly',4),
--     (57,'dutch shepherd','Amount Of Shedding',4),
--     (57,'dutch shepherd','Size',3),
--     (57,'dutch shepherd','Easy To Train',5),
--     (57,'dutch shepherd','Energy Level',4),
--     (57,'dutch shepherd','Exercise Needs',4),
--     (58,'english cocker spaniel','Adapts Well to Apartment Living',5),
--     (58,'english cocker spaniel','Good For Novice Owners',4),
--     (58,'english cocker spaniel','Sensitivity Level',5),
--     (58,'english cocker spaniel','Tolerates Being Alone',1),
--     (58,'english cocker spaniel','Affectionate with Family',5),
--     (58,'english cocker spaniel','Incredibly Kid Friendly Dogs',5),
--     (58,'english cocker spaniel','Dog Friendly',5),
--     (58,'english cocker spaniel','Amount Of Shedding',3),
--     (58,'english cocker spaniel','Size',2),
--     (58,'english cocker spaniel','Easy To Train',4),
--     (58,'english cocker spaniel','Energy Level',5),
--     (58,'english cocker spaniel','Exercise Needs',4),
--     (59,'english foxhound','Adapts Well to Apartment Living',1),
--     (59,'english foxhound','Good For Novice Owners',2),
--     (59,'english foxhound','Sensitivity Level',3),
--     (59,'english foxhound','Tolerates Being Alone',4),
--     (59,'english foxhound','Affectionate with Family',4),
--     (59,'english foxhound','Incredibly Kid Friendly Dogs',4),
--     (59,'english foxhound','Dog Friendly',5),
--     (59,'english foxhound','Amount Of Shedding',3),
--     (59,'english foxhound','Size',3),
--     (59,'english foxhound','Easy To Train',3),
--     (59,'english foxhound','Energy Level',5),
--     (59,'english foxhound','Exercise Needs',5),
--     (60,'english setter','Adapts Well to Apartment Living',1),
--     (60,'english setter','Good For Novice Owners',3),
--     (60,'english setter','Sensitivity Level',4),
--     (60,'english setter','Tolerates Being Alone',1),
--     (60,'english setter','Affectionate with Family',5),
--     (60,'english setter','Incredibly Kid Friendly Dogs',5),
--     (60,'english setter','Dog Friendly',5),
--     (60,'english setter','Amount Of Shedding',3),
--     (60,'english setter','Size',3),
--     (60,'english setter','Easy To Train',3),
--     (60,'english setter','Energy Level',4),
--     (60,'english setter','Exercise Needs',5),
--     (61,'english springer spaniel','Adapts Well to Apartment Living',1),
--     (61,'english springer spaniel','Good For Novice Owners',3),
--     (61,'english springer spaniel','Sensitivity Level',4),
--     (61,'english springer spaniel','Tolerates Being Alone',1),
--     (61,'english springer spaniel','Affectionate with Family',5),
--     (61,'english springer spaniel','Incredibly Kid Friendly Dogs',5),
--     (61,'english springer spaniel','Dog Friendly',5),
--     (61,'english springer spaniel','Amount Of Shedding',3),
--     (61,'english springer spaniel','Size',3),
--     (61,'english springer spaniel','Easy To Train',5),
--     (61,'english springer spaniel','Energy Level',5),
--     (61,'english springer spaniel','Exercise Needs',5),
--     (62,'english toy spaniel','Adapts Well to Apartment Living',4),
--     (62,'english toy spaniel','Good For Novice Owners',4),
--     (62,'english toy spaniel','Sensitivity Level',4),
--     (62,'english toy spaniel','Tolerates Being Alone',1),
--     (62,'english toy spaniel','Affectionate with Family',5),
--     (62,'english toy spaniel','Incredibly Kid Friendly Dogs',1);
-- INSERT INTO breeds (breed_id, breed_name, attribute, score) 
-- VALUES
--     (62,'english toy spaniel','Dog Friendly',4),
--     (62,'english toy spaniel','Amount Of Shedding',5),
--     (62,'english toy spaniel','Size',2),
--     (62,'english toy spaniel','Easy To Train',3),
--     (62,'english toy spaniel','Energy Level',3),
--     (62,'english toy spaniel','Exercise Needs',2),
--     (63,'finnish lapphund','Adapts Well to Apartment Living',4),
--     (63,'finnish lapphund','Good For Novice Owners',4),
--     (63,'finnish lapphund','Sensitivity Level',4),
--     (63,'finnish lapphund','Tolerates Being Alone',2),
--     (63,'finnish lapphund','Affectionate with Family',5),
--     (63,'finnish lapphund','Incredibly Kid Friendly Dogs',5),
--     (63,'finnish lapphund','Dog Friendly',5),
--     (63,'finnish lapphund','Amount Of Shedding',3),
--     (63,'finnish lapphund','Size',3),
--     (63,'finnish lapphund','Easy To Train',5),
--     (63,'finnish lapphund','Energy Level',5),
--     (63,'finnish lapphund','Exercise Needs',4),
--     (64,'finnish spitz','Adapts Well to Apartment Living',3),
--     (64,'finnish spitz','Good For Novice Owners',3),
--     (64,'finnish spitz','Sensitivity Level',3),
--     (64,'finnish spitz','Tolerates Being Alone',1),
--     (64,'finnish spitz','Affectionate with Family',5),
--     (64,'finnish spitz','Incredibly Kid Friendly Dogs',5),
--     (64,'finnish spitz','Dog Friendly',5),
--     (64,'finnish spitz','Amount Of Shedding',4),
--     (64,'finnish spitz','Size',3),
--     (64,'finnish spitz','Easy To Train',3),
--     (64,'finnish spitz','Energy Level',5),
--     (64,'finnish spitz','Exercise Needs',5),
--     (65,'flat coated retriever','Adapts Well to Apartment Living',1),
--     (65,'flat coated retriever','Good For Novice Owners',2),
--     (65,'flat coated retriever','Sensitivity Level',5),
--     (65,'flat coated retriever','Tolerates Being Alone',1),
--     (65,'flat coated retriever','Affectionate with Family',5),
--     (65,'flat coated retriever','Incredibly Kid Friendly Dogs',5),
--     (65,'flat coated retriever','Dog Friendly',5),
--     (65,'flat coated retriever','Amount Of Shedding',3),
--     (65,'flat coated retriever','Size',3),
--     (65,'flat coated retriever','Easy To Train',4),
--     (65,'flat coated retriever','Energy Level',5),
--     (65,'flat coated retriever','Exercise Needs',5),
--     (66,'fox terrier','Adapts Well to Apartment Living',3),
--     (66,'fox terrier','Good For Novice Owners',3),
--     (66,'fox terrier','Sensitivity Level',3),
--     (66,'fox terrier','Tolerates Being Alone',3),
--     (66,'fox terrier','Affectionate with Family',4),
--     (66,'fox terrier','Incredibly Kid Friendly Dogs',4),
--     (66,'fox terrier','Dog Friendly',3),
--     (66,'fox terrier','Amount Of Shedding',2),
--     (66,'fox terrier','Size',2),
--     (66,'fox terrier','Easy To Train',5),
--     (66,'fox terrier','Energy Level',5),
--     (66,'fox terrier','Exercise Needs',5),
--     (67,'french bulldog','Adapts Well to Apartment Living',5),
--     (67,'french bulldog','Good For Novice Owners',5),
--     (67,'french bulldog','Sensitivity Level',3),
--     (67,'french bulldog','Tolerates Being Alone',1),
--     (67,'french bulldog','Affectionate with Family',5),
--     (67,'french bulldog','Incredibly Kid Friendly Dogs',4),
--     (67,'french bulldog','Dog Friendly',4),
--     (67,'french bulldog','Amount Of Shedding',3),
--     (67,'french bulldog','Size',2),
--     (67,'french bulldog','Easy To Train',4),
--     (67,'french bulldog','Energy Level',3),
--     (67,'french bulldog','Exercise Needs',2),
--     (68,'german pinscher','Adapts Well to Apartment Living',3),
--     (68,'german pinscher','Good For Novice Owners',3),
--     (68,'german pinscher','Sensitivity Level',4),
--     (68,'german pinscher','Tolerates Being Alone',3),
--     (68,'german pinscher','Affectionate with Family',5),
--     (68,'german pinscher','Incredibly Kid Friendly Dogs',3),
--     (68,'german pinscher','Dog Friendly',2),
--     (68,'german pinscher','Amount Of Shedding',3),
--     (68,'german pinscher','Size',3),
--     (68,'german pinscher','Easy To Train',4),
--     (68,'german pinscher','Energy Level',5),
--     (68,'german pinscher','Exercise Needs',5),
--     (69,'german shepherd dog','Adapts Well to Apartment Living',3),
--     (69,'german shepherd dog','Good For Novice Owners',2),
--     (69,'german shepherd dog','Sensitivity Level',5),
--     (69,'german shepherd dog','Tolerates Being Alone',2),
--     (69,'german shepherd dog','Affectionate with Family',5),
--     (69,'german shepherd dog','Incredibly Kid Friendly Dogs',5),
--     (69,'german shepherd dog','Dog Friendly',2),
--     (69,'german shepherd dog','Amount Of Shedding',5),
--     (69,'german shepherd dog','Size',4),
--     (69,'german shepherd dog','Easy To Train',5),
--     (69,'german shepherd dog','Energy Level',5),
--     (69,'german shepherd dog','Exercise Needs',5),
--     (70,'german shorthaired pointer','Adapts Well to Apartment Living',1),
--     (70,'german shorthaired pointer','Good For Novice Owners',2),
--     (70,'german shorthaired pointer','Sensitivity Level',4),
--     (70,'german shorthaired pointer','Tolerates Being Alone',1),
--     (70,'german shorthaired pointer','Affectionate with Family',5),
--     (70,'german shorthaired pointer','Incredibly Kid Friendly Dogs',5),
--     (70,'german shorthaired pointer','Dog Friendly',4),
--     (70,'german shorthaired pointer','Amount Of Shedding',2),
--     (70,'german shorthaired pointer','Size',3),
--     (70,'german shorthaired pointer','Easy To Train',5),
--     (70,'german shorthaired pointer','Energy Level',5),
--     (70,'german shorthaired pointer','Exercise Needs',5),
--     (71,'german wirehaired pointer','Adapts Well to Apartment Living',2),
--     (71,'german wirehaired pointer','Good For Novice Owners',3),
--     (71,'german wirehaired pointer','Sensitivity Level',4),
--     (71,'german wirehaired pointer','Tolerates Being Alone',2),
--     (71,'german wirehaired pointer','Affectionate with Family',5),
--     (71,'german wirehaired pointer','Incredibly Kid Friendly Dogs',3),
--     (71,'german wirehaired pointer','Dog Friendly',3),
--     (71,'german wirehaired pointer','Amount Of Shedding',2),
--     (71,'german wirehaired pointer','Size',4),
--     (71,'german wirehaired pointer','Easy To Train',4),
--     (71,'german wirehaired pointer','Energy Level',5),
--     (71,'german wirehaired pointer','Exercise Needs',5),
--     (72,'giant schnauzer','Adapts Well to Apartment Living',1),
--     (72,'giant schnauzer','Good For Novice Owners',1),
--     (72,'giant schnauzer','Sensitivity Level',4),
--     (72,'giant schnauzer','Tolerates Being Alone',2),
--     (72,'giant schnauzer','Affectionate with Family',5),
--     (72,'giant schnauzer','Incredibly Kid Friendly Dogs',3),
--     (72,'giant schnauzer','Dog Friendly',3),
--     (72,'giant schnauzer','Amount Of Shedding',4),
--     (72,'giant schnauzer','Size',4),
--     (72,'giant schnauzer','Easy To Train',5),
--     (72,'giant schnauzer','Energy Level',5),
--     (72,'giant schnauzer','Exercise Needs',5),
--     (73,'golden retriever','Adapts Well to Apartment Living',2),
--     (73,'golden retriever','Good For Novice Owners',3),
--     (73,'golden retriever','Sensitivity Level',5),
--     (73,'golden retriever','Tolerates Being Alone',1),
--     (73,'golden retriever','Affectionate with Family',5),
--     (73,'golden retriever','Incredibly Kid Friendly Dogs',5),
--     (73,'golden retriever','Dog Friendly',5),
--     (73,'golden retriever','Amount Of Shedding',5),
--     (73,'golden retriever','Size',3),
--     (73,'golden retriever','Easy To Train',5),
--     (73,'golden retriever','Energy Level',5),
--     (73,'golden retriever','Exercise Needs',5),
--     (74,'goldendoodle','Adapts Well to Apartment Living',1),
--     (74,'goldendoodle','Good For Novice Owners',4),
--     (74,'goldendoodle','Sensitivity Level',4),
--     (74,'goldendoodle','Tolerates Being Alone',3),
--     (74,'goldendoodle','Affectionate with Family',5),
--     (74,'goldendoodle','Incredibly Kid Friendly Dogs',5),
--     (74,'goldendoodle','Dog Friendly',5),
--     (74,'goldendoodle','Amount Of Shedding',2),
--     (74,'goldendoodle','Size',4),
--     (74,'goldendoodle','Easy To Train',4),
--     (74,'goldendoodle','Energy Level',4),
--     (74,'goldendoodle','Exercise Needs',5),
--     (75,'great dane','Adapts Well to Apartment Living',1),
--     (75,'great dane','Good For Novice Owners',1),
--     (75,'great dane','Sensitivity Level',5),
--     (75,'great dane','Tolerates Being Alone',1),
--     (75,'great dane','Affectionate with Family',5),
--     (75,'great dane','Incredibly Kid Friendly Dogs',5),
--     (75,'great dane','Dog Friendly',5),
--     (75,'great dane','Amount Of Shedding',5),
--     (75,'great dane','Size',5),
--     (75,'great dane','Easy To Train',5),
--     (75,'great dane','Energy Level',5),
--     (75,'great dane','Exercise Needs',5),
--     (76,'great pyrenees','Adapts Well to Apartment Living',1),
--     (76,'great pyrenees','Good For Novice Owners',1),
--     (76,'great pyrenees','Sensitivity Level',4),
--     (76,'great pyrenees','Tolerates Being Alone',3),
--     (76,'great pyrenees','Affectionate with Family',5),
--     (76,'great pyrenees','Incredibly Kid Friendly Dogs',4),
--     (76,'great pyrenees','Dog Friendly',4),
--     (76,'great pyrenees','Amount Of Shedding',5),
--     (76,'great pyrenees','Size',5),
--     (76,'great pyrenees','Easy To Train',1),
--     (76,'great pyrenees','Energy Level',5),
--     (76,'great pyrenees','Exercise Needs',5),
--     (77,'greater swiss mountain dog','Adapts Well to Apartment Living',1),
--     (77,'greater swiss mountain dog','Good For Novice Owners',2),
--     (77,'greater swiss mountain dog','Sensitivity Level',4),
--     (77,'greater swiss mountain dog','Tolerates Being Alone',3),
--     (77,'greater swiss mountain dog','Affectionate with Family',5),
--     (77,'greater swiss mountain dog','Incredibly Kid Friendly Dogs',5),
--     (77,'greater swiss mountain dog','Dog Friendly',5),
--     (77,'greater swiss mountain dog','Amount Of Shedding',3),
--     (77,'greater swiss mountain dog','Size',5),
--     (77,'greater swiss mountain dog','Easy To Train',3),
--     (77,'greater swiss mountain dog','Energy Level',5),
--     (77,'greater swiss mountain dog','Exercise Needs',3),
--     (78,'greyhound','Adapts Well to Apartment Living',4),
--     (78,'greyhound','Good For Novice Owners',2),
--     (78,'greyhound','Sensitivity Level',5),
--     (78,'greyhound','Tolerates Being Alone',1),
--     (78,'greyhound','Affectionate with Family',5),
--     (78,'greyhound','Incredibly Kid Friendly Dogs',5),
--     (78,'greyhound','Dog Friendly',4),
--     (78,'greyhound','Amount Of Shedding',4),
--     (78,'greyhound','Size',4),
--     (78,'greyhound','Easy To Train',5),
--     (78,'greyhound','Energy Level',5),
--     (78,'greyhound','Exercise Needs',5),
--     (79,'harrier','Adapts Well to Apartment Living',1),
--     (79,'harrier','Good For Novice Owners',3),
--     (79,'harrier','Sensitivity Level',2),
--     (79,'harrier','Tolerates Being Alone',3),
--     (79,'harrier','Affectionate with Family',4),
--     (79,'harrier','Incredibly Kid Friendly Dogs',5),
--     (79,'harrier','Dog Friendly',5),
--     (79,'harrier','Amount Of Shedding',3),
--     (79,'harrier','Size',3),
--     (79,'harrier','Easy To Train',2),
--     (79,'harrier','Energy Level',5),
--     (79,'harrier','Exercise Needs',5),
--     (80,'havanese','Adapts Well to Apartment Living',5),
--     (80,'havanese','Good For Novice Owners',5),
--     (80,'havanese','Sensitivity Level',4),
--     (80,'havanese','Tolerates Being Alone',1),
--     (80,'havanese','Affectionate with Family',5),
--     (80,'havanese','Incredibly Kid Friendly Dogs',4),
--     (80,'havanese','Dog Friendly',5),
--     (80,'havanese','Amount Of Shedding',2),
--     (80,'havanese','Size',2),
--     (80,'havanese','Easy To Train',5),
--     (80,'havanese','Energy Level',3),
--     (80,'havanese','Exercise Needs',3),
--     (81,'ibizan hound','Adapts Well to Apartment Living',5),
--     (81,'ibizan hound','Good For Novice Owners',3),
--     (81,'ibizan hound','Sensitivity Level',4),
--     (81,'ibizan hound','Tolerates Being Alone',2),
--     (81,'ibizan hound','Affectionate with Family',5),
--     (81,'ibizan hound','Incredibly Kid Friendly Dogs',5),
--     (81,'ibizan hound','Dog Friendly',5),
--     (81,'ibizan hound','Amount Of Shedding',3),
--     (81,'ibizan hound','Size',3),
--     (81,'ibizan hound','Easy To Train',3),
--     (81,'ibizan hound','Energy Level',5),
--     (81,'ibizan hound','Exercise Needs',5),
--     (82,'icelandic sheepdog','Adapts Well to Apartment Living',1),
--     (82,'icelandic sheepdog','Good For Novice Owners',1),
--     (82,'icelandic sheepdog','Sensitivity Level',3),
--     (82,'icelandic sheepdog','Tolerates Being Alone',2),
--     (82,'icelandic sheepdog','Affectionate with Family',4),
--     (82,'icelandic sheepdog','Incredibly Kid Friendly Dogs',4),
--     (82,'icelandic sheepdog','Dog Friendly',2),
--     (82,'icelandic sheepdog','Amount Of Shedding',5),
--     (82,'icelandic sheepdog','Size',3),
--     (82,'icelandic sheepdog','Easy To Train',3),
--     (82,'icelandic sheepdog','Energy Level',4),
--     (82,'icelandic sheepdog','Exercise Needs',4),
--     (83,'irish setter','Adapts Well to Apartment Living',1),
--     (83,'irish setter','Good For Novice Owners',3),
--     (83,'irish setter','Sensitivity Level',4),
--     (83,'irish setter','Tolerates Being Alone',2);
-- INSERT INTO breeds (breed_id, breed_name, attribute, score) 
-- VALUES
--     (83,'irish setter','Affectionate with Family',5),
--     (83,'irish setter','Incredibly Kid Friendly Dogs',5),
--     (83,'irish setter','Dog Friendly',5),
--     (83,'irish setter','Amount Of Shedding',4),
--     (83,'irish setter','Size',4),
--     (83,'irish setter','Easy To Train',4),
--     (83,'irish setter','Energy Level',5),
--     (83,'irish setter','Exercise Needs',5),
--     (84,'irish terrier','Adapts Well to Apartment Living',3),
--     (84,'irish terrier','Good For Novice Owners',2),
--     (84,'irish terrier','Sensitivity Level',3),
--     (84,'irish terrier','Tolerates Being Alone',2),
--     (84,'irish terrier','Affectionate with Family',5),
--     (84,'irish terrier','Incredibly Kid Friendly Dogs',5),
--     (84,'irish terrier','Dog Friendly',1),
--     (84,'irish terrier','Amount Of Shedding',4),
--     (84,'irish terrier','Size',3),
--     (84,'irish terrier','Easy To Train',1),
--     (84,'irish terrier','Energy Level',5),
--     (84,'irish terrier','Exercise Needs',4),
--     (85,'irish wolfhound','Adapts Well to Apartment Living',1),
--     (85,'irish wolfhound','Good For Novice Owners',2),
--     (85,'irish wolfhound','Sensitivity Level',3),
--     (85,'irish wolfhound','Tolerates Being Alone',2),
--     (85,'irish wolfhound','Affectionate with Family',5),
--     (85,'irish wolfhound','Incredibly Kid Friendly Dogs',5),
--     (85,'irish wolfhound','Dog Friendly',5),
--     (85,'irish wolfhound','Amount Of Shedding',3),
--     (85,'irish wolfhound','Size',5),
--     (85,'irish wolfhound','Easy To Train',3),
--     (85,'irish wolfhound','Energy Level',2),
--     (85,'irish wolfhound','Exercise Needs',4),
--     (86,'italian greyhound','Adapts Well to Apartment Living',5),
--     (86,'italian greyhound','Good For Novice Owners',5),
--     (86,'italian greyhound','Sensitivity Level',5),
--     (86,'italian greyhound','Tolerates Being Alone',1),
--     (86,'italian greyhound','Affectionate with Family',5),
--     (86,'italian greyhound','Incredibly Kid Friendly Dogs',5),
--     (86,'italian greyhound','Dog Friendly',4),
--     (86,'italian greyhound','Amount Of Shedding',2),
--     (86,'italian greyhound','Size',2),
--     (86,'italian greyhound','Easy To Train',3),
--     (86,'italian greyhound','Energy Level',4),
--     (86,'italian greyhound','Exercise Needs',4),
--     (87,'jack russell terrier','Adapts Well to Apartment Living',3),
--     (87,'jack russell terrier','Good For Novice Owners',2),
--     (87,'jack russell terrier','Sensitivity Level',3),
--     (87,'jack russell terrier','Tolerates Being Alone',3),
--     (87,'jack russell terrier','Affectionate with Family',5),
--     (87,'jack russell terrier','Incredibly Kid Friendly Dogs',4),
--     (87,'jack russell terrier','Dog Friendly',5),
--     (87,'jack russell terrier','Amount Of Shedding',3),
--     (87,'jack russell terrier','Size',2),
--     (87,'jack russell terrier','Easy To Train',4),
--     (87,'jack russell terrier','Energy Level',5),
--     (87,'jack russell terrier','Exercise Needs',5),
--     (88,'japanese chin','Adapts Well to Apartment Living',5),
--     (88,'japanese chin','Good For Novice Owners',4),
--     (88,'japanese chin','Sensitivity Level',3),
--     (88,'japanese chin','Tolerates Being Alone',1),
--     (88,'japanese chin','Affectionate with Family',3),
--     (88,'japanese chin','Incredibly Kid Friendly Dogs',3),
--     (88,'japanese chin','Dog Friendly',3),
--     (88,'japanese chin','Amount Of Shedding',3),
--     (88,'japanese chin','Size',1),
--     (88,'japanese chin','Easy To Train',3),
--     (88,'japanese chin','Energy Level',2),
--     (88,'japanese chin','Exercise Needs',2),
--     (89,'japanese spitz','Adapts Well to Apartment Living',4),
--     (89,'japanese spitz','Good For Novice Owners',4),
--     (89,'japanese spitz','Sensitivity Level',3),
--     (89,'japanese spitz','Tolerates Being Alone',2),
--     (89,'japanese spitz','Affectionate with Family',4),
--     (89,'japanese spitz','Incredibly Kid Friendly Dogs',5),
--     (89,'japanese spitz','Dog Friendly',4),
--     (89,'japanese spitz','Amount Of Shedding',3),
--     (89,'japanese spitz','Size',2),
--     (89,'japanese spitz','Easy To Train',4),
--     (89,'japanese spitz','Energy Level',3),
--     (89,'japanese spitz','Exercise Needs',3),
--     (90,'karelian bear dog','Adapts Well to Apartment Living',2),
--     (90,'karelian bear dog','Good For Novice Owners',1),
--     (90,'karelian bear dog','Sensitivity Level',4),
--     (90,'karelian bear dog','Tolerates Being Alone',2),
--     (90,'karelian bear dog','Affectionate with Family',4),
--     (90,'karelian bear dog','Incredibly Kid Friendly Dogs',3),
--     (90,'karelian bear dog','Dog Friendly',1),
--     (90,'karelian bear dog','Amount Of Shedding',3),
--     (90,'karelian bear dog','Size',3),
--     (90,'karelian bear dog','Easy To Train',2),
--     (90,'karelian bear dog','Energy Level',4),
--     (90,'karelian bear dog','Exercise Needs',4),
--     (91,'jindo','Adapts Well to Apartment Living',3),
--     (91,'jindo','Good For Novice Owners',2),
--     (91,'jindo','Sensitivity Level',3),
--     (91,'jindo','Tolerates Being Alone',2),
--     (91,'jindo','Affectionate with Family',5),
--     (91,'jindo','Incredibly Kid Friendly Dogs',3),
--     (91,'jindo','Dog Friendly',3),
--     (91,'jindo','Amount Of Shedding',5),
--     (91,'jindo','Size',3),
--     (91,'jindo','Easy To Train',2),
--     (91,'jindo','Energy Level',4),
--     (91,'jindo','Exercise Needs',5),
--     (92,'labradoodle','Adapts Well to Apartment Living',3),
--     (92,'labradoodle','Good For Novice Owners',4),
--     (92,'labradoodle','Sensitivity Level',3),
--     (92,'labradoodle','Tolerates Being Alone',4),
--     (92,'labradoodle','Affectionate with Family',5),
--     (92,'labradoodle','Incredibly Kid Friendly Dogs',4),
--     (92,'labradoodle','Dog Friendly',5),
--     (92,'labradoodle','Amount Of Shedding',3),
--     (92,'labradoodle','Size',4),
--     (92,'labradoodle','Easy To Train',4),
--     (92,'labradoodle','Energy Level',5),
--     (92,'labradoodle','Exercise Needs',5),
--     (93,'labrador retriever','Adapts Well to Apartment Living',1),
--     (93,'labrador retriever','Good For Novice Owners',3),
--     (93,'labrador retriever','Sensitivity Level',5),
--     (93,'labrador retriever','Tolerates Being Alone',2),
--     (93,'labrador retriever','Affectionate with Family',5),
--     (93,'labrador retriever','Incredibly Kid Friendly Dogs',5),
--     (93,'labrador retriever','Dog Friendly',5),
--     (93,'labrador retriever','Amount Of Shedding',5),
--     (93,'labrador retriever','Size',4),
--     (93,'labrador retriever','Easy To Train',5),
--     (93,'labrador retriever','Energy Level',5),
--     (93,'labrador retriever','Exercise Needs',5),
--     (94,'maltese','Adapts Well to Apartment Living',5),
--     (94,'maltese','Good For Novice Owners',5),
--     (94,'maltese','Sensitivity Level',4),
--     (94,'maltese','Tolerates Being Alone',1),
--     (94,'maltese','Affectionate with Family',5),
--     (94,'maltese','Incredibly Kid Friendly Dogs',3),
--     (94,'maltese','Dog Friendly',4),
--     (94,'maltese','Amount Of Shedding',2),
--     (94,'maltese','Size',1),
--     (94,'maltese','Easy To Train',4),
--     (94,'maltese','Energy Level',3),
--     (94,'maltese','Exercise Needs',2),
--     (95,'maltese shih tzu','Adapts Well to Apartment Living',5),
--     (95,'maltese shih tzu','Good For Novice Owners',5),
--     (95,'maltese shih tzu','Sensitivity Level',3),
--     (95,'maltese shih tzu','Tolerates Being Alone',3),
--     (95,'maltese shih tzu','Affectionate with Family',4),
--     (95,'maltese shih tzu','Incredibly Kid Friendly Dogs',3),
--     (95,'maltese shih tzu','Dog Friendly',3),
--     (95,'maltese shih tzu','Amount Of Shedding',1),
--     (95,'maltese shih tzu','Size',1),
--     (95,'maltese shih tzu','Easy To Train',4),
--     (95,'maltese shih tzu','Energy Level',3),
--     (95,'maltese shih tzu','Exercise Needs',3),
--     (96,'maltipoo','Adapts Well to Apartment Living',5),
--     (96,'maltipoo','Good For Novice Owners',5),
--     (96,'maltipoo','Sensitivity Level',5),
--     (96,'maltipoo','Tolerates Being Alone',1),
--     (96,'maltipoo','Affectionate with Family',5),
--     (96,'maltipoo','Incredibly Kid Friendly Dogs',4),
--     (96,'maltipoo','Dog Friendly',4),
--     (96,'maltipoo','Amount Of Shedding',1),
--     (96,'maltipoo','Size',2),
--     (96,'maltipoo','Easy To Train',5),
--     (96,'maltipoo','Energy Level',3),
--     (96,'maltipoo','Exercise Needs',2),
--     (97,'manchester terrier','Adapts Well to Apartment Living',5),
--     (97,'manchester terrier','Good For Novice Owners',3),
--     (97,'manchester terrier','Sensitivity Level',3),
--     (97,'manchester terrier','Tolerates Being Alone',3),
--     (97,'manchester terrier','Affectionate with Family',4),
--     (97,'manchester terrier','Incredibly Kid Friendly Dogs',3),
--     (97,'manchester terrier','Dog Friendly',3),
--     (97,'manchester terrier','Amount Of Shedding',3),
--     (97,'manchester terrier','Size',2),
--     (97,'manchester terrier','Easy To Train',2),
--     (97,'manchester terrier','Energy Level',4),
--     (97,'manchester terrier','Exercise Needs',4),
--     (98,'mastiff','Adapts Well to Apartment Living',2),
--     (98,'mastiff','Good For Novice Owners',1),
--     (98,'mastiff','Sensitivity Level',3),
--     (98,'mastiff','Tolerates Being Alone',3),
--     (98,'mastiff','Affectionate with Family',5),
--     (98,'mastiff','Incredibly Kid Friendly Dogs',5),
--     (98,'mastiff','Dog Friendly',2),
--     (98,'mastiff','Amount Of Shedding',3),
--     (98,'mastiff','Size',5),
--     (98,'mastiff','Easy To Train',3),
--     (98,'mastiff','Energy Level',3),
--     (98,'mastiff','Exercise Needs',4),
--     (99,'miniature pinscher','Adapts Well to Apartment Living',5),
--     (99,'miniature pinscher','Good For Novice Owners',3),
--     (99,'miniature pinscher','Sensitivity Level',5),
--     (99,'miniature pinscher','Tolerates Being Alone',2),
--     (99,'miniature pinscher','Affectionate with Family',5),
--     (99,'miniature pinscher','Incredibly Kid Friendly Dogs',3),
--     (99,'miniature pinscher','Dog Friendly',2),
--     (99,'miniature pinscher','Amount Of Shedding',2),
--     (99,'miniature pinscher','Size',1),
--     (99,'miniature pinscher','Easy To Train',3),
--     (99,'miniature pinscher','Energy Level',4),
--     (99,'miniature pinscher','Exercise Needs',4),
--     (100,'miniature schnauzer','Adapts Well to Apartment Living',4),
--     (100,'miniature schnauzer','Good For Novice Owners',3),
--     (100,'miniature schnauzer','Sensitivity Level',4),
--     (100,'miniature schnauzer','Tolerates Being Alone',5),
--     (100,'miniature schnauzer','Affectionate with Family',5),
--     (100,'miniature schnauzer','Incredibly Kid Friendly Dogs',3),
--     (100,'miniature schnauzer','Dog Friendly',3),
--     (100,'miniature schnauzer','Amount Of Shedding',2),
--     (100,'miniature schnauzer','Size',2),
--     (100,'miniature schnauzer','Easy To Train',5),
--     (100,'miniature schnauzer','Energy Level',5),
--     (100,'miniature schnauzer','Exercise Needs',5),
--     (101,'mudi','Adapts Well to Apartment Living',2),
--     (101,'mudi','Good For Novice Owners',4),
--     (101,'mudi','Sensitivity Level',4),
--     (101,'mudi','Tolerates Being Alone',2),
--     (101,'mudi','Affectionate with Family',4),
--     (101,'mudi','Incredibly Kid Friendly Dogs',2),
--     (101,'mudi','Dog Friendly',2),
--     (101,'mudi','Amount Of Shedding',3),
--     (101,'mudi','Size',2),
--     (101,'mudi','Easy To Train',5),
--     (101,'mudi','Energy Level',4),
--     (102,'neapolitan mastiff','Adapts Well to Apartment Living',2),
--     (102,'neapolitan mastiff','Good For Novice Owners',1),
--     (102,'neapolitan mastiff','Sensitivity Level',4),
--     (102,'neapolitan mastiff','Tolerates Being Alone',1),
--     (102,'neapolitan mastiff','Affectionate with Family',5),
--     (102,'neapolitan mastiff','Incredibly Kid Friendly Dogs',4),
--     (102,'neapolitan mastiff','Dog Friendly',2),
--     (102,'neapolitan mastiff','Amount Of Shedding',3),
--     (102,'neapolitan mastiff','Size',5),
--     (102,'neapolitan mastiff','Easy To Train',3),
--     (102,'neapolitan mastiff','Energy Level',3),
--     (102,'neapolitan mastiff','Exercise Needs',3),
--     (103,'newfoundland','Adapts Well to Apartment Living',1),
--     (103,'newfoundland','Good For Novice Owners',3),
--     (103,'newfoundland','Sensitivity Level',4),
--     (103,'newfoundland','Tolerates Being Alone',1),
--     (103,'newfoundland','Affectionate with Family',5),
--     (103,'newfoundland','Incredibly Kid Friendly Dogs',5),
--     (103,'newfoundland','Dog Friendly',4),
--     (103,'newfoundland','Amount Of Shedding',5),
--     (103,'newfoundland','Size',5),
--     (103,'newfoundland','Easy To Train',5),
--     (103,'newfoundland','Energy Level',3),
--     (103,'newfoundland','Exercise Needs',3),
--     (104,'norfolk terrier','Adapts Well to Apartment Living',4),
--     (104,'norfolk terrier','Good For Novice Owners',5);
-- INSERT INTO breeds (breed_id, breed_name, attribute, score) 
-- VALUES
--     (104,'norfolk terrier','Sensitivity Level',4),
--     (104,'norfolk terrier','Tolerates Being Alone',3),
--     (104,'norfolk terrier','Affectionate with Family',5),
--     (104,'norfolk terrier','Incredibly Kid Friendly Dogs',4),
--     (104,'norfolk terrier','Dog Friendly',5),
--     (104,'norfolk terrier','Amount Of Shedding',1),
--     (104,'norfolk terrier','Size',1),
--     (104,'norfolk terrier','Easy To Train',5),
--     (104,'norfolk terrier','Energy Level',4),
--     (104,'norfolk terrier','Exercise Needs',4),
--     (105,'norwegian elkhound','Adapts Well to Apartment Living',4),
--     (105,'norwegian elkhound','Good For Novice Owners',4),
--     (105,'norwegian elkhound','Sensitivity Level',4),
--     (105,'norwegian elkhound','Tolerates Being Alone',2),
--     (105,'norwegian elkhound','Affectionate with Family',5),
--     (105,'norwegian elkhound','Incredibly Kid Friendly Dogs',4),
--     (105,'norwegian elkhound','Dog Friendly',4),
--     (105,'norwegian elkhound','Amount Of Shedding',5),
--     (105,'norwegian elkhound','Size',3),
--     (105,'norwegian elkhound','Easy To Train',2),
--     (105,'norwegian elkhound','Energy Level',5),
--     (105,'norwegian elkhound','Exercise Needs',5),
--     (106,'norwich terrier','Adapts Well to Apartment Living',5),
--     (106,'norwich terrier','Good For Novice Owners',3),
--     (106,'norwich terrier','Sensitivity Level',4),
--     (106,'norwich terrier','Tolerates Being Alone',2),
--     (106,'norwich terrier','Affectionate with Family',5),
--     (106,'norwich terrier','Incredibly Kid Friendly Dogs',5),
--     (106,'norwich terrier','Dog Friendly',5),
--     (106,'norwich terrier','Amount Of Shedding',2),
--     (106,'norwich terrier','Size',1),
--     (106,'norwich terrier','Easy To Train',4),
--     (106,'norwich terrier','Energy Level',5),
--     (106,'norwich terrier','Exercise Needs',4),
--     (107,'old english sheepdog','Adapts Well to Apartment Living',5),
--     (107,'old english sheepdog','Good For Novice Owners',4),
--     (107,'old english sheepdog','Sensitivity Level',4),
--     (107,'old english sheepdog','Tolerates Being Alone',2),
--     (107,'old english sheepdog','Affectionate with Family',5),
--     (107,'old english sheepdog','Incredibly Kid Friendly Dogs',4),
--     (107,'old english sheepdog','Dog Friendly',4),
--     (107,'old english sheepdog','Amount Of Shedding',1),
--     (107,'old english sheepdog','Size',4),
--     (107,'old english sheepdog','Easy To Train',3),
--     (107,'old english sheepdog','Energy Level',4),
--     (107,'old english sheepdog','Exercise Needs',4),
--     (108,'papillon','Adapts Well to Apartment Living',5),
--     (108,'papillon','Good For Novice Owners',5),
--     (108,'papillon','Sensitivity Level',3),
--     (108,'papillon','Tolerates Being Alone',1),
--     (108,'papillon','Affectionate with Family',5),
--     (108,'papillon','Incredibly Kid Friendly Dogs',3),
--     (108,'papillon','Dog Friendly',4),
--     (108,'papillon','Amount Of Shedding',2),
--     (108,'papillon','Size',1),
--     (108,'papillon','Easy To Train',5),
--     (108,'papillon','Energy Level',4),
--     (108,'papillon','Exercise Needs',5),
--     (109,'pekingese','Adapts Well to Apartment Living',5),
--     (109,'pekingese','Good For Novice Owners',4),
--     (109,'pekingese','Sensitivity Level',2),
--     (109,'pekingese','Tolerates Being Alone',3),
--     (109,'pekingese','Affectionate with Family',5),
--     (109,'pekingese','Incredibly Kid Friendly Dogs',2),
--     (109,'pekingese','Dog Friendly',2),
--     (109,'pekingese','Amount Of Shedding',4),
--     (109,'pekingese','Size',1),
--     (109,'pekingese','Easy To Train',3),
--     (109,'pekingese','Energy Level',2),
--     (109,'pekingese','Exercise Needs',2),
--     (110,'pembroke welsh corgi','Adapts Well to Apartment Living',4),
--     (110,'pembroke welsh corgi','Good For Novice Owners',4),
--     (110,'pembroke welsh corgi','Sensitivity Level',4),
--     (110,'pembroke welsh corgi','Tolerates Being Alone',3),
--     (110,'pembroke welsh corgi','Affectionate with Family',5),
--     (110,'pembroke welsh corgi','Incredibly Kid Friendly Dogs',4),
--     (110,'pembroke welsh corgi','Dog Friendly',3),
--     (110,'pembroke welsh corgi','Amount Of Shedding',5),
--     (110,'pembroke welsh corgi','Size',2),
--     (110,'pembroke welsh corgi','Easy To Train',5),
--     (110,'pembroke welsh corgi','Energy Level',4),
--     (110,'pembroke welsh corgi','Exercise Needs',4),
--     (111,'pharaoh hound','Adapts Well to Apartment Living',4),
--     (111,'pharaoh hound','Good For Novice Owners',4),
--     (111,'pharaoh hound','Sensitivity Level',5),
--     (111,'pharaoh hound','Tolerates Being Alone',2),
--     (111,'pharaoh hound','Affectionate with Family',5),
--     (111,'pharaoh hound','Incredibly Kid Friendly Dogs',5),
--     (111,'pharaoh hound','Dog Friendly',5),
--     (111,'pharaoh hound','Amount Of Shedding',2),
--     (111,'pharaoh hound','Size',3),
--     (111,'pharaoh hound','Easy To Train',3),
--     (111,'pharaoh hound','Energy Level',2),
--     (111,'pharaoh hound','Exercise Needs',4),
--     (112,'plott','Adapts Well to Apartment Living',1),
--     (112,'plott','Good For Novice Owners',1),
--     (112,'plott','Sensitivity Level',4),
--     (112,'plott','Tolerates Being Alone',2),
--     (112,'plott','Affectionate with Family',4),
--     (112,'plott','Incredibly Kid Friendly Dogs',3),
--     (112,'plott','Dog Friendly',5),
--     (112,'plott','Amount Of Shedding',2),
--     (112,'plott','Size',3),
--     (112,'plott','Easy To Train',4),
--     (112,'plott','Energy Level',4),
--     (112,'plott','Exercise Needs',5),
--     (113,'pocket beagle','Adapts Well to Apartment Living',4),
--     (113,'pocket beagle','Good For Novice Owners',3),
--     (113,'pocket beagle','Sensitivity Level',4),
--     (113,'pocket beagle','Tolerates Being Alone',2),
--     (113,'pocket beagle','Affectionate with Family',5),
--     (113,'pocket beagle','Incredibly Kid Friendly Dogs',5),
--     (113,'pocket beagle','Dog Friendly',5),
--     (113,'pocket beagle','Amount Of Shedding',3),
--     (113,'pocket beagle','Size',2),
--     (113,'pocket beagle','Easy To Train',3),
--     (113,'pocket beagle','Energy Level',4),
--     (113,'pocket beagle','Exercise Needs',4),
--     (114,'pointer','Adapts Well to Apartment Living',1),
--     (114,'pointer','Good For Novice Owners',1),
--     (114,'pointer','Sensitivity Level',3),
--     (114,'pointer','Tolerates Being Alone',1),
--     (114,'pointer','Affectionate with Family',5),
--     (114,'pointer','Incredibly Kid Friendly Dogs',5),
--     (114,'pointer','Dog Friendly',5),
--     (114,'pointer','Amount Of Shedding',3),
--     (114,'pointer','Size',3),
--     (114,'pointer','Easy To Train',5),
--     (114,'pointer','Energy Level',5),
--     (114,'pointer','Exercise Needs',5),
--     (115,'pomeranian','Adapts Well to Apartment Living',4),
--     (115,'pomeranian','Good For Novice Owners',4),
--     (115,'pomeranian','Sensitivity Level',4),
--     (115,'pomeranian','Tolerates Being Alone',1),
--     (115,'pomeranian','Affectionate with Family',5),
--     (115,'pomeranian','Incredibly Kid Friendly Dogs',2),
--     (115,'pomeranian','Dog Friendly',2),
--     (115,'pomeranian','Amount Of Shedding',4),
--     (115,'pomeranian','Size',1),
--     (115,'pomeranian','Easy To Train',4),
--     (115,'pomeranian','Energy Level',3),
--     (115,'pomeranian','Exercise Needs',2),
--     (116,'pomsky','Adapts Well to Apartment Living',5),
--     (116,'pomsky','Good For Novice Owners',2),
--     (116,'pomsky','Sensitivity Level',4),
--     (116,'pomsky','Tolerates Being Alone',1),
--     (116,'pomsky','Affectionate with Family',5),
--     (116,'pomsky','Incredibly Kid Friendly Dogs',2),
--     (116,'pomsky','Dog Friendly',3),
--     (116,'pomsky','Amount Of Shedding',4),
--     (116,'pomsky','Size',2),
--     (116,'pomsky','Easy To Train',3),
--     (116,'pomsky','Energy Level',4),
--     (116,'pomsky','Exercise Needs',3),
--     (117,'poodle','Adapts Well to Apartment Living',5),
--     (117,'poodle','Good For Novice Owners',5),
--     (117,'poodle','Sensitivity Level',4),
--     (117,'poodle','Tolerates Being Alone',1),
--     (117,'poodle','Affectionate with Family',5),
--     (117,'poodle','Incredibly Kid Friendly Dogs',5),
--     (117,'poodle','Dog Friendly',4),
--     (117,'poodle','Amount Of Shedding',1),
--     (117,'poodle','Size',4),
--     (117,'poodle','Easy To Train',5),
--     (117,'poodle','Energy Level',4),
--     (117,'poodle','Exercise Needs',4),
--     (118,'pug','Adapts Well to Apartment Living',5),
--     (118,'pug','Good For Novice Owners',5),
--     (118,'pug','Sensitivity Level',3),
--     (118,'pug','Tolerates Being Alone',1),
--     (118,'pug','Affectionate with Family',5),
--     (118,'pug','Incredibly Kid Friendly Dogs',4),
--     (118,'pug','Dog Friendly',4),
--     (118,'pug','Amount Of Shedding',5),
--     (118,'pug','Size',2),
--     (118,'pug','Easy To Train',3),
--     (118,'pug','Energy Level',3),
--     (118,'pug','Exercise Needs',3),
--     (119,'puggle','Adapts Well to Apartment Living',4),
--     (119,'puggle','Good For Novice Owners',5),
--     (119,'puggle','Sensitivity Level',3),
--     (119,'puggle','Tolerates Being Alone',3),
--     (119,'puggle','Affectionate with Family',3),
--     (119,'puggle','Incredibly Kid Friendly Dogs',5),
--     (119,'puggle','Dog Friendly',5),
--     (119,'puggle','Amount Of Shedding',3),
--     (119,'puggle','Size',2),
--     (119,'puggle','Easy To Train',2),
--     (119,'puggle','Energy Level',3),
--     (119,'puggle','Exercise Needs',3),
--     (120,'rat terrier','Adapts Well to Apartment Living',5),
--     (120,'rat terrier','Good For Novice Owners',3),
--     (120,'rat terrier','Sensitivity Level',4),
--     (120,'rat terrier','Tolerates Being Alone',3),
--     (120,'rat terrier','Affectionate with Family',4),
--     (120,'rat terrier','Incredibly Kid Friendly Dogs',5),
--     (120,'rat terrier','Dog Friendly',3),
--     (120,'rat terrier','Amount Of Shedding',4),
--     (120,'rat terrier','Size',1),
--     (120,'rat terrier','Easy To Train',5),
--     (120,'rat terrier','Energy Level',5),
--     (120,'rat terrier','Exercise Needs',4),
--     (121,'redbone coonhound','Adapts Well to Apartment Living',4),
--     (121,'redbone coonhound','Good For Novice Owners',2),
--     (121,'redbone coonhound','Sensitivity Level',5),
--     (121,'redbone coonhound','Tolerates Being Alone',2),
--     (121,'redbone coonhound','Affectionate with Family',5),
--     (121,'redbone coonhound','Incredibly Kid Friendly Dogs',5),
--     (121,'redbone coonhound','Dog Friendly',4),
--     (121,'redbone coonhound','Amount Of Shedding',2),
--     (121,'redbone coonhound','Size',3),
--     (121,'redbone coonhound','Easy To Train',3),
--     (121,'redbone coonhound','Energy Level',4),
--     (121,'redbone coonhound','Exercise Needs',5),
--     (122,'rhodesian ridgeback','Adapts Well to Apartment Living',1),
--     (122,'rhodesian ridgeback','Good For Novice Owners',2),
--     (122,'rhodesian ridgeback','Sensitivity Level',4),
--     (122,'rhodesian ridgeback','Tolerates Being Alone',2),
--     (122,'rhodesian ridgeback','Affectionate with Family',5),
--     (122,'rhodesian ridgeback','Incredibly Kid Friendly Dogs',4),
--     (122,'rhodesian ridgeback','Dog Friendly',4),
--     (122,'rhodesian ridgeback','Amount Of Shedding',4),
--     (122,'rhodesian ridgeback','Size',4),
--     (122,'rhodesian ridgeback','Easy To Train',2),
--     (122,'rhodesian ridgeback','Energy Level',4),
--     (122,'rhodesian ridgeback','Exercise Needs',5),
--     (123,'rottweiler','Adapts Well to Apartment Living',2),
--     (123,'rottweiler','Good For Novice Owners',1),
--     (123,'rottweiler','Sensitivity Level',4),
--     (123,'rottweiler','Tolerates Being Alone',1),
--     (123,'rottweiler','Affectionate with Family',5),
--     (123,'rottweiler','Incredibly Kid Friendly Dogs',4),
--     (123,'rottweiler','Dog Friendly',2),
--     (123,'rottweiler','Amount Of Shedding',4),
--     (123,'rottweiler','Size',3),
--     (123,'rottweiler','Easy To Train',4),
--     (123,'rottweiler','Energy Level',4),
--     (123,'rottweiler','Exercise Needs',4),
--     (124,'saint bernard','Adapts Well to Apartment Living',3),
--     (124,'saint bernard','Good For Novice Owners',2),
--     (124,'saint bernard','Sensitivity Level',4),
--     (124,'saint bernard','Tolerates Being Alone',1),
--     (124,'saint bernard','Affectionate with Family',5),
--     (124,'saint bernard','Incredibly Kid Friendly Dogs',5),
--     (124,'saint bernard','Dog Friendly',5),
--     (124,'saint bernard','Amount Of Shedding',4),
--     (124,'saint bernard','Size',5),
--     (124,'saint bernard','Easy To Train',2),
--     (124,'saint bernard','Energy Level',3),
--     (124,'saint bernard','Exercise Needs',2);
-- INSERT INTO breeds (breed_id, breed_name, attribute, score) 
-- VALUES
--     (125,'saluki','Adapts Well to Apartment Living',1),
--     (125,'saluki','Good For Novice Owners',2),
--     (125,'saluki','Sensitivity Level',5),
--     (125,'saluki','Tolerates Being Alone',1),
--     (125,'saluki','Affectionate with Family',5),
--     (125,'saluki','Incredibly Kid Friendly Dogs',4),
--     (125,'saluki','Dog Friendly',4),
--     (125,'saluki','Amount Of Shedding',2),
--     (125,'saluki','Size',4),
--     (125,'saluki','Easy To Train',4),
--     (125,'saluki','Energy Level',5),
--     (125,'saluki','Exercise Needs',5),
--     (126,'schipperke','Adapts Well to Apartment Living',4),
--     (126,'schipperke','Good For Novice Owners',4),
--     (126,'schipperke','Sensitivity Level',4),
--     (126,'schipperke','Tolerates Being Alone',3),
--     (126,'schipperke','Affectionate with Family',4),
--     (126,'schipperke','Incredibly Kid Friendly Dogs',5),
--     (126,'schipperke','Dog Friendly',2),
--     (126,'schipperke','Amount Of Shedding',3),
--     (126,'schipperke','Size',1),
--     (126,'schipperke','Easy To Train',2),
--     (126,'schipperke','Energy Level',5),
--     (126,'schipperke','Exercise Needs',5),
--     (127,'scottish terrier','Adapts Well to Apartment Living',4),
--     (127,'scottish terrier','Good For Novice Owners',2),
--     (127,'scottish terrier','Sensitivity Level',4),
--     (127,'scottish terrier','Tolerates Being Alone',3),
--     (127,'scottish terrier','Affectionate with Family',5),
--     (127,'scottish terrier','Incredibly Kid Friendly Dogs',4),
--     (127,'scottish terrier','Dog Friendly',4),
--     (127,'scottish terrier','Amount Of Shedding',2),
--     (127,'scottish terrier','Size',2),
--     (127,'scottish terrier','Easy To Train',1),
--     (127,'scottish terrier','Energy Level',4),
--     (127,'scottish terrier','Exercise Needs',4),
--     (128,'shetland sheepdog','Adapts Well to Apartment Living',2),
--     (128,'shetland sheepdog','Good For Novice Owners',3),
--     (128,'shetland sheepdog','Sensitivity Level',5),
--     (128,'shetland sheepdog','Tolerates Being Alone',2),
--     (128,'shetland sheepdog','Affectionate with Family',5),
--     (128,'shetland sheepdog','Incredibly Kid Friendly Dogs',5),
--     (128,'shetland sheepdog','Dog Friendly',4),
--     (128,'shetland sheepdog','Amount Of Shedding',5),
--     (128,'shetland sheepdog','Size',1),
--     (128,'shetland sheepdog','Easy To Train',5),
--     (128,'shetland sheepdog','Energy Level',4),
--     (128,'shetland sheepdog','Exercise Needs',4),
--     (129,'shiba inu','Adapts Well to Apartment Living',5),
--     (129,'shiba inu','Good For Novice Owners',4),
--     (129,'shiba inu','Sensitivity Level',3),
--     (129,'shiba inu','Tolerates Being Alone',5),
--     (129,'shiba inu','Affectionate with Family',4),
--     (129,'shiba inu','Incredibly Kid Friendly Dogs',3),
--     (129,'shiba inu','Dog Friendly',3),
--     (129,'shiba inu','Amount Of Shedding',4),
--     (129,'shiba inu','Size',2),
--     (129,'shiba inu','Easy To Train',2),
--     (129,'shiba inu','Energy Level',4),
--     (129,'shiba inu','Exercise Needs',3),
--     (130,'shih tzu','Adapts Well to Apartment Living',5),
--     (130,'shih tzu','Good For Novice Owners',5),
--     (130,'shih tzu','Sensitivity Level',3),
--     (130,'shih tzu','Tolerates Being Alone',3),
--     (130,'shih tzu','Affectionate with Family',5),
--     (130,'shih tzu','Incredibly Kid Friendly Dogs',4),
--     (130,'shih tzu','Dog Friendly',4),
--     (130,'shih tzu','Amount Of Shedding',3),
--     (130,'shih tzu','Size',1),
--     (130,'shih tzu','Easy To Train',3),
--     (130,'shih tzu','Energy Level',2),
--     (130,'shih tzu','Exercise Needs',2),
--     (131,'siberian husky','Adapts Well to Apartment Living',2),
--     (131,'siberian husky','Good For Novice Owners',1),
--     (131,'siberian husky','Sensitivity Level',4),
--     (131,'siberian husky','Tolerates Being Alone',1),
--     (131,'siberian husky','Affectionate with Family',5),
--     (131,'siberian husky','Incredibly Kid Friendly Dogs',5),
--     (131,'siberian husky','Dog Friendly',5),
--     (131,'siberian husky','Amount Of Shedding',3),
--     (131,'siberian husky','Size',3),
--     (131,'siberian husky','Easy To Train',2),
--     (131,'siberian husky','Energy Level',5),
--     (131,'siberian husky','Exercise Needs',5),
--     (132,'silky terrier','Adapts Well to Apartment Living',5),
--     (132,'silky terrier','Good For Novice Owners',3),
--     (132,'silky terrier','Sensitivity Level',3),
--     (132,'silky terrier','Tolerates Being Alone',3),
--     (132,'silky terrier','Affectionate with Family',4),
--     (132,'silky terrier','Incredibly Kid Friendly Dogs',3),
--     (132,'silky terrier','Dog Friendly',2),
--     (132,'silky terrier','Amount Of Shedding',2),
--     (132,'silky terrier','Size',1),
--     (132,'silky terrier','Easy To Train',4),
--     (132,'silky terrier','Energy Level',4),
--     (132,'silky terrier','Exercise Needs',3),
--     (133,'staffordshire bull terrier','Adapts Well to Apartment Living',3),
--     (133,'staffordshire bull terrier','Good For Novice Owners',1),
--     (133,'staffordshire bull terrier','Sensitivity Level',4),
--     (133,'staffordshire bull terrier','Tolerates Being Alone',2),
--     (133,'staffordshire bull terrier','Affectionate with Family',5),
--     (133,'staffordshire bull terrier','Incredibly Kid Friendly Dogs',5),
--     (133,'staffordshire bull terrier','Dog Friendly',1),
--     (133,'staffordshire bull terrier','Amount Of Shedding',3),
--     (133,'staffordshire bull terrier','Size',2),
--     (133,'staffordshire bull terrier','Easy To Train',2),
--     (133,'staffordshire bull terrier','Energy Level',3),
--     (133,'staffordshire bull terrier','Exercise Needs',4),
--     (134,'standard schnauzer','Adapts Well to Apartment Living',4),
--     (134,'standard schnauzer','Good For Novice Owners',2),
--     (134,'standard schnauzer','Sensitivity Level',4),
--     (134,'standard schnauzer','Tolerates Being Alone',2),
--     (134,'standard schnauzer','Affectionate with Family',4),
--     (134,'standard schnauzer','Incredibly Kid Friendly Dogs',4),
--     (134,'standard schnauzer','Dog Friendly',3),
--     (134,'standard schnauzer','Amount Of Shedding',1),
--     (134,'standard schnauzer','Size',3),
--     (134,'standard schnauzer','Easy To Train',3),
--     (134,'standard schnauzer','Energy Level',5),
--     (134,'standard schnauzer','Exercise Needs',5),
--     (135,'tibetan mastiff','Adapts Well to Apartment Living',1),
--     (135,'tibetan mastiff','Good For Novice Owners',1),
--     (135,'tibetan mastiff','Sensitivity Level',5),
--     (135,'tibetan mastiff','Tolerates Being Alone',1),
--     (135,'tibetan mastiff','Affectionate with Family',5),
--     (135,'tibetan mastiff','Incredibly Kid Friendly Dogs',5),
--     (135,'tibetan mastiff','Dog Friendly',5),
--     (135,'tibetan mastiff','Amount Of Shedding',2),
--     (135,'tibetan mastiff','Size',5),
--     (135,'tibetan mastiff','Easy To Train',1),
--     (135,'tibetan mastiff','Energy Level',4),
--     (135,'tibetan mastiff','Exercise Needs',2),
--     (136,'tibetan spaniel','Adapts Well to Apartment Living',5),
--     (136,'tibetan spaniel','Good For Novice Owners',4),
--     (136,'tibetan spaniel','Sensitivity Level',5),
--     (136,'tibetan spaniel','Tolerates Being Alone',1),
--     (136,'tibetan spaniel','Affectionate with Family',5),
--     (136,'tibetan spaniel','Incredibly Kid Friendly Dogs',5),
--     (136,'tibetan spaniel','Dog Friendly',4),
--     (136,'tibetan spaniel','Amount Of Shedding',3),
--     (136,'tibetan spaniel','Size',1),
--     (136,'tibetan spaniel','Easy To Train',4),
--     (136,'tibetan spaniel','Energy Level',3),
--     (136,'tibetan spaniel','Exercise Needs',4),
--     (137,'tibetan terrier','Adapts Well to Apartment Living',5),
--     (137,'tibetan terrier','Good For Novice Owners',3),
--     (137,'tibetan terrier','Sensitivity Level',4),
--     (137,'tibetan terrier','Tolerates Being Alone',1),
--     (137,'tibetan terrier','Affectionate with Family',5),
--     (137,'tibetan terrier','Incredibly Kid Friendly Dogs',5),
--     (137,'tibetan terrier','Dog Friendly',4),
--     (137,'tibetan terrier','Amount Of Shedding',1),
--     (137,'tibetan terrier','Size',2),
--     (137,'tibetan terrier','Easy To Train',4),
--     (137,'tibetan terrier','Energy Level',5),
--     (137,'tibetan terrier','Exercise Needs',5),
--     (138,'toy fox terrier','Adapts Well to Apartment Living',5),
--     (138,'toy fox terrier','Good For Novice Owners',3),
--     (138,'toy fox terrier','Sensitivity Level',4),
--     (138,'toy fox terrier','Tolerates Being Alone',1),
--     (138,'toy fox terrier','Affectionate with Family',5),
--     (138,'toy fox terrier','Incredibly Kid Friendly Dogs',4),
--     (138,'toy fox terrier','Dog Friendly',3),
--     (138,'toy fox terrier','Amount Of Shedding',4),
--     (138,'toy fox terrier','Size',1),
--     (138,'toy fox terrier','Easy To Train',3),
--     (138,'toy fox terrier','Energy Level',5),
--     (138,'toy fox terrier','Exercise Needs',5),
--     (139,'treeing walker coonhound','Adapts Well to Apartment Living',1),
--     (139,'treeing walker coonhound','Good For Novice Owners',2),
--     (139,'treeing walker coonhound','Sensitivity Level',5),
--     (139,'treeing walker coonhound','Tolerates Being Alone',2),
--     (139,'treeing walker coonhound','Affectionate with Family',4),
--     (139,'treeing walker coonhound','Incredibly Kid Friendly Dogs',4),
--     (139,'treeing walker coonhound','Dog Friendly',3),
--     (139,'treeing walker coonhound','Amount Of Shedding',3),
--     (139,'treeing walker coonhound','Size',4),
--     (139,'treeing walker coonhound','Easy To Train',2),
--     (139,'treeing walker coonhound','Energy Level',4),
--     (139,'treeing walker coonhound','Exercise Needs',5),
--     (140,'vizsla','Adapts Well to Apartment Living',1),
--     (140,'vizsla','Good For Novice Owners',3),
--     (140,'vizsla','Sensitivity Level',5),
--     (140,'vizsla','Tolerates Being Alone',1),
--     (140,'vizsla','Affectionate with Family',5),
--     (140,'vizsla','Incredibly Kid Friendly Dogs',5),
--     (140,'vizsla','Dog Friendly',5),
--     (140,'vizsla','Amount Of Shedding',2),
--     (140,'vizsla','Size',3),
--     (140,'vizsla','Easy To Train',5),
--     (140,'vizsla','Energy Level',5),
--     (140,'vizsla','Exercise Needs',5),
--     (141,'weimaraner','Adapts Well to Apartment Living',1),
--     (141,'weimaraner','Good For Novice Owners',2),
--     (141,'weimaraner','Sensitivity Level',5),
--     (141,'weimaraner','Tolerates Being Alone',1),
--     (141,'weimaraner','Affectionate with Family',5),
--     (141,'weimaraner','Incredibly Kid Friendly Dogs',4),
--     (141,'weimaraner','Dog Friendly',3),
--     (141,'weimaraner','Amount Of Shedding',4),
--     (141,'weimaraner','Size',4),
--     (141,'weimaraner','Easy To Train',4),
--     (141,'weimaraner','Energy Level',5),
--     (141,'weimaraner','Exercise Needs',5),
--     (142,'west highland white terrier','Adapts Well to Apartment Living',4),
--     (142,'west highland white terrier','Good For Novice Owners',4),
--     (142,'west highland white terrier','Sensitivity Level',4),
--     (142,'west highland white terrier','Tolerates Being Alone',2),
--     (142,'west highland white terrier','Affectionate with Family',5),
--     (142,'west highland white terrier','Incredibly Kid Friendly Dogs',4),
--     (142,'west highland white terrier','Dog Friendly',5),
--     (142,'west highland white terrier','Amount Of Shedding',4),
--     (142,'west highland white terrier','Size',2),
--     (142,'west highland white terrier','Easy To Train',4),
--     (142,'west highland white terrier','Energy Level',4),
--     (142,'west highland white terrier','Exercise Needs',4),
--     (143,'whippet','Adapts Well to Apartment Living',5),
--     (143,'whippet','Good For Novice Owners',3),
--     (143,'whippet','Sensitivity Level',5),
--     (143,'whippet','Tolerates Being Alone',2),
--     (143,'whippet','Affectionate with Family',5),
--     (143,'whippet','Incredibly Kid Friendly Dogs',5),
--     (143,'whippet','Dog Friendly',4),
--     (143,'whippet','Amount Of Shedding',2),
--     (143,'whippet','Size',3),
--     (143,'whippet','Easy To Train',4),
--     (143,'whippet','Energy Level',5),
--     (143,'whippet','Exercise Needs',5),
--     (144,'yorkipoo','Adapts Well to Apartment Living',5),
--     (144,'yorkipoo','Good For Novice Owners',5),
--     (144,'yorkipoo','Sensitivity Level',4),
--     (144,'yorkipoo','Tolerates Being Alone',3),
--     (144,'yorkipoo','Affectionate with Family',5),
--     (144,'yorkipoo','Incredibly Kid Friendly Dogs',4),
--     (144,'yorkipoo','Dog Friendly',3),
--     (144,'yorkipoo','Amount Of Shedding',1),
--     (144,'yorkipoo','Size',1),
--     (144,'yorkipoo','Easy To Train',4),
--     (144,'yorkipoo','Energy Level',5),
--     (144,'yorkipoo','Exercise Needs',3),
--     (145,'yorkshire terrier','Adapts Well to Apartment Living',5),
--     (145,'yorkshire terrier','Good For Novice Owners',4),
--     (145,'yorkshire terrier','Sensitivity Level',5),
--     (145,'yorkshire terrier','Tolerates Being Alone',2),
--     (145,'yorkshire terrier','Affectionate with Family',4),
--     (145,'yorkshire terrier','Incredibly Kid Friendly Dogs',2),
--     (145,'yorkshire terrier','Dog Friendly',3),
--     (145,'yorkshire terrier','Amount Of Shedding',2),
--     (145,'yorkshire terrier','Size',1),
--     (145,'yorkshire terrier','Easy To Train',3);
-- INSERT INTO breeds (breed_id, breed_name, attribute, score) 
-- VALUES
--     (145,'yorkshire terrier','Energy Level',5),
--     (145,'yorkshire terrier','Exercise Needs',4);


INSERT INTO breeds VALUES
    ('affenpinscher'),
    ('afghan hound'),
    ('akita'),
    ('alaskan malamute'),
    ('american bulldog'),
    ('american eskimo dog'),
    ('american foxhound'),
    ('american pit bull terrier'),
    ('american staffordshire terrier'),
    ('australian cattle dog'),
    ('australian kelpie'),
    ('australian shepherd'),
    ('australian terrier'),
    ('basenji'),
    ('basset hound'),
    ('beagle'),
    ('bearded collie'),
    ('bernese mountain dog'),
    ('bichon frise'),
    ('black and tan coonhound'),
    ('black mouth cur'),
    ('bloodhound'),
    ('bluetick coonhound'),
    ('boerboel'),
    ('bolognese'),
    ('border collie'),
    ('border terrier'),
    ('boston terrier'),
    ('boxer'),
    ('boykin spaniel'),
    ('brittany'),
    ('brussels griffon'),
    ('bull terrier'),
    ('bulldog'),
    ('bullmastiff'),
    ('cairn terrier'),
    ('cane corso'),
    ('cardigan welsh corgi'),
    ('catahoula leopard dog'),
    ('caucasian shepherd dog'),
    ('cavalier king charles spaniel'),
    ('chesapeake bay retriever'),
    ('chihuahua'),
    ('chinese crested'),
    ('chinese shar pei'),
    ('chinook'),
    ('chow chow'),
    ('clumber spaniel'),
    ('cockapoo'),
    ('cocker spaniel'),
    ('collie'),
    ('curly coated retriever'),
    ('dachshund'),
    ('dalmatian'),
    ('doberman pinscher'),
    ('dogo argentino'),
    ('dogue de bordeaux'),
    ('dutch shepherd'),
    ('english cocker spaniel'),
    ('english foxhound'),
    ('english setter'),
    ('english springer spaniel'),
    ('english toy spaniel'),
    ('finnish lapphund'),
    ('finnish spitz'),
    ('flat coated retriever'),
    ('fox terrier'),
    ('french bulldog'),
    ('german pinscher'),
    ('german shepherd dog'),
    ('german shorthaired pointer'),
    ('german wirehaired pointer'),
    ('giant schnauzer'),
    ('golden retriever'),
    ('goldendoodle'),
    ('great dane'),
    ('great pyrenees'),
    ('greater swiss mountain dog'),
    ('greyhound'),
    ('harrier'),
    ('havanese'),
    ('ibizan hound'),
    ('icelandic sheepdog'),
    ('irish setter'),
    ('irish terrier'),
    ('irish wolfhound'),
    ('italian greyhound'),
    ('jack russell terrier'),
    ('japanese chin'),
    ('japanese spitz'),
    ('karelian bear dog'),
    ('jindo'),
    ('labradoodle'),
    ('labrador retriever'),
    ('maltese'),
    ('maltese shih tzu'),
    ('maltipoo'),
    ('manchester terrier'),
    ('mastiff'),
    ('miniature pinscher'),
    ('miniature schnauzer'),
    ('mudi'),
    ('neapolitan mastiff'),
    ('newfoundland'),
    ('norfolk terrier'),
    ('norwegian elkhound'),
    ('norwich terrier'),
    ('old english sheepdog'),
    ('papillon'),
    ('pekingese'),
    ('pembroke welsh corgi'),
    ('pharaoh hound'),
    ('plott'),
    ('pocket beagle'),
    ('pointer'),
    ('pomeranian'),
    ('pomsky'),
    ('poodle'),
    ('pug'),
    ('puggle'),
    ('rat terrier'),
    ('redbone coonhound'),
    ('rhodesian ridgeback'),
    ('rottweiler'),
    ('saint bernard'),
    ('saluki'),
    ('schipperke'),
    ('scottish terrier'),
    ('shetland sheepdog'),
    ('shiba inu'),
    ('shih tzu'),
    ('siberian husky'),
    ('silky terrier'),
    ('staffordshire bull terrier'),
    ('standard schnauzer'),
    ('tibetan mastiff'),
    ('tibetan spaniel'),
    ('tibetan terrier'),
    ('toy fox terrier'),
    ('treeing walker coonhound'),
    ('vizsla'),
    ('weimaraner'),
    ('west highland white terrier'),
    ('whippet'),
    ('yorkipoo'),
    ('yorkshire terrier');



INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Incredibly Kid Friendly Dogs',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Incredibly Kid Friendly Dogs',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Tolerates Being Alone',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Exercise Needs',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Tolerates Being Alone',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Affectionate with Family',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Tolerates Being Alone',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Affectionate with Family',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Incredibly Kid Friendly Dogs',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Tolerates Being Alone',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Incredibly Kid Friendly Dogs',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Affectionate with Family',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Tolerates Being Alone',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Tolerates Being Alone',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Affectionate with Family',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Tolerates Being Alone',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Exercise Needs',4);
