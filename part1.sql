CREATE TABLE MotionPicture(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100), 
    rating INT,
    production VARCHAR(100), 
    budget INT
)

CREATE TABLE User(
    email VARCHAR(100) NOT NULL PRIMARY KEY,
    name VARCHAR(100), 
    age INT
)

CREATE TABLE Likes(
    uemail VARCHAR(100) NOT NULL,
    mpid INT NOT NULL,
    PRIMARY KEY (uemail, mpid),
    FOREIGN KEY (uemail) REFERENCES User(email)
        ON DELETE CASCADE,
    FOREIGN KEY (mpid) REFERENCES MotionPicture(id)
        ON DELETE CASCADE
)

CREATE TABLE Movie(
    mpid INT NOT NULL PRIMARY KEY,
    boxoffice_collection INT,
    FOREIGN KEY (mpid) REFERENCES MotionPicture(id)
        ON DELETE CASCADE
)

CREATE TABLE Series(
    mpid INT NOT NULL PRIMARY KEY,
    season_count INT,
    FOREIGN KEY (mpid) REFERENCES MotionPicture(id)
        ON DELETE CASCADE
)

