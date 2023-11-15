CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE news (
    news_id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    publication_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE ratings (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    news_id INT,
    ip_address VARCHAR(45) NOT NULL,
    rating_value INT CHECK (rating_value >= 1 AND rating_value <= 5),
    UNIQUE (news_id, ip_address),
    FOREIGN KEY (news_id) REFERENCES News(news_id)
);
