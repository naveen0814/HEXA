create database coding

use coding

CREATE TABLE Artists (
ArtistID INT PRIMARY KEY,
Name VARCHAR(255) NOT NULL,
Biography TEXT,
Nationality VARCHAR(100))


CREATE TABLE Categories (
CategoryID INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL)


CREATE TABLE Artworks (
ArtworkID INT PRIMARY KEY,
Title VARCHAR(255) NOT NULL,
ArtistID INT,
CategoryID INT,
Year INT,
Description TEXT,
ImageURL VARCHAR(255),
FOREIGN KEY (ArtistID) REFERENCES Artists (ArtistID),
FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID))


CREATE TABLE Exhibitions (
ExhibitionID INT PRIMARY KEY,
Title VARCHAR(255) NOT NULL,
StartDate DATE,
EndDate DATE,
Description TEXT)


CREATE TABLE ExhibitionArtworks (
ExhibitionID INT,
ArtworkID INT,
PRIMARY KEY (ExhibitionID, ArtworkID),
FOREIGN KEY (ExhibitionID) REFERENCES Exhibitions (ExhibitionID),
FOREIGN KEY (ArtworkID) REFERENCES Artworks (ArtworkID))


-- Insert sample data into the Artists table
INSERT INTO Artists (ArtistID, Name, Biography, Nationality) VALUES
(1, 'Pablo Picasso', 'Renowned Spanish painter and sculptor.', 'Spanish'),
(2, 'Vincent van Gogh', 'Dutch post-impressionist painter.', 'Dutch'),
(3, 'Leonardo da Vinci', 'Italian polymath of the Renaissance.', 'Italian');

-- Insert sample data into the Categories table
INSERT INTO Categories (CategoryID, Name) VALUES
(1, 'Painting'),
(2, 'Sculpture'),
(3, 'Photography');

-- Insert sample data into the Artworks table
INSERT INTO Artworks (ArtworkID, Title, ArtistID, CategoryID, Year, Description, ImageURL) VALUES
(1, 'Starry Night', 2, 1, 1889, 'A famous painting by Vincent van Gogh.', 'starry_night.jpg'),
(2, 'Mona Lisa', 3, 1, 1503, 'The iconic portrait by Leonardo da Vinci.', 'mona_lisa.jpg'),
(3, 'Guernica', 1, 1, 1937, 'Pablo Picasso\s powerful anti-war mural.', 'guernica.jpg');

-- Insert sample data into the Exhibitions table
INSERT INTO Exhibitions (ExhibitionID, Title, StartDate, EndDate, Description) VALUES
(1, 'Modern Art Masterpieces', '2023-01-01', '2023-03-01', 'A collection of modern art masterpieces.'),
(2, 'Renaissance Art', '2023-04-01', '2023-06-01', 'A showcase of Renaissance art treasures.');

-- Insert artworks into exhibitions
INSERT INTO ExhibitionArtworks (ExhibitionID, ArtworkID) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2);

INSERT INTO Artists (ArtistID, Name, Biography, Nationality) VALUES
(4, 'Naveen', 'Renowned painter known for his mythological depictions.', 'Indian'),
(5, 'Suresh', 'Famous modernist painter.', 'Indian'),
(6, 'Manoj', 'Pioneering contemporary artist.', 'Indian'),
(7, 'Sathya', 'Abstract and surrealist painter.', 'Indian'),
(8, 'Saravanan', 'Traditional and folk art specialist.', 'Indian'),
(9, 'Gopal', 'Impressionist artist with a vibrant palette.', 'Indian'),
(10, 'Rajesh', 'Minimalist and geometric abstractionist.', 'Indian'),
(11, 'Anand', 'Experimental multimedia artist.', 'Indian'),
(12, 'Karthik', 'Pop artist known for bold colors.', 'Indian'),
(13, 'Vikram', 'Renowned sculptor.', 'Indian'),
(14, 'Prakash', 'Realist painter with a focus on rural India.', 'Indian'),
(15, 'Ramesh', 'Famous for expressive portrait paintings.', 'Indian'),
(16, 'Harish', 'Madhubani and tribal art expert.', 'Indian'),
(17, 'Vasanth', 'Modern painter with a touch of surrealism.', 'Indian'),
(18, 'Yogesh', 'Experimental installation artist.', 'Indian');

INSERT INTO Categories (CategoryID, Name) VALUES
(4, 'Miniature Painting'),
(5, 'Modern Indian Art'),
(6, 'Abstract Art');

