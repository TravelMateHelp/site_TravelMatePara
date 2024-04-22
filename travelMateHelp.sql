use travel_mate_help

create table users(
    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    lastname VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(200),
    image VARCHAR(200),
    token VARCHAR(200)
);

create table complaint(
    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    description TEXT,
    image VARCHAR(200),
    --  link do google maps
    location VARCHAR(150),
    category VARCHAR(50),
    length VARCHAR(50),
    users_id INT(11) UNSIGNED,
    FOREIGN KEY(users_id) REFERENCES users(id)
    
);

create table reviews(
    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    rating INT,
    reviews TEXT,
    users_id INT(11) UNSIGNED,
    complaint_id INT(11) UNSIGNED,
    FOREIGN KEY(users_id) REFERENCES users(id),
    FOREIGN KEY(complaint_id) REFERENCES complaint(id)
);