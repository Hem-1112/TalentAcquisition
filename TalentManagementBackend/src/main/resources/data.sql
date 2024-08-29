-- Insert data into the user table
INSERT INTO `user` (`username`, `password`, `type`) VALUES
('candidate1', 'passpass', 'candidate'),
('hem', 'hem', 'candidate'),
('harsh', 'harsh', 'hiring_manager'),
('manager2', 'passpass', 'hiring_manager'),
('manager3', 'passpass', 'hiring_manager'),
('admin1', 'passpass', 'admin'),
('admin2', 'passpass', 'admin'),
('candidate3', 'passpass', 'candidate'),
('candidate4', 'passpass', 'candidate');

-- Insert data into the candidate table
INSERT INTO `candidate` (`user_id`, `full_name`, `email`, `address`, `phone`, `resume`) VALUES
(1, 'John Doe', 'johndoe@example.com', '123 Main St, Cityville', '123-456-7890', 'John Doe Resume...'),
(2, 'Hem Patel', 'hem@example.com', '456 Oak St, Townsville', '987-654-3210', 'Hem Patel Resume...'),
(8, 'Emily Johnson', 'emilyj@example.com', '789 Pine St, Villageville', '555-123-4567', 'Emily Johnson Resume...'),
(9, 'Michael Brown', 'michaelb@example.com', '321 Maple St, Hamletville', '444-987-6543', 'Michael Brown Resume...');

-- Insert data into the hiring_manager table
INSERT INTO `hiring_manager` (`user_id`, `full_name`, `email`, `department`, `phone`) VALUES
(3, 'Harsh Naik', 'harsh@example.com', 'HR', '555-123-4567'),
(4, 'Bob Brown', 'bobbrown@example.com', 'Engineering', '555-987-6543'),
(5, 'Carol White', 'carolwhite@example.com', 'Sales', '555-456-7890');

-- Insert data into the admin table
INSERT INTO `admin` (`user_id`, `full_name`, `email`) VALUES
(6, 'Samuel Adams', 'samuel.adams@example.com'),
(7, 'Emily Clark', 'emily.clark@example.com');

-- Insert data into the job_listing table
INSERT INTO `job_listing` (`manager_id`, `department`, `listing_title`, `date_listed`, `date_closed`, `job_title`, `job_description`, `additional_information`, `listing_status`) VALUES
-- Jobs for Manager with ID 1 (HR)
(1, 'HR', 'HR Manager Position', '2024-08-01 10:00:00', NULL, 'HR Manager', 'Responsible for managing HR operations...', 'Looking for experienced HR professionals.', 'Open'),
(1, 'HR', 'HR Assistant', '2024-08-15 09:30:00', NULL, 'HR Assistant', 'Assist in HR operations, recruitment, and payroll...', 'Entry-level position.', 'Open'),
(1, 'HR', 'Recruitment Specialist', '2024-08-20 11:00:00', NULL, 'Recruitment Specialist', 'Responsible for recruiting top talent...', 'Must have experience with talent acquisition.', 'Open'),
(1, 'HR', 'Training Coordinator', '2024-08-25 14:00:00', NULL, 'Training Coordinator', 'Coordinate and manage employee training programs...', 'Experience in L&D preferred.', 'Open'),
-- Jobs for Manager with ID 2 (Engineering)
(2, 'Engineering', 'Software Engineer', '2024-08-05 12:00:00', NULL, 'Software Engineer', 'Develop and maintain software applications...', 'Preferably with full-stack experience.', 'Open'),
(2, 'Engineering', 'Frontend Developer', '2024-08-07 13:00:00', NULL, 'Frontend Developer', 'Design and implement UI components...', 'Experience with React and Angular.', 'Open'),
(2, 'Engineering', 'Backend Developer', '2024-08-12 10:00:00', NULL, 'Backend Developer', 'Build and maintain server-side logic...', 'Proficiency in Java and Node.js required.', 'Open'),
(2, 'Engineering', 'DevOps Engineer', '2024-08-18 15:00:00', NULL, 'DevOps Engineer', 'Manage CI/CD pipelines and cloud infrastructure...', 'Experience with AWS and Docker.', 'Open'),
-- Jobs for Manager with ID 3 (Sales)
(3, 'Sales', 'Sales Executive', '2024-08-10 09:00:00', NULL, 'Sales Executive', 'Lead sales initiatives and manage client relations...', 'Experience in B2B sales required.', 'Open'),
(3, 'Sales', 'Sales Manager', '2024-08-11 16:00:00', NULL, 'Sales Manager', 'Oversee the sales team and strategy implementation...', 'Proven leadership in sales management.', 'Open'),
(3, 'Sales', 'Account Executive', '2024-08-16 10:30:00', NULL, 'Account Executive', 'Manage and grow client accounts...', 'Strong relationship-building skills.', 'Open'),
(3, 'Sales', 'Sales Analyst', '2024-08-22 12:00:00', NULL, 'Sales Analyst', 'Analyze sales data and generate reports...', 'Experience with CRM systems preferred.', 'Open');

