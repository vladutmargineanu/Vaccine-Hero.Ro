CREATE TABLE IF NOT EXISTS messages (
    id SERIAL PRIMARY KEY,
    subject varchar NOT NULL,
    message varchar,
    response varchar,
    important BOOLEAN NOT NULL DEFAULT false,
    create_date TIMESTAMP DEFAULT NOW(),
    author varchar
);

CREATE TABLE IF NOT EXISTS roles (
    role_id SERIAL PRIMARY KEY,
    role varchar NOT NULL
);

CREATE TABLE IF NOT EXISTS hospitals (
    id SERIAL PRIMARY KEY,
    name VARCHAR (25) NOT NULL
);

CREATE TABLE IF NOT EXISTS medical_specialties (
    id SERIAL PRIMARY KEY,
    name varchar NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username varchar NOT NULL,
    password VARCHAR NOT NULL,
    email VARCHAR (50) UNIQUE,
    name VARCHAR (25) NOT NULL,
    role_id INTEGER REFERENCES roles(role_id) NOT NULL,
    email_verification_token varchar
);

CREATE TABLE IF NOT EXISTS doctors (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    name VARCHAR (25) NOT NULL,
    title varchar,
    description varchar,
    specialty INTEGER REFERENCES medical_specialties(id),
    workplace INTEGER REFERENCES hospitals(id),
    picture_url varchar,
    rating DECIMAL
);

CREATE TABLE IF NOT EXISTS records ( 
    id SERIAL PRIMARY KEY,
    type varchar NOT NULL,
    investigations varchar,
    diagnosis varchar,
    vaccine varchar,
    create_date TIMESTAMP DEFAULT NOW(),
    doctor INTEGER REFERENCES doctors(id) NOT NULL,
    owner_id INTEGER REFERENCES users(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS access_grants (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    doctor_id INTEGER REFERENCES doctors(id) NOT NULL,
    valid_until DATE
);

insert into messages (subject, message, response, important, create_date)
values ('How to post a new question?', 'Am I able to ask a question about the platform?', 'Just fill the contact form above with your question in the subject field and optionally a description in the message field and you will receive the response via your e-mail.', true, now());

insert into messages (subject, message, response, important, create_date)
values ('How can I view my medical history?', '', 'Go to Medical Data tab in the navigation bar', true, now());

insert into messages (subject, message, response, important, create_date)
values ('I forgot my password. How do I reset it?', '', null, true, now());

insert into messages (subject, message, response, important, create_date)
values ('What is the platform name', '', 'Vaccine Hero', true, now());

insert into roles(role_id, role)
values(0, 'admin');

insert into roles(role_id, role)
values(1, 'support');

insert into roles(role_id, role)
values(2, 'user');

insert into roles(role_id, role)
values(3, 'doctor');

insert into hospitals(name)
values('Bucuresti');

insert into hospitals(name)
values('Targu Jiu');

insert into hospitals(name)
values('Strehaia');

insert into medical_specialties(name)
values('Chirurg');

insert into medical_specialties(name)
values('Pediatru');

insert into medical_specialties(name)
values('Oftalmolog');

insert into users(username, password, email, name, role_id, email_verification_token)
values ('admin', '$2a$05$AG0s/aVpnSQqPM1EH.08XuVfwdlLARFPs08X4h5mLVYc8Oow5i1Rm', null, 'Administrator', 0, null);

insert into users(username, password, email, name, role_id, email_verification_token)
values ('tech', '$2a$05$AG0s/aVpnSQqPM1EH.08XuVfwdlLARFPs08X4h5mLVYc8Oow5i1Rm', null, 'Tech Support', 1, null);

insert into users(username, password, email, name, role_id, email_verification_token)
values ('vladut', '$2a$05$AG0s/aVpnSQqPM1EH.08XuVfwdlLARFPs08X4h5mLVYc8Oow5i1Rm', 'vladut.margineanu@gmail.com', 'Vladut Margineanu', 2, null);

insert into users(username, password, email, name, role_id, email_verification_token)
values ('dragos', '$2a$05$lNFodBYPtHnE4teaLP55weTGpBLGbAP9JZXsUqBDmt5jeWvpZ5pDq', 'vladutz97.nm@gmail.com', 'Dragos Margineanu', 2, null);

-- insert into users(username, password, email, name, role_id, email_verification_token)
-- values ('eminescu', '$2a$05$upoII7gDkg8T52.HNroBEO8UMovAeWNcF4bvZOHNPRZMyw/EZQxHC', 'valdutz_dutu97@yahoo.com', 'Mihai Eminescu', 3, null);
