CREATE TABLE corse_structure.duckbd (

    contet TEXT, 
    week INTEGER, 
    content_type TEXT

);

INSERT INTO corse_structure VALUES
('00_intro', 46, 'lecture'),
('01_course_structure', 46, 'lecture'),
('02_setup_duckdb', 46, 'lecture'),
('exercise_0', 46, 'exercise'),
('exercise_1', 47, 'exercise'),
('06_crud_operations', 48, 'lecture'),
('tenta', 51, 'exam');

SELECT * FROM course_content;