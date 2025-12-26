--  Insert Companies
INSERT INTO companies (name, logo_url, industry) VALUES
('Google', 'https://tse2.mm.bing.net/th/id/OIP.96OxWjEy7in-wy0k-f12ZgHaEK?rs=1&pid=ImgDetMain&o=7&rm=3', 'Product Based'),
('TCS', 'https://indiancompanies.in/wp-content/uploads/2020/05/TCS-Logo-Tata-consultancy-service-1920x1144.png', 'Service Based'),
('Infosys', 'https://static.vecteezy.com/system/resources/previews/020/336/451/non_2x/infosys-logo-infosys-icon-free-free-vector.jpg', 'Service Based'),
('Zomato', 'https://static.vecteezy.com/system/resources/previews/020/336/761/non_2x/zomato-logo-zomato-icon-free-free-vector.jpg', 'Product Based'),
('Microsoft', 'https://purepng.com/public/uploads/large/purepng.com-microsoft-logo-iconlogobrand-logoiconslogos-251519939091wmudn.png', 'Product Based');

INSERT INTO users (full_name, email) VALUES
('Aarav Sharma', 'aarav.sharma2025@gmail.com'),
('Ananya Iyer', 'ananya.iyer.dev@gmail.com'),
('Ishaan Gupta', 'gupta.ishaan99@gmail.com'),
('Diya Mehra', 'diya.mehra.work@gmail.com'),
('Arjun Verma', 'arjun.v.coding@gmail.com'),
('Kavya Nair', 'kavya.nair.p@gmail.com'),
('Rohan Malhotra', 'rohan.malhotra.official@gmail.com'),
('Sanya Kapoor', 'sanya.kapoor.ai@gmail.com'),
('Aditya Joshi', 'aditya.joshi.bits@gmail.com'),
('Meera Reddy', 'meera.reddy.ux@gmail.com');

-- Insert  Resumes (Linked to first 3 users)
INSERT INTO resumes (user_id, raw_text, parsed_json) VALUES 
((SELECT id FROM users WHERE full_name = 'Aarav Sharma'), 'Java Developer with Spring Boot experience...', '{"skills": ["Java", "Spring", "SQL"]}'),
((SELECT id FROM users WHERE full_name = 'Ananya Iyer'), 'Frontend Developer, React and Tailwind expert...', '{"skills": ["React", "JavaScript", "CSS"]}'),
((SELECT id FROM users WHERE full_name = 'Ishaan Gupta'), 'Data Scientist, Python and Machine Learning...', '{"skills": ["Python", "ML", "Pandas"]}');

-- 4. Insert Interview Questions (Latest 2024-2025)
INSERT INTO interview_questions (company_id, job_role, question_text, difficulty_level, year_asked) VALUES
((SELECT id FROM companies WHERE name = 'Google'), 'SDE-1', 'Explain the time complexity of QuickSort.', 'Medium', 2025),
((SELECT id FROM companies WHERE name = 'TCS'), 'Ninja', 'What is the difference between C and C++?', 'Easy', 2024),
((SELECT id FROM companies WHERE name = 'Zomato'), 'Backend Dev', 'How would you handle high traffic during a sale?', 'Hard', 2025),
((SELECT id FROM companies WHERE name = 'Microsoft'), 'SDE-2', 'What is the difference between a Process and a Thread?', 'Medium', 2024),
((SELECT id FROM companies WHERE name = 'Infosys'), 'System Engineer', 'Explain the concept of OOPS with real-life examples.', 'Easy', 2024);
