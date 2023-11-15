
CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);


CREATE TABLE news (
    news_id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    publication_time DATETIME NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


CREATE TABLE comments (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    news_id INT,
    commenter_name VARCHAR(255) NOT NULL,
    comment_text TEXT NOT NULL,
    comment_time DATETIME NOT NULL,
    FOREIGN KEY (news_id) REFERENCES news(news_id)
);


CREATE TABLE ratings (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    news_id INT,
    ip_address VARCHAR(15) NOT NULL,
    rating_value INT NOT NULL CHECK (rating_value BETWEEN 1 AND 5),
    rating_time DATETIME NOT NULL,
    FOREIGN KEY (news_id) REFERENCES news(news_id)
);
