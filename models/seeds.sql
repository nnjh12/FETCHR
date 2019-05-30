INSERT INTO users (name, zipcode)
VALUES ("Alec", 19146),
        ("Ben Franklin", 19103),
        ("Will Smith", 19119);

INSERT INTO surveys (userId, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12)
VALUES (1, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3),
        (2, 1, 2, 3, 1, 2, 2, 2, 2, 3, 1, 2, 3),
        (3, 1, 2, 3, 1, 2, 2, 2, 2, 3, 1, 2, 3);  

INSERT INTO questions (question)
VALUES ("What type of home do you live in?"),
       ("What type of environment do you live in?"),
       ("Do you have small children?"),
       ("Do you currently have any animals?"),
       ("Have you owned your own dog before?"),
       ("What arrangements will you be making for your dog?"),
       ("What type of companionship are you looking for?"),
       ("How would you like to spend time with your dog?"),
       ("How active are you?"),
       ("How much training will you be providing?"),
       ("What size dog are you looking for?"),
       ("How much shedding are you willing to live with?");

INSERT INTO choices (questionId, choice, value)
VALUES ( 
(SELECT id FROM questions WHERE question = "What type of home do you live in?"),"Apartment",5),
((SELECT id FROM questions WHERE question = "What type of home do you live in?"),"Small Home",3),
((SELECT id FROM questions WHERE question = "What type of home do you live in?"),"Large Home",1),
((SELECT id FROM questions WHERE question = "Do you currently have any animals?"),"Yes",4),
((SELECT id FROM questions WHERE question = "Do you currently have any animals?"),"No",2),
((SELECT id FROM questions WHERE question = "What type of environment do you live in?"),"Urban",1),
((SELECT id FROM questions WHERE question = "What type of environment do you live in?"),"Suburb",3),
((SELECT id FROM questions WHERE question = "What type of environment do you live in?"),"Rural",5),
((SELECT id FROM questions WHERE question = "What arrangements will you be making for your dog?"),"I'm planning to leave him alone until I get home",5),
((SELECT id FROM questions WHERE question = "What arrangements will you be making for your dog?"),"I will make sure they are walked at least once during the day",3),
((SELECT id FROM questions WHERE question = "What arrangements will you be making for your dog?"),"I will be taking them to dog daycare or equivalent",1),
((SELECT id FROM questions WHERE question = "Do you have small children?"),"Yes",4),
((SELECT id FROM questions WHERE question = "Do you have small children?"),"No",2),
((SELECT id FROM questions WHERE question = "Do you have small children?"),"No, but we want to have a baby soon",4),
((SELECT id FROM questions WHERE question = "How active are you?"),"Not Very",1),
((SELECT id FROM questions WHERE question = "How active are you?"),"Moderately Active",3),
((SELECT id FROM questions WHERE question = "How active are you?"),"Very Active",5),
((SELECT id FROM questions WHERE question = "How would you like to spend time with your dog?"),"Let's binge watch everything on Netflix",1),
((SELECT id FROM questions WHERE question = "How would you like to spend time with your dog?"),"Let's go for a walk..but just not too far",3),
((SELECT id FROM questions WHERE question = "How would you like to spend time with your dog?"),"What do you mean you're tired? It's only been 5 hours",5),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"Small enough to fit in a bag",1),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"Not tiny, but still fits in my lap",3),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"Too big for my lap, but not too big for a large dog door",4),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"I want people to question if it's a bear",5),
((SELECT id FROM questions WHERE question = "What type of companionship are you looking for?"),"A dog that always wants to snuggle",5),
((SELECT id FROM questions WHERE question = "What type of companionship are you looking for?"),"Sometimes wants to snuggle but is also ok on their own",3),
((SELECT id FROM questions WHERE question = "What type of companionship are you looking for?"),"A very independant dog",1),
((SELECT id FROM questions WHERE question = "How much shedding are you willing to live with?"),"As little as possible",1),
((SELECT id FROM questions WHERE question = "How much shedding are you willing to live with?"),"I don't mind having to do a quick lint roll before leaving the house",3),
((SELECT id FROM questions WHERE question = "How much shedding are you willing to live with?"),"The fluffier the better!",5),
((SELECT id FROM questions WHERE question = "How much training will you be providing?"),"They could be accepted into the police academy",5),
((SELECT id FROM questions WHERE question = "How much training will you be providing?"),"The basics plus walking off the leash",3),
((SELECT id FROM questions WHERE question = "How much training will you be providing?"),"Just the basics",1),
((SELECT id FROM questions WHERE question = "Have you owned your own dog before?"),"Yes",1),
((SELECT id FROM questions WHERE question = "Have you owned your own dog before?"),"No",5),
((SELECT id FROM questions WHERE question = "Have you owned your own dog before?"),"No, but my family had one",3);      


