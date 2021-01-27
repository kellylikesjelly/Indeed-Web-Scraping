create database whoomtroom;
use whoomtroom;
create table jobs (
	job_name varchar(128),
    constraint jobs_pk1 primary key (job_name)
);
create table companies (
	job_name varchar(128),
    company_name varchar(128),
    constraint companies_pk1 primary key (job_name,company_name),
    constraint companies_fk1 foreign key (job_name) references jobs(job_name)
);
create table job_titles (
	job_name varchar(128),
    job_title varchar(128),
    company_name varchar(128),
    constraint job_titles_pk1 primary key (job_title, company_name),
    constraint job_titles_fk1 foreign key (job_name) references jobs(job_name)
);
create table requirements (
	job_name varchar(128),
    requirement varchar(300),
    job_title varchar(128),
    constraint requirements_pk1 primary key (job_name, requirement, job_title),
    constraint requirements_fk1 foreign key (job_name) references jobs(job_name),
    constraint requirements_fk2 foreign key (job_title) references job_titles(job_title)
);
create table responsibilities (
	job_name varchar(128),
    responsibility varchar(300),
    job_title varchar(128),
    constraint responsibilities_pk1 primary key (job_name, responsibility, job_title),
    constraint responsibilities_fk1 foreign key (job_name) references jobs(job_name),
    constraint responsibilities_fk2 foreign key (job_title) references job_titles(job_title)
);
