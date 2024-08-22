CREATE TABLE Friends (
    id INT,
    friend_id INT 
);

CREATE TABLE Ratings (
    id INT PRIMARY KEY,
    rating INT
);
INSERT INTO Friends (id, friend_id)
VALUES
(1, 2),
(1, 3),
(2, 3),
(3, 4),
(4, 1),
(4, 2),
(5,NULL),
(6,NULL);

INSERT INTO Ratings (id, rating)
VALUES
(1, 85),
(2, 90),
(3, 75),
(4, 88),
(5, 82),
(6, 91);

SELECT * FROM Friends;
SELECT * FROM Ratings;


-- MNC data analyst interview 

-- Retrieve all Ids of a person whose rating is greater than friend's id
-- If person does not have any friend, retrieve only their id only if rating greater than 85


SELECT --F.ID,
       --F.FRIEND_ID,
       --R.ID,
       --R.RATING,
	   --R1.ID,
	   --R1.RATING
	   DISTINCT (F.ID)
FROM FRIENDS F
LEFT JOIN
RATINGS R
ON F.ID=R.ID
LEFT JOIN
RATINGS R1
ON F.FRIEND_ID=R1.ID
WHERE 
	(F.FRIEND_ID IS NOT NULL AND R.RATING > R1.RATING)
OR
    (F.FRIEND_ID IS NULL AND R.RATING > 85 )
ORDER BY 1