INSERT INTO Artworks (ArtworkID, Title, ArtistID, CategoryID, Year, Description, ImageURL) VALUES
(4, 'Sunrise in Varanasi', 4, 1, 2020, 'A vibrant painting of the Ganges river at sunrise.', 'sunrise_varanasi.jpg'),
(5, 'Kathakali Dancer', 5, 1, 2018, 'A traditional dancer captured in expressive colors.', 'kathakali_dancer.jpg'),
(6, 'Temple Bells', 6, 1, 2015, 'Depiction of South Indian temple rituals.', 'temple_bells.jpg'),
(7, 'Silk Route', 7, 5, 2021, 'Abstract representation of ancient trade routes.', 'silk_route.jpg'),
(8, 'Elephant Procession', 8, 4, 2017, 'Miniature painting of a grand festival.', 'elephant_procession.jpg'),
(9, 'Village Life', 9, 1, 2019, 'A peaceful rural scene in earthy tones.', 'village_life.jpg'),
(10, 'Cosmic Energy', 10, 6, 2023, 'Geometric abstraction of cosmic forces.', 'cosmic_energy.jpg'),
(11, 'Chariot Festival', 11, 5, 2016, 'Depiction of Rath Yatra.', 'chariot_festival.jpg'),
(12, 'Banyan Tree', 12, 6, 2022, 'An abstract landscape with roots and branches.', 'banyan_tree.jpg'),
(13, 'Rural Portrait', 13, 1, 2014, 'A detailed painting of an elderly woman from Tamil Nadu.', 'rural_portrait.jpg'),
(14, 'City Lights', 14, 5, 2020, 'A modern cityscape with neon hues.', 'city_lights.jpg'),
(15, 'Kumbh Mela', 15, 3, 2018, 'A photographic depiction of India’s largest festival.', 'kumbh_mela.jpg'),
(16, 'Tribal Art', 16, 4, 2019, 'Inspired by Gond and Warli art.', 'tribal_art.jpg'),
(17, 'Ocean Rhythms', 17, 6, 2021, 'Abstract painting inspired by ocean waves.', 'ocean_rhythms.jpg'),
(18, 'The Silent Monk', 18, 1, 2023, 'A portrait capturing the stillness of meditation.', 'silent_monk.jpg');

INSERT INTO Exhibitions (ExhibitionID, Title, StartDate, EndDate, Description) VALUES
(3, 'Colours of India', '2023-01-01', '2023-03-01', 'A celebration of Indian art forms.'),
(4, 'Rural and Urban Stories', '2023-04-01', '2023-06-01', 'Showcasing contrasts in Indian life.'),
(5, 'Mystical and Abstract', '2023-07-01', '2023-09-01', 'A showcase of spiritual and abstract artworks.'),
(6, 'Traditions Reimagined', '2023-10-01', '2023-12-01', 'Modern artists reinterpreting ancient themes.'),
(7, 'Visionary Vibes', '2024-01-01', '2024-03-01', 'Exploring contemporary and experimental styles.');

INSERT INTO ExhibitionArtworks (ExhibitionID, ArtworkID) VALUES
(3, 4),  
(3, 5),  
(3, 6),  
(4, 7),  
(4, 8),  
(4, 9),  
(5, 10),  
(5, 11),  
(5, 12),  
(6, 13),  
(6, 14),  
(6, 15),  
(7, 16),  
(7, 17),  
(7, 18);



select a.name, count(ar.artworkId) as ArtworkCount
FROM Artists a
LEFT JOIN Artworks ar on a.ArtistID=ar.ArtistID
GROUP BY a.Name
ORDER BY ArtworkCount DESC

select ar.Title, ar.Year
FROM Artworks ar
JOIN Artists a ON ar.ArtistID = a.ArtistID
WHERE a.Nationality IN ('Spanish','Dutch')
ORDER BY ar.Year ASC


SELECT a.Name, COUNT(ar.ArtworkID) AS PaintingCount
FROM Artists a
JOIN Artworks ar ON a.ArtistID = ar.ArtistID
JOIN Categories c ON ar.CategoryID = c.CategoryID
WHERE c.Name = 'Painting'
GROUP BY a.Name


SELECT ar.Title, a.Name AS Artist, c.Name AS Category
FROM ExhibitionArtworks ea
join Artworks ar ON ea.ArtworkID = ar.ArtworkID
join Artists a ON ar.ArtistID = a.ArtistID
JOIN Categories c ON ar.CategoryID = c.CategoryID
JOIN Exhibitions e ON ea.ExhibitionID = e.ExhibitionID
WHERE e.Title = 'Modern Art Masterpieces'


