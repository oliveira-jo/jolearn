INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@hotmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp Algular','https://cdn.awsli.com.br/1225/1225697/produto/47028827/caneca-angular-js-color-vermelha-9f8be875.jpg','https://upload.wikimedia.org/wikipedia/commons/2/2c/Angular_icon.svg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2025-11-11T03:00:00Z', TIMESTAMP WITH TIME ZONE '2026-11-11T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2025-12-12T03:00:00Z', TIMESTAMP WITH TIME ZONE '2026-12-12T03:00:00Z',  1);

INSERT INTO tb_notification (text, moment, read, route,  user_id) VALUES ('Test with Notification', NOW(), false, 'testroutestring', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha Básica Angular', 'Trilha principal do curso', 1, 'https://cdn.awsli.com.br/1225/1225697/produto/47028827/caneca-angular-js-color-vermelha-9f8be875.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://cdn.awsli.com.br/1225/1225697/produto/47028827/caneca-angular-js-color-vermelha-9f8be875.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives Bonus', 'Lives exclusivas para a turma', 3, 'https://cdn.awsli.com.br/1225/1225697/produto/47028827/caneca-angular-js-color-vermelha-9f8be875.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Capitulo de introdução', 1, 'https://cdn.awsli.com.br/1225/1225697/produto/47028827/caneca-angular-js-color-vermelha-9f8be875.jpg', 1 , null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Conceitos', 2, 'https://cdn.awsli.com.br/1225/1225697/produto/47028827/caneca-angular-js-color-vermelha-9f8be875.jpg', 1 , 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Conceitos Continuaçao', 3, 'https://cdn.awsli.com.br/1225/1225697/produto/47028827/caneca-angular-js-color-vermelha-9f8be875.jpg', 1 , 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, now(), null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, now(), null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio ABC', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, '', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa cap 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Trabalho de prog', 10, 8, 1.0, TIMESTAMP WITH TIME ZONE '2025-12-25T03:00:00Z' );

INSERT INTO tb_lessons_done (lesson_Id, user_Id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_Id, user_Id, offer_id) VALUES (2, 1, 1);