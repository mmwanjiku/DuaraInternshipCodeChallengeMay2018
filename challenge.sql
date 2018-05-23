
//Creating a table that will allow plate number of the form ABC-123

CREATE TABLE license_plates
(
Vehicle_Id INT NOT NULL,
Plate_No CHAR(7) NOT NULL,
PRIMARY KEY (Vehicle_Id),
CONSTRAINT CHK_license_plates CHECK (Plate_No="(\\w{3})-(\\d{3})")
)


String pattern = "(\\w{3})-(\\d{3})";

//Create a Pattern object
    Pattern r = Pattern.compile(pattern);

// Now create matcher object.
      Matcher m = r.matcher(line);









//Storing records into the dataset

INSERT INTO license_plates (Vehicle_Id,Plate_No)
VALUES ('1','ABC-123')

INSERT INTO license_plates (Vehicle_Id,Plate_No)
VALUES ('1','PLB-123')

INSERT INTO license_plates (Vehicle_Id,Plate_No)
VALUES ('1','PLB-947')



SELECT*
FROM license_plates
WHERE EXISTS (SELECT Plate_No FROM license_plates WHERE Plate_No='PLB-123')


//Number of plates that begin with the letters

SELECT COUNT(Plate_No) 
FROM licence_plates WHERE Plate_No='PLB&';


//List of plates that begin with the letters PLB

SELECT * 
FROM license_plates WHERE Plate_No='PLB&';