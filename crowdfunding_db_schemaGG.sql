-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(40)   NOT NULL,
    "subcategory" varchar(40)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Category" (
    "category_id" varchar(40)   NOT NULL,
    "category" varchar(40)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Crowdfunding" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(40)   NOT NULL,
    "description" varchar(100)   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" varchar(40)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(40)   NOT NULL,
    "currency" varchar(40)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category" varchar(40)   NOT NULL,
    "subcategory" varchar(40)   NOT NULL,
    "category_id" varchar(40)   NOT NULL,
    "subcategory_id" varchar(40)   NOT NULL,
    CONSTRAINT "pk_Crowdfunding" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(40)   NOT NULL,
    "last_name" varchar(40)   NOT NULL,
    "email" varchar(40)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Crowdfunding" ADD CONSTRAINT "fk_Crowdfunding_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Crowdfunding" ADD CONSTRAINT "fk_Crowdfunding_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Crowdfunding" ADD CONSTRAINT "fk_Crowdfunding_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");
