INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Blue', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
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

INSERT INTO tb_course (name, img_Uri, img_Gray_uri) VALUES ('Bootcamp Angular.js', 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-13T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-07-13T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-12-13T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-13T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('trilha angular','trilha principal',1,'naosei.jpg',1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('forum','tira duvidas',2,'naosei.jpg',2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('lives','bonus da turma',3,'naosei.jpg',0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('cap1', 'inicio do bootcamp', 1, 'aster', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('cap2', 'segunda parte do bootcamp', 2, 'multiseat', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('cap3', 'terceira parte do bootcamp', 3, '2terminal', 1, 2);

INSERT INTO tb_enrollment (enroll_moment, refund_moment, available, only_update, offer_id, user_id) VALUES (TIMESTAMP WITH TIME ZONE '2020-07-13T03:00:00Z', null, true, false, 1, 1);
INSERT INTO tb_enrollment (enroll_moment, refund_moment, available, only_update, offer_id, user_id) VALUES (TIMESTAMP WITH TIME ZONE '2020-07-13T03:00:00Z', null, true, false, 1, 2);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 cap 1', 1, 1);
INSERT INTO TB_CONTENT (TEXT_CONTENT, VIDEO_URI, ID) VALUES ('material de apoio: null','endereço do video', 1);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 cap 1', 2, 1);
INSERT INTO TB_CONTENT (TEXT_CONTENT, VIDEO_URI, ID) VALUES ('material de apoio: null','endereço do video', 2);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 cap 1', 3, 1);
INSERT INTO TB_CONTENT (TEXT_CONTENT, VIDEO_URI, ID) VALUES ('material de apoio: null','endereço do video', 3);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('TAREFA 1 cap 1', 4, 1);
INSERT INTO TB_TASK (id, description, question_count, approval_count, weight, due_date) VALUES (4,'material de apoio: null', 1, 1, 1.0, TIMESTAMP WITH TIME ZONE '2020-07-13T03:00:00Z');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('TAREFA 2 cap 1', 5, 1);
INSERT INTO TB_TASK (id, description, question_count, approval_count, weight, due_date) VALUES (5,'material de apoio: null', 1, 1, 1.0, TIMESTAMP WITH TIME ZONE '2020-07-13T03:00:00Z');

INSERT INTO TB_LESSONS_DONE(LESSON_ID, USER_ID, OFFER_ID) VALUES (1, 1, 1);
INSERT INTO TB_LESSONS_DONE(LESSON_ID, USER_ID, OFFER_ID) VALUES (2, 1, 1);
INSERT INTO TB_LESSONS_DONE(LESSON_ID, USER_ID, OFFER_ID) VALUES (3, 1, 1);
