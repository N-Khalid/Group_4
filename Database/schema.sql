-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/BIMPtJ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "home_features" (
    "Id" int   NOT NULL,
    "LotArea" int   NOT NULL,
    "YearBuilt" varchar(4)   NOT NULL,
    "Heating" varchar(10)   NOT NULL,
    "CentralAir" varchar(2)   NOT NULL,
    "FullBath" int   NOT NULL,
    "HalfBath" int   NOT NULL,
    "BedroomAbvGr" int   NOT NULL,
    "TotRmsAbvGrd" int   NOT NULL,
    "GarageCars" int   NOT NULL,
    CONSTRAINT "pk_home_features" PRIMARY KEY (
        "Id"
     )
);

CREATE TABLE "cost" (
    "Id" int   NOT NULL,
    "YrSold" varchar(4)   NOT NULL,
    "SaleType" varchar(10)   NOT NULL,
    "SaleCondition" varchar(20)   NOT NULL,
    "SalePrice" money   NOT NULL,
    CONSTRAINT "pk_cost" PRIMARY KEY (
        "Id"
     )
);

ALTER TABLE "cost" ADD CONSTRAINT "fk_cost_Id" FOREIGN KEY("Id")
REFERENCES "home_features" ("Id");

