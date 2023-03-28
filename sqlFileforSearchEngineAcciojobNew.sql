create database simplesearchenginejava;

use simplesearchenginejava;

create table pages(
		pageTitle varchar(200),
        pagelink text,
        pageText mediumtext
);

select * from pages;


select pagetitle, pagelink, (length(lower(pageText))-length(replace(lower(pageText), 'java', '')))/length('java')as countoccurence from pages order by countoccurence desc limit 30;


create table history(
	keyword text,
    link text
);

select * from history;