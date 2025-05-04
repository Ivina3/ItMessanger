-- Insert test team
INSERT INTO teams (name, description) VALUES
('Development Team', 'Main development team');

-- Insert test users
INSERT INTO users (username, password, email, first_name, last_name, role, team_role, experience_level, team_id) VALUES
('admin', '$2a$10$rR3GvwCq9s5SqnxGFk4YteIU1G.AIV3Q.57BQzYrNDVPh1KXq3Tji', 'admin@example.com', 'Admin', 'User', 'ADMIN', 'PM', 'SENIOR', 1),
('user1', '$2a$10$rR3GvwCq9s5SqnxGFk4YteIU1G.AIV3Q.57BQzYrNDVPh1KXq3Tji', 'user1@example.com', 'User', 'One', 'USER', 'DEVELOPER', 'MIDDLE', 1),
('user2', '$2a$10$rR3GvwCq9s5SqnxGFk4YteIU1G.AIV3Q.57BQzYrNDVPh1KXq3Tji', 'user2@example.com', 'User', 'Two', 'USER', 'QA', 'JUNIOR', 1);

-- Insert test chats
INSERT INTO chats (name, creator_id) VALUES
('General Chat', 1),
('Team Chat', 1),
('Project Discussion', 1);

-- Add users to chats
INSERT INTO chat_users (chat_id, user_id) VALUES
(1, 1), (1, 2), (1, 3), -- General Chat
(2, 1), (2, 2),        -- Team Chat
(3, 1), (3, 3);        -- Project Discussion

-- Insert test messages
INSERT INTO messages (content, sender_id, chat_id) VALUES
('Hello everyone!', 1, 1),
('Hi there!', 2, 1),
('How are you?', 3, 1),
('Team meeting tomorrow', 1, 2),
('Got it!', 2, 2),
('Project update', 1, 3),
('I''ll check it out', 3, 3); 