INSERT INTO breeds (breed_name,image) VALUES
    ('affenpinscher',"https://images.dog.ceo/breeds/affenpinscher/n02110627_13014.jpg"),
    ('afghan hound',"https://images.dog.ceo/breeds/hound-afghan/n02088094_980.jpg"),
    ('akita',"https://images.dog.ceo/breeds/akita/Akita_Inu_dog.jpg"),
    ('alaskan malamute',"https://images.dog.ceo/breeds/malamute/n02110063_9360.jpg"),
    ('american bulldog',"https://vetstreet.brightspotcdn.com/dims4/default/a473f63/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fc5%2Fc9%2Fd3e1617243a0af32689019bba22c%2Famerican-bulldog-ap-04q7il-645-x-380.jpg"),
    ('american eskimo dog',"https://images.dog.ceo/breeds/eskimo/n02109961_4054.jpg"),
    ('american foxhound',"https://vetstreet-brightspot.s3.amazonaws.com/19/f231d0a41b11e087a80050568d634f/file/American-Foxhound-3-645mk062311.jpg"),
    ('american pit bull terrier',"https://images.dog.ceo/breeds/terrier-american/n02093428_2592.jpg"),
    ('american staffordshire terrier',"https://images.dog.ceo/breeds/bullterrier-staffordshire/n02093256_4263.jpg"),
    ('australian cattle dog',"https://images.unsplash.com/photo-1510525977025-0ecc4d8a49d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"),
    ('australian kelpie',"https://images.dog.ceo/breeds/kelpie/n02105412_4932.jpg"),
    ('australian shepherd',"https://images.unsplash.com/photo-1549223123-f1ff26a8448e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"),
    ('australian terrier',"https://images.dog.ceo/breeds/terrier-australian/n02096294_8268.jpg"),
    ('basenji',"https://images.dog.ceo/breeds/basenji/n02110806_3531.jpg"),
    ('basset hound',"https://images.dog.ceo/breeds/hound-basset/n02088238_9626.jpg"),
    ('beagle',"https://images.dog.ceo/breeds/beagle/n02088364_2143.jpg"),
    ('bearded collie',"https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwi475nux77iAhUFZN8KHR6MA-kQjRx6BAgBEAU&url=https%3A%2F%2Fwww.akc.org%2Fdog-breeds%2Fbearded-collie%2F&psig=AOvVaw0jHrdjZNdJBHbMHLn5Vjuq&ust=1559144377619327"),
    ('bernese mountain dog',"https://images.dog.ceo/breeds/mountain-bernese/n02107683_6580.jpg"),
    ('bichon frise',"https://images.unsplash.com/photo-1537123547273-e59f4f437f1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"),
    ('black and tan coonhound',"https://images.dog.ceo/breeds/coonhound/n02089078_465.jpg"),
    ('black mouth cur',"https://www.dogbreedslist.info/uploads/allimg/dog-pictures/Black-Mouth-Cur-2.jpg"),
    ('bloodhound',"https://images.dog.ceo/breeds/hound-blood/n02088466_7486.jpg"),
    ('bluetick coonhound',"https://images.dog.ceo/breeds/bluetick/n02088632_70.jpg"),
    ('boerboel',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/13000039/Boerboel-On-White-03.jpg"),
    ('bolognese',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/07171038/AdobeStock_71665389.jpg"),
    ('border collie',"https://images.dog.ceo/breeds/collie-border/n02106166_3395.jpg"),
    ('border terrier',"https://images.dog.ceo/breeds/terrier-border/n02093754_3634.jpg"),
    ('boston terrier',"https://images.dog.ceo/breeds/bulldog-boston/n02096585_9725.jpg"),
    ('boxer',"https://images.dog.ceo/breeds/boxer/n02108089_11687.jpg"),
    ('boykin spaniel',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/04160609/American-Water-Spaniel.1-400x267.jpg"),
    ('brittany',"https://images.dog.ceo/breeds/spaniel-brittany/n02101388_10017.jpg"),
    ('brussels griffon',"https://images.unsplash.com/photo-1531719045252-d9721d0d1ba8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1647&q=80"),
    ('bull terrier',"https://images.unsplash.com/photo-1531860588597-5f93b7296082?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"),
    ('bulldog',"https://images.unsplash.com/photo-1504226646080-dbdec09a1fac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"),
    ('bullmastiff',"https://images.dog.ceo/breeds/mastiff-bull/n02108422_1096.jpg"),
    ('cairn terrier',"https://images.dog.ceo/breeds/cairn/n02096177_5785.jpg"),
    ('cane corso',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/18124233/Cane-Corso.jpg"),
    ('cardigan welsh corgi',"https://images.dog.ceo/breeds/corgi-cardigan/n02113186_10431.jpg"),
    ('catahoula leopard dog',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/14120737/GettyImages-627454522.jpg"),
    ('caucasian shepherd dog',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/14131930/GettyImages-1095398138.jpg"),
    ('cavalier king charles spaniel',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12234921/Cavalier-King-Charles-Spaniel-On-White-03.jpg"),
    ('chesapeake bay retriever',"https://images.dog.ceo/breeds/retriever-chesapeake/n02099849_493.jpg"),
    ('chihuahua',"https://images.dog.ceo/breeds/chihuahua/n02085620_3826.jpg"),
    ('chinese crested',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12234649/Chinese-Crested-On-White-01.jpg"),
    ('chinese shar pei',"https://images.unsplash.com/photo-1535726890525-b0557398cb32?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80"),
    ('chinook',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/31112430/Chinook-portrait-11-800x600.jpg"),
    ('chow chow',"https://images.dog.ceo/breeds/chow/n02112137_16815.jpg"),
    ('clumber spaniel',"https://images.dog.ceo/breeds/clumber/n02101556_2677.jpg"),
    ('cockapoo',"https://images.unsplash.com/photo-1534361960057-19889db9621e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80"),
    ('cocker spaniel',"https://images.dog.ceo/breeds/spaniel-cocker/n02102318_13800.jpg"),
    ('collie',"https://images.unsplash.com/photo-1524729429516-485db0307e59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80"),
    ('curly coated retriever',"https://images.dog.ceo/breeds/retriever-curly/n02099429_853.jpg"),
    ('dachshund',"https://images.dog.ceo/breeds/dachshund/foxhound-53951_640.jpg"),
    ('dalmatian',"https://images.dog.ceo/breeds/dalmatian/cooper1.jpg"),
    ('doberman pinscher',"https://images.dog.ceo/breeds/doberman/n02107142_16400.jpg"),
    ('dogo argentino',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/11141753/Dogo.06.jpg"),
    ('dogue de bordeaux',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12213013/Dogue-de-Bordeaux-on-white-07.jpg"),
    ('dutch shepherd',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12205622/Dutch-Shepherd-on-White-01.jpg"),
    ('english cocker spaniel',"https://images.dog.ceo/breeds/spaniel-cocker/n02102318_13800.jpg"),
    ('english foxhound',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12233649/English-Foxhound-On-White-02.jpg"),
    ('english setter',"https://images.dog.ceo/breeds/setter-english/n02100735_7013.jpg"),
    ('english springer spaniel',"https://images.dog.ceo/breeds/springer-english/n02102040_6846.jpg"),
    ('english toy spaniel',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12233503/English-Toy-Spaniel-On-White-01.jpg"),
    ('finnish lapphund',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12233323/Finnish-Lapphund-On-White-01.jpg"),
    ('finnish spitz',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12233256/Finnish-Spitz-On-White-01.jpg"),
    ('flat coated retriever',"https://images.dog.ceo/breeds/retriever-flatcoated/n02099267_721.jpg"),
    ('fox terrier',"https://images.dog.ceo/breeds/terrier-fox/n02095314_3451.jpg"),
    ('french bulldog',"https://images.dog.ceo/breeds/bulldog-french/n02108915_57.jpg"),
    ('german pinscher',"https://images.dog.ceo/breeds/doberman/n02107142_16400.jpg"),
    ('german shepherd dog',"https://images.dog.ceo/breeds/germanshepherd/n02106662_18405.jpg"),
    ('german shorthaired pointer',"https://images.dog.ceo/breeds/pointer-german/n02100236_485.jpg"),
    ('german wirehaired pointer',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12232911/German-Wirehaired-Pointer-On-White-01.jpg"),
    ('giant schnauzer',"https://images.dog.ceo/breeds/schnauzer-giant/n02097130_2091.jpg"),
    ('golden retriever',"https://images.dog.ceo/breeds/retriever-golden/n02099601_5160.jpg"),
    ('goldendoodle',"https://vetstreet.brightspotcdn.com/dims4/default/61ede8e/2147483647/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fa5%2F187ce0a8b411e0a0d50050568d634f%2Ffile%2Fgoldendoodle-3-645mk070111.jpg"),
    ('great dane',"https://images.dog.ceo/breeds/dane-great/n02109047_25342.jpg"),
    ('great pyrenees',"https://images.dog.ceo/breeds/pyrenees/n02111500_2746.jpg"),
    ('greater swiss mountain dog',"https://images.dog.ceo/breeds/mountain-swiss/n02107574_261.jpg"),
    ('greyhound',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12232417/Greyhound-MP.jpg"),
    ('harrier',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/22174432/Harrier3.jpg"),
    ('havanese',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/19160307/Two-Havanese.jpg"),
    ('ibizan hound',"https://images.dog.ceo/breeds/hound-ibizan/n02091244_822.jpg"),
    ('icelandic sheepdog',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/19173242/Icelandic-Sheepdog.jpg"),
    ('irish setter',"https://images.dog.ceo/breeds/setter-irish/n02100877_722.jpg"),
    ('irish terrier',"https://images.dog.ceo/breeds/terrier-irish/n02093991_3653.jpg"),
    ('irish wolfhound',"https://images.dog.ceo/breeds/wolfhound-irish/n02090721_2319.jpg"),
    ('italian greyhound',"https://images.dog.ceo/breeds/greyhound-italian/n02091032_1547.jpg"),
    ('jack russell terrier',"https://images.dog.ceo/breeds/terrier-russell/little1.jpg"),
    ('japanese chin',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12210836/Japanese-Chin-on-White-01.jpg.jpg"),
    ('japanese spitz',"https://cdn3-www.dogtime.com/assets/uploads/2018/06/japanese-spitz-dog-breed-pictures-header-460x260.jpg"),
    ('karelian bear dog',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12195715/Karelian-Bear-Dog-MP.jpg"),
    ('jindo',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12231728/Jindo-On-White-01.jpg"),
    ('labradoodle',"https://images.unsplash.com/photo-1537219234791-81c444843c4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80"),
    ('labrador retriever',"https://images.dog.ceo/breeds/labrador/n02099712_3503.jpg"),
    ('maltese',"https://images.dog.ceo/breeds/maltese/n02085936_4713.jpg"),
    ('maltese shih tzu',"https://images.dog.ceo/breeds/maltese/n02085936_4713.jpg"),
    ('maltipoo',"https://images.dog.ceo/breeds/maltese/n02085936_4713.jpg"),
    ('manchester terrier',"https://images.dog.ceo/breeds/pinscher-miniature/n02107312_3426.jpg"),
    ('mastiff',"https://images.dog.ceo/breeds/mastiff-bull/n02108422_1096.jpg"),
    ('miniature pinscher',"https://images.dog.ceo/breeds/pinscher-miniature/n02107312_3426.jpg"),
    ('miniature schnauzer',"https://images.dog.ceo/breeds/schnauzer-miniature/n02097047_2126.jpg"),
    ('mudi',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12194438/Mudi-On-White-02.jpg"),
    ('neapolitan mastiff',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12213114/Neopolitan-Mastiff-slide10-.jpg"),
    ('newfoundland',"https://images.dog.ceo/breeds/newfoundland/n02111277_3456.jpg"),
    ('norfolk terrier',"https://images.dog.ceo/breeds/terrier-norfolk/n02094114_2785.jpg"),
    ('norwegian elkhound',"https://images.dog.ceo/breeds/elkhound-norwegian/n02091467_3131.jpg"),
    ('norwich terrier',"https://images.dog.ceo/breeds/terrier-norwich/n02094258_52.jpg"),
    ('old english sheepdog',"https://images.dog.ceo/breeds/sheepdog-english/n02105641_12297.jpg"),
    ('papillon',"https://images.dog.ceo/breeds/papillon/n02086910_2188.jpg"),
    ('pekingese',"https://images.dog.ceo/breeds/pekinese/n02086079_11664.jpg"),
    ('pembroke welsh corgi',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/25204906/Day1_Dec13_52.jpg"),
    ('pharaoh hound',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12214239/Pharaoh-Hound-On-White-03.jpg"),
    ('plott',"http://www.pethealthnetwork.com/sites/default/files/content/images/plott-hound153492033.png"),
    ('pocket beagle',"https://images.dog.ceo/breeds/beagle/n02088364_2143.jpg"),
    ('pointer',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12225725/Pointer-MP.jpg"),
    ('pomeranian',"https://images.dog.ceo/breeds/pomeranian/n02112018_3666.jpg"),
    ('pomsky',"https://cdn0.wideopenpets.com/wp-content/uploads/2018/03/PomskyFI-770x405.jpg"),
    ('poodle',"https://images.dog.ceo/breeds/poodle-standard/n02113799_923.jpg"),
    ('pug',"https://images.dog.ceo/breeds/pug/n02110958_13263.jpg"),
    ('puggle',"https://vetstreet.brightspotcdn.com/dims4/default/484e465/2147483647/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F9c%2F8ef600aec511e088ab0050568d634f%2Ffile%2FPuggle-2-645km071411.jpg"),
    ('rat terrier',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12225148/Rat-Terrier-On-White-01.jpg"),
    ('redbone coonhound',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12225124/Redbone-Coonhound-MP.jpg"),
    ('rhodesian ridgeback',"https://images.dog.ceo/breeds/ridgeback-rhodesian/n02087394_10588.jpg"),
    ('rottweiler',"https://images.dog.ceo/breeds/rottweiler/n02106550_4217.jpg"),
    ('saint bernard',"https://images.dog.ceo/breeds/stbernard/n02109525_5264.jpg"),
    ('saluki',"https://images.dog.ceo/breeds/saluki/n02091831_6427.jpg"),
    ('schipperke',"https://images.dog.ceo/breeds/schipperke/n02104365_9595.jpg"),
    ('scottish terrier',"https://images.dog.ceo/breeds/terrier-scottish/n02097298_8178.jpg"),
    ('shetland sheepdog',"https://images.dog.ceo/breeds/sheepdog-shetland/n02105855_2094.jpg"),
    ('shiba inu',"https://images.dog.ceo/breeds/shiba/shiba-8.JPG"),
    ('shih tzu',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12224319/Shih-Tzu-On-White-05.jpg"),
    ('siberian husky',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/22184327/Siberian-Husky-on-White-12-800x600-1.jpg"),
    ('silky terrier',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12224133/Silky-Terrier-On-White-01.jpg"),
    ('staffordshire bull terrier',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12223801/Staffordshire-Bull-Terrier-MP.jpg"),
    ('standard schnauzer',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2018/10/17230943/standard-schnauzer-archival-image-stdschnauzer068.jpg"),
    ('tibetan mastiff',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12223558/Tibetan-Mastiff-On-White-03.jpg"),
    ('tibetan spaniel',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12223538/Tibetan-Spaniel-On-White-01.jpg"),
    ('tibetan terrier',"https://images.dog.ceo/breeds/terrier-tibetan/n02097474_3962.jpg"),
    ('toy fox terrier',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/26212614/Toy-Fox-Terrier-Puppies.jpg"),
    ('treeing walker coonhound',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12223344/Treeing-Walker-Coonhound-On-White-01.jpg"),
    ('vizsla',"https://images.dog.ceo/breeds/vizsla/n02100583_7522.jpg"),
    ('weimaraner',"https://images.dog.ceo/breeds/weimaraner/n02092339_7816.jpg"),
    ('west highland white terrier',"https://images.dog.ceo/breeds/terrier-westhighland/n02098286_3290.jpg"),
    ('whippet',"https://images.dog.ceo/breeds/whippet/n02091134_10618.jpg"),
    ('yorkipoo',"https://g77v3827gg2notadhhw9pew7-wpengine.netdna-ssl.com/wp-content/uploads/2016/01/bigstock-Cute-Yorkie-Poo-1174843-1024x732.jpg"),
    ('yorkshire terrier',"https://images.dog.ceo/breeds/terrier-yorkshire/n02094433_1312.jpg")
;

INSERT INTO breedMatches (userId, surveyId, breedId)
VALUES (1, 1, 1),
        (1, 1, 2),
        (1, 1, 3), 
        (2, 2, 4),
        (2, 2, 5),
        (2, 2, 6),
        (3, 3, 7),
        (3, 3, 8),
        (3, 3, 9);     



INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Kid Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Trainability',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Kid Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Kid Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Independent',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Trainability',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Trainability',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Kid Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Kid Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Exercise Needs',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Independent',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Affectionate',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Kid Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Independent',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Affectionate',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Kid Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Kid Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Independent',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Kid Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Trainability',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Trainability',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Affectionate',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Independent',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Independent',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Kid Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Kid Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Kid Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Kid Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Affectionate',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Trainability',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Independent',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Kid Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Trainability',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Trainability',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Trainability',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Independent',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Kid Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Independent',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Affectionate',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Kid Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Trainability',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Independent',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Affectionate',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Kid Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Trainability',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Exercise Needs',4);
