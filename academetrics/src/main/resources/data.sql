INSERT IGNORE INTO department (id, name) VALUES
('CO', 'Department of Computer Engineering'),
('EM', 'Department of Engineering Mathematics'),
('EE', 'Department of Electrical & Electronic Engineering'),
('ME', 'Department of Mechanical Engineering'),
('CE', 'Department of Civil Engineering'),
('CP', 'Department of Chemical & Process Engineering'),
('PR', 'Department of Manufacturing & Industrial Engineering');


INSERT IGNORE INTO course (code, name, credits) VALUES
('CO221', 'Digital Design', 3),
('CO222', 'Programming Methodology', 3),
('CO223', 'Computer Communication Networks I', 3),
('EM211', 'Ordinary Differential Equations', 2),
('EM213', 'Probability & Statistics', 2),
('EM214', 'Discrete Mathematics', 3),
('EE282', 'Network Analysis for Computer Engineering', 3),
('CO224', 'Computer Architecture', 3),
('CO225', 'Software Construction', 3),
('CO226', 'Database Systems', 3),
('EM215', 'Numerical Methods', 3),
('EM212', 'Calculus II', 3),
('EE285', 'Electronics I', 3),
('GP106', 'Computing', 3);


INSERT IGNORE INTO course_offering (course_code, year) VALUES
('CO221', 2023),
('CO222', 2023),
('CO223', 2023),
('CO224', 2023),
('CO225', 2023),
('CO226', 2023),
('EM211', 2023),
('EM212', 2023),
('EM213', 2023),
('EM214', 2023),
('EM215', 2023),
('EE282', 2023),
('EE285', 2023),
('GP106', 2023);

INSERT IGNORE INTO user (user_name, password, mail, honorific, initials, last_name, role, contact, dept_id) VALUES
--('admin', '$2a$12$Hish978AZuwUquegBl4NruwMXrMPs6iKYm90pvl9X90e2g3qyAkyi', 'admin@eng.pdn.ac.lk', 'Mr', 'A.', 'Mihindu', 'admin', '0777123456', null),
--('E/19/275', '$2a$12$XsvDjpRjIik/0hZV5MoWOuGmbtgqPTlRvYkaj99mAd2oInVXOpWfC', 'e19275@eng.pdn.ac.lk', 'Mr', 'M. S.', 'Peeris', 'student', '0777199768', 'CO'),
('admin', '123', 'admin@eng.pdn.ac.lk', 'Mr', 'A.', 'Mihindu', 'admin', '0777123456', null),
('E/19/275', '456', 'e19275@eng.pdn.ac.lk', 'Mr', 'M. S.', 'Peeris', 'student', '0777199768', 'CO'),
('co-Kernighan', '789', 'kernighan@eng.pdn.ac.lk', 'Mr', 'B.', 'Kernighan', 'lecturer', '0777987654', 'CO'),
('co-Torvalds', 'bash', 'torvalds@eng.pdn.ac.lk', 'Mr', 'L.', 'Torvalds', 'lecturer', '0777111111', 'CO'),
('em-Woo', '314', 'woo@eng.pdn.ac.lk', 'Mr', 'E.', 'Woo', 'lecturer', '0777678678', 'EM'),
('E/10/001', '123', 'e10001@eng.pdn.ac.lk', 'Mr', 'J.', 'Doe', 'student', '0123456789', 'CO'),
('E/19/001', '123', 'e19001@eng.pdn.ac.lk', 'Mr', 'Ken', 'Adams', 'student', '0123456789', 'CO');

--admin pwd 123
--e/19/275 456
INSERT IGNORE INTO student(user_name, academic_year, semester, gpa) VALUES
('E/19/275', '2', '4', '2.3'),
('E/10/001', '2', '4', '3');


INSERT IGNORE INTO student_course (course_offering_course_code, course_offering_year, student_user_name, grade) VALUES
 ('CO221', '2023' ,'E/10/001', 'A'),
 ('CO222', '2023' ,'E/10/001', 'C-'),
 ('CO223', '2023' ,'E/10/001', 'B+'),
 ('CO224', '2023' ,'E/10/001', 'D+'),
 ('CO225', '2023' ,'E/10/001', 'B-'),
 ('CO226', '2023' ,'E/10/001', 'A-'),
 ('EM211', '2023' ,'E/10/001', 'C'),
 ('EM212', '2023' ,'E/10/001', 'B-'),
 ('EM213', '2023' ,'E/10/001', null),
 ('EM214', '2023' ,'E/10/001', null),
 ('EM215', '2023' ,'E/10/001', null),
 ('EE282', '2023' ,'E/10/001', null),
 ('EE285', '2023' ,'E/10/001', null);

INSERT IGNORE INTO assesment (course_code, year, name, type, max_marks) VALUES
('CO221', 2023, 'Lab 1', 'Lab', '5'),
('CO221', 2023, 'Lab 1', 'Lab', '5'),
('CO221', 2023, 'Lab 1', 'Lab', '5'),
('CO221', 2023, 'Assignment', 'Assignment', '5'),
('CO221', 2023, 'Mid', 'Mid', '30'),
('CO221', 2023, 'Final', 'Final', '50');

INSERT IGNORE INTO student_assesment (assesment_id, student_user_name, marks) VALUES
(1, 'E/10/001', 5),
(2, 'E/10/001', 5),
(3, 'E/10/001', 5),
(4, 'E/10/001', 4),
(5, 'E/10/001', 15),
(6, 'E/10/001', 45);



