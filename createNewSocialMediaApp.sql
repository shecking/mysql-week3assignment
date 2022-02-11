DROP TABLE IF EXISTS UserComment;
DROP TABLE IF EXISTS UserPost;
DROP TABLE IF EXISTS AppUser;

CREATE TABLE AppUser(
user_id INT NOT NULL AUTO_INCREMENT,
un VARCHAR(50),
pw VARCHAR(50),
email VARCHAR(45),
PRIMARY KEY (user_id)
);

CREATE TABLE UserPost(
post_id INT NOT NULL AUTO_INCREMENT,
user_id INT,
post_content VARCHAR(280),
time_created TIMESTAMP,
PRIMARY KEY (post_id),
FOREIGN KEY (user_id) REFERENCES AppUser(user_id)
);

CREATE TABLE UserComment(
comment_id INT NOT NULL AUTO_INCREMENT,
post_id INT,
user_id INT,
comment_content VARCHAR(140),
time_created TIMESTAMP,
PRIMARY KEY (comment_id),
FOREIGN KEY (post_id) REFERENCES UserPost(post_id),
FOREIGN KEY (user_id) REFERENCES AppUser(user_id)
);