
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;

CREATE TABLE "category" ("category_id" VACHAR (10) NOT NULL, 
	"subcategory" VARCHAR(50) NOT NULL,
	CONSTRAINT "pk_category" PRIMARY KEY (A)"subcategory_id" );

CREATE TABLE "subcategory" ("subcategory_id" VACHAR (10) NOT NULL, 
	"subcategory" VARCHAR(50) NOT NULL,
	CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id" ) );

DROP TABLE IF EXISTS "campaign"
CREATE TABLE "campaign" (
"cf_id" INT NOT NULL,
"contact_id" INT NOT NULL,
"company_name" VARCHAR(50) NOT NULL,
"description" VARCHAR(200) NOT NULL,
"goal" REAL NOT NULL,
"pledged" REAL NOT NULL,
"outcome" VARCHAR(200) NOT NULL,
"backers_count" INT NOT NULL,
"country" VARCHAR(200) NOT NULL,
"currency" VARCHAR (200) NOT NULL,
"launch_date" DATE NOT NULL,
"end_date" DATE NOT NULL,
"category_id" VARCHAR(50) NOT NULL,
"subcategory_id" VARCHAR(200) NOT NULL,
CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id") );

CREATE TABLE "contacts" ("contact_id" INT NOT NULL, 
	"first_name" VARCHAR(50) NOT NULL, "last_name" VARCHAR (100) NOT NULL, "email" VARCHAR (100) NOT NULL,
	CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id" ) );
