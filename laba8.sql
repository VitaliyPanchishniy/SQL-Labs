CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(100) NOT NULL,
    
);


CREATE TABLE tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT,
    author_id INT,
    task_description TEXT NOT NULL,
    task_due_date DATE,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id),
    FOREIGN KEY (author_id) REFERENCES Users(user_id)
);

CREATE TABLE task_creators (
    task_id INT,
    assignee_id INT,
    FOREIGN KEY (task_id) REFERENCES Tasks(task_id),
    FOREIGN KEY (assignee_id) REFERENCES Users(user_id),
    PRIMARY KEY (task_id, assignee_id)
);


CREATE TABLE files (
    file_id INT PRIMARY KEY AUTO_INCREMENT,
    file_name VARCHAR(255) NOT NULL,
    file_url VARCHAR(255) NOT NULL,
    file_type VARCHAR(50),
    linked_to_task_id INT,
    linked_to_project_id INT,
    FOREIGN KEY (linked_to_task_id) REFERENCES Tasks(task_id),
    FOREIGN KEY (linked_to_project_id) REFERENCES Projects(project_id)
);