select a.Name FROM Artists a
JOIN Artworks ar ON a.ArtistID=ar.ArtistID
GROUP BY a.Name HAVING COUNT(ar.ArtworkID) >2

SELECT ar.Title FROM ExhibitionArtworks ea1
JOIN ExhibitionArtworks ea2 ON ea1.ArtworkID=ea2.ArtworkID
Join Artworks ar on ea1.ArtworkID=ar.ArtworkID
JOIN Exhibitions e1 ON ea1.ExhibitionID = e1.ExhibitionID
JOIN Exhibitions e2 ON ea2.ExhibitionID = e2.ExhibitionID
WHERE e1.Title='Modern Art Masterpieces' AND e2.Title='Renaissance Art'


SELECT c.Name AS Category, COUNT(a.ArtworkID) as TotalArtworks
FROM Categories c LEFT JOIN Artworks a ON c.CategoryID=a.CategoryID
GROUP BY c.Name

SELECT ar.Name, COUNT(a.ArtworkID) AS ArtworkCount FROM Artists ar
JOIN Artworks a ON ar.ArtistID=a.ArtistID
GROUP BY ar.Name HAVING COUNT(a.ArtworkID) >3


SELECT a.Title,ar.Name,ar.Nationality FROM Artworks a
JOIN Artists ar ON a.ArtistID=ar.ArtistID
WHERE Nationality='Spanish'

SELECT e.Title
FROM Exhibitions e
JOIN ExhibitionArtworks ea1 ON e.ExhibitionID = ea1.ExhibitionID
join Artworks a1 ON ea1.ArtworkID = a1.ArtworkID
JOIN Artists ar1 ON a1.ArtistID = ar1.ArtistID
join ExhibitionArtworks ea2 ON e.ExhibitionID = ea2.ExhibitionID
join Artworks a2 ON ea2.ArtworkID = a2.ArtworkID
JOIN Artists ar2 ON a2.ArtistID = ar2.ArtistID
WHERE ar1.Name = 'Vincent van Gogh' AND ar2.Name = 'Leonardo da Vinci'

SELECT a.Title, ar.Name AS Artist
FROM Artworks a JOIN Artists ar ON a.ArtistID=ar.ArtistID
LEFT JOIN ExhibitionArtworks ea ON a.ArtistID=ea.ArtworkID
WHERE ea.ExhibitionID IS NULL


SELECT ar.Name FROM Artists ar
JOIN Artworks a ON ar.ArtistID=a.ArtistID
JOIN Categories c ON a.CategoryID=c.CategoryID
GROUP BY ar.Name
HAVING COUNT(DISTINCT c.CategoryID)=(SELECT COUNT(*) FROM Categories) 


SELECT c.Name AS Category, COUNT(ArtworkID) AS Totalartworks
from categories c
left join Artworks a ON c.CategoryID=a.CategoryID
GROUP BY c.Name

select ar.Name, count(a.ArtworkID) as Artworkcount from Artists ar
join Artworks a ON ar.ArtistID=a.ArtistID
group by ar.Name
Having Count (a.ArtworkID)>2

select c.Name as Category, AVG(a.Year) as Avgyear
from Categories c
Join Artworks a on c.CategoryID=a.CategoryID
group by c.Name Having count (a.ArtworkID)>1

SELECT a.Title, ar.Name AS Artist
FROM Artworks a
JOIN ExhibitionArtworks ea ON a.ArtworkID = ea.ArtworkID
JOIN Exhibitions e ON ea.ExhibitionID = e.ExhibitionID
JOIN Artists ar ON a.ArtistID = ar.ArtistID
WHERE e.Title = 'Modern Art Masterpieces'



select c.Name as Category,AVG(a.Year) as Avgyear
from Categories c
join Artworks a on c.CategoryID=a.CategoryID
group by c.Name
having AVG(a.Year)>(select avg(Year) FROM Artworks)

select a.Title, ar.Name as Artist
from Artworks a
join Artists ar on a.ArtistID=ar.ArtistID
left join ExhibitionArtworks ea on a.ArtworkID = ea.ArtworkID
WHERE ea.ExhibitionID IS NULL

select distinct ar.Name from Artists ar
JOIN Artworks a on ar.ArtistID=a.ArtistID
where a.CategoryID=(select CategoryID from Artworks Where Title = 'Mona Lisa')


select ar.Name, count(a.ArtworkID) As Artworkcount
from artists ar
left join Artworks a on ar.ArtistID=a.ArtistID
group by ar.Name