-- Insert data into the job_application table
INSERT INTO `job_application` (`candidate_id`, `job_id`, `date_applied`, `cover_letter`, `custom_resume`, `application_status`) VALUES
-- Applications by Candidate ID 1
(1, 1, '2024-08-12 08:00:00', 'Cover letter for HR Manager position...', 'Custom resume tailored for HR Manager role...', 'Under Review'),
(1, 3, '2024-08-18 11:45:00', 'Cover letter for Recruitment Specialist position...', 'Custom resume tailored for Recruitment Specialist role...', 'Rejected'),
(1, 4, '2024-08-20 09:00:00', 'Cover letter for Training Coordinator position...', 'Custom resume tailored for Training Coordinator role...', 'Under Review'),
(1, 9, '2024-08-29 09:15:00', 'Cover letter for Sales Executive position...', 'Custom resume tailored for Sales Executive role...', 'Under Review'),
(1, 11, '2024-08-21 08:45:00', 'Cover letter for Account Executive position...', 'Custom resume tailored for Account Executive role...', 'Under Review'),
-- Applications by Candidate ID 2
(2, 1, '2024-08-13 09:30:00', 'Cover letter for HR Manager position...', 'Custom resume tailored for HR Manager role...', 'Interview Scheduled'),
(2, 2, '2024-08-15 10:30:00', 'Cover letter for Software Engineer position...', 'Custom resume tailored for Software Engineer role...', 'Interview Scheduled'),
(2, 5, '2024-08-17 09:30:00', 'Cover letter for Software Engineer position...', 'Custom resume tailored for Software Engineer role...', 'Rejected'),
(2, 6, '2024-08-19 14:15:00', 'Cover letter for Frontend Developer position...', 'Custom resume tailored for Frontend Developer role...', 'Under Review'),
(2, 7, '2024-08-22 13:45:00', 'Cover letter for Backend Developer position...', 'Custom resume tailored for Backend Developer role...', 'Interview Scheduled'),
(2, 12, '2024-08-26 12:00:00', 'Cover letter for Sales Analyst position...', 'Custom resume tailored for Sales Analyst role...', 'Interview Scheduled'),
-- Applications by Candidate ID 3
(3, 2, '2024-08-16 11:00:00', 'Cover letter for Software Engineer position...', 'Custom resume tailored for Software Engineer role...', 'Under Review'),
(3, 4, '2024-08-21 10:15:00', 'Cover letter for Training Coordinator position...', 'Custom resume tailored for Training Coordinator role...', 'Interview Scheduled'),
(3, 5, '2024-08-18 10:00:00', 'Cover letter for Software Engineer position...', 'Custom resume tailored for Software Engineer role...', 'Under Review'),
(3, 7, '2024-08-23 11:30:00', 'Cover letter for Backend Developer position...', 'Custom resume tailored for Backend Developer role...', 'Under Review'),
(3, 8, '2024-08-25 11:00:00', 'Cover letter for DevOps Engineer position...', 'Custom resume tailored for DevOps Engineer role...', 'Under Review'),
(3, 9, '2024-08-28 10:00:00', 'Cover letter for Sales Executive position...', 'Custom resume tailored for Sales Executive role...', 'Interview Scheduled'),
(3, 10, '2024-08-19 10:00:00', 'Cover letter for Sales Manager position...', 'Custom resume tailored for Sales Manager role...', 'Rejected'),
-- Applications by Candidate ID 4
(4, 3, '2024-08-19 14:00:00', 'Cover letter for Recruitment Specialist position...', 'Custom resume tailored for Recruitment Specialist role...', 'Under Review'),
(4, 6, '2024-08-20 15:30:00', 'Cover letter for Frontend Developer position...', 'Custom resume tailored for Frontend Developer role...', 'Interview Scheduled'),
(4, 8, '2024-08-26 12:45:00', 'Cover letter for DevOps Engineer position...', 'Custom resume tailored for DevOps Engineer role...', 'Interview Scheduled'),
(4, 10, '2024-08-18 15:30:00', 'Cover letter for Sales Manager position...', 'Custom resume tailored for Sales Manager role...', 'Under Review'),
(4, 11, '2024-08-20 16:00:00', 'Cover letter for Account Executive position...', 'Custom resume tailored for Account Executive role...', 'Interview Scheduled'),
(4, 12, '2024-08-25 14:00:00', 'Cover letter for Sales Analyst position...', 'Custom resume tailored for Sales Analyst role...', 'Under Review');
