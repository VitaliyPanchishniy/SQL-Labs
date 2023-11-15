CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    UNIQUE (username)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(255) NOT NULL
);

CREATE TABLE project_users (
    project_id INT,
    user_id INT,
    PRIMARY KEY (project_id, user_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE files (
    file_id INT PRIMARY KEY AUTO_INCREMENT,
    file_path VARCHAR(255) NOT NULL
);

CREATE TABLE tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT,
    author_id INT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    creation_time DATETIME NOT NULL,
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (author_id) REFERENCES users(user_id)
);

CREATE TABLE task_assignees (
    task_id INT,
    assignee_id INT,
    PRIMARY KEY (task_id, assignee_id),
    FOREIGN KEY (task_id) REFERENCES tasks(task_id),
    FOREIGN KEY (assignee_id) REFERENCES users(user_id)
);

CREATE TABLE task_files (
    task_id INT,
    file_id INT,
    PRIMARY KEY (task_id, file_id),
    FOREIGN KEY (task_id) REFERENCES tasks(task_id),
    FOREIGN KEY (file_id) REFERENCES files(file_id)
);

CREATE TABLE project_files (
    project_id INT,
    file_id INT,
    PRIMARY KEY (project_id, file_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (file_id) REFERENCES files(file_id)
);


