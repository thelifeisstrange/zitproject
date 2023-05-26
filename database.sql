-- Table for storing commit information
CREATE TABLE commits (
    id INT PRIMARY KEY AUTO_INCREMENT,
    message VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for storing file metadata
CREATE TABLE files (
    id INT PRIMARY KEY AUTO_INCREMENT,
    commit_id INT,
    filename VARCHAR(100) NOT NULL,
    path VARCHAR(255) NOT NULL,
    content_hash VARCHAR(64) NOT NULL,
    FOREIGN KEY (commit_id) REFERENCES commits(id)
);
