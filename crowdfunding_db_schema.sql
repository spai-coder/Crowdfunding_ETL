CREATE TABLE contacts (
contact_id INTEGER NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
email VARCHAR NOT NULL,
CONSTRAINT "primary_contacts" PRIMARY KEY("contact_id")
);

CREATE TABLE category (
category_id VARCHAR NOT NULL,
category VARCHAR NOT NULL,
CONSTRAINT "primary_category" PRIMARY KEY("category_id")
);

CREATE TABLE subcategory(
subcategory_id VARCHAR NOT NULL,
subcategory VARCHAR NOT NULL,
CONSTRAINT "primary_subcategory" PRIMARY KEY("subcategory_id")
);

CREATE TABLE campaign (
cf_id INTEGER NOT NULL,
contact_id INTEGER NOT NULL,
company_name VARCHAR NOT NULL,
description TEXT NOT NULL,
goal FLOAT NOT NULL,
pledged FLOAT NOT NULL,
outcome VARCHAR NOT NULL, 
backers_count INTEGER NOT NULL,
country VARCHAR NOT NULL,
currency VARCHAR NOT NULL,
launched_date DATE NOT NULL,
end_date DATE NOT NULL,
category_id VARCHAR NOT NULL,
subcategory_id VARCHAR NOT NULL,
CONSTRAINT "primary_campaign" PRIMARY KEY("cf_id")
);

ALTER TABLE "campaign" ADD CONSTRAINT "foreign_camp_contact_id" FOREIGN KEY("contact_id") REFERENCES "contacts"("contact_id");
ALTER TABLE "campaign" ADD CONSTRAINT "foreign_camp_category_id" FOREIGN KEY("category_id") REFERENCES "category"("category_id");
ALTER TABLE "campaign" ADD CONSTRAINT "foreign_camp_subcategory_id" FOREIGN KEY("subcategory_id") REFERENCES "subcategory"("subcategory_id");
