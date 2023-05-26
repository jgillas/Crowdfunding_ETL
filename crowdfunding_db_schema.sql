-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" double precision  NOT NULL,
    "pledged" double precision  NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_ids" varchar   NOT NULL,
    "subcategory_ids" varchar   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Category" (
    "category_ids" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_ids"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_ids" varchar   NOT NULL,
    "sub-category" varchar   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_ids"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_ids" FOREIGN KEY("category_ids")
REFERENCES "Category" ("category_ids");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_ids" FOREIGN KEY("subcategory_ids")
REFERENCES "Subcategory" ("subcategory_ids");

