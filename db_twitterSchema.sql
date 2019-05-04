USE db_yuanzhli;
DROP TABLE IF EXISTS User;
create table User (
	User_ID int NOT NULL,
    User_Name VARCHAR(32),
    Avatar VARCHAR(32),
    Password VARCHAR(32),
	PRIMARY KEY(User_ID)
	
);
DROP TABLE IF EXISTS Tweet;
create table Tweet (
	Tweet_ID int NOT NULL,
    Tweet_Content VARCHAR(180),
    Date int,
	PRIMARY KEY (Tweet_ID)
);
DROP TABLE IF EXISTS Hashtag;
create table Hashtag (
	Hashtag_ID int NOT NULL,
    Hashtag_Title VARCHAR(32),
    Trend_Hotness int DEFAULT 0,
	PRIMARY KEY (Hashtag_ID)
);
DROP TABLE IF EXISTS Moments;
create table Moments (
	Moment_ID int NOT NULL,
    Moment_Title VARCHAR(32),
    Moment_Content VARCHAR(180),
	PRIMARY KEY (Moment_ID)
);

DROP TABLE IF EXISTS Reply;
create table Reply (
	Reply_ID int NOT NULL,
    Reply_Content VARCHAR(180),
    User_ID int NOT NULL,
	PRIMARY KEY (Reply_ID)
);

DROP TABLE IF EXISTS Message;
create table Message (
	Message_ID int NOT NULL,
    Message_Content VARCHAR(180),
    Sender_ID int NOT NULL,
    Time_Stamp VARCHAR(16),
    Conversation_ID int DEFAULT 0,
	PRIMARY KEY (Message_ID)
);

DROP TABLE IF EXISTS Like_Table;
create table Like_Table (
	Like_ID int NOT NULL,
    User_ID int NOT NULL,
	PRIMARY KEY (Like_ID)
);

DROP TABLE IF EXISTS Favorite_List;
create table Favorite_List (
	List_ID int NOT NULL,
    List_Name VARCHAR(32),
    User_ID int NOT NULL,
	PRIMARY KEY (Like_ID)
);

DROP TABLE IF EXISTS User_Post_Tweet;
create table User_Post_Tweet (
	Tweet_ID int NOT NULL,
    User_ID int NOT NULL
);

DROP TABLE IF EXISTS User_Browse_Tweet;
create table User_Browse_Tweet (
	Tweet_ID int NOT NULL,
    User_ID int NOT NULL
);
DROP TABLE IF EXISTS Retweet;
create table Retweet (
	Retweeted_Tweet_ID int NOT NULL,
    Retweeting_Tweet_ID int NOT NULL
);
DROP TABLE IF EXISTS Tweet_In_Hashtag;
create table Tweet_In_Hashtag (
	Tweet_ID int NOT NULL,
    Hashtag_ID int NOT NULL
);

DROP TABLE IF EXISTS Moment_Tweet;
create table Moment_Tweet (
	Tweet_ID int NOT NULL,
    Moment_ID int NOT NULL
);
DROP TABLE IF EXISTS Reply_Tweet;
create table Reply_Tweet (
	Tweet_ID int NOT NULL,
    Reply_ID int NOT NULL
);
DROP TABLE IF EXISTS User_Message;
create table User_Message (
	Message_ID int NOT NULL,
    User_ID int NOT NULL
);

DROP TABLE IF EXISTS User_Like;
create table User_Like (
	Tweet_ID int NOT NULL,
    Like_ID int NOT NULL
);

DROP TABLE IF EXISTS Favorite_Tweet;
create table Favorite_Tweet (
	Tweet_ID int NOT NULL,
    List_ID int NOT NULL
);

INSERT INTO User (User_ID,User_Name,Password) VALUES (0,"Eric"), (1, "John"),(2,"Jane"),(3,"victor"),(4,"nike"),(5,"jessca"),(6,"lora"),(7,"katherine");

INSERT INTO Tweet (Tweet_ID,Tweet_Content,Date) VALUES (0,"today I made food, and it teasts good. #happy moment in life",1556943553), (1,"physics lecture is so hard#torment in college",1546943553), 
(2,"jazz concert is amazing #amazing time in college",1556943563), (3, "I am dying at final week#torment in college",1556944553),(4,"I love data.#amazing time in college",1556943559)
,(5,"happy graduation,#happy moment in life",1556943558),(6,"go hawk s#amazing time in college",1556943550);

INSERT INTO User_Post_Tweet(User_ID, Tweet_ID) VALUES (1,2),(1,0),(2,3),(2,1),(3,4),(4,5),(4,6);

INSERT INTO User_Browse_Tweet(User_ID, Tweet_ID) VALUES (0,1),(0,2),(0,3),(2,0),(1,3),(1,4),(2,4),(3,4),(4,0);

INSERT INTO Moments(Moment_ID,Moment_Content,Moment_Title) VALUES(0,"when we live the life, there's many happy time","Life"),(1,"lets see what we have about students complain","college");

INSERT INTO Moment_Tweet(Moment_ID,Tweet_ID) VALUES(0,0),(0,5),(0,6),(1,1),(1,2),(1,3),(1,4);

INSERT INTO Hashtag(Hashtag_ID,Hashtag_Title,Trend_Hotness) VALUES(0,"happy moment in life",2),(1,"torment in college",2),(2,"amazing time in college",3);

INSERT INTO Hashtag_Tweet(Hashtag_ID,Tweet_ID) VALUES(0,0),(0,5),(1,1),(1,3),(2,2),(2,4),(2,6);

INSERT INTO Reply(Reply_ID,User_ID,Reply_Content) VALUES(0,0,"great living attitude"),(1,1,"man I like the food"),(2,0,"me too, I also hate physics"),(3,4,"I have been there bro"),
(4,5,"what kind of jazz style you listened?"),(5,3,"I am gonna stay up all night to finish project"),(6,3,"wish you have a wonderful life after graduate")
,(7,6,"dude, are you taking database this semester?");

INSERT INTO Reply_Tweet(Reply_ID,Tweet_ID) VALUES(0,0),(1,0),(2,1),(3,3),(4,2),(5,3),(6,5),(7,4);

INSERT INTO Message(Message_ID,Sender_ID,Conversation_ID,Message_Content,Time_Stamp) VALUES(0,0,0,"hi there",1556943553),(1,1,0,"what is your name bro?",1556943554),
(2,3,"can I ask which concert you attended?",1556943553),(3,4,"which course your taking",1556943553),(4,3,"which physics section you take",1556943553),
(5,6,"I like your food, can I have the recipet?");

INSERT INTO User_Message(User_ID,Message_ID) VALUES(1,0),(0,1),(1,2),(3,3),(2,4),(1,5);











