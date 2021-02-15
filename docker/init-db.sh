#!/bin/bash -e

mongo --username admin --password admin --authenticationDatabase admin <<EOF
use admin

db.createUser({
  user: "api",
  pwd: "api",
  roles: [
    {
      role: "readWrite",
      db: "movies"
    }
  ]
});

use movies;

// Toy Story 3
db.movies.insert({
	"_id": "5692a15524de1e0ce2dfcfa3",
	"Title": "Toy Story 3",
	"Year": NumberInt(2010),
	"Rated": "G",
	"Released": new Date("2010-06-18T04:00:00.000Z"),
	"Runtime": NumberInt(206),
	"Countries": [
		"USA"
	],
	"Genres": [
		"Animation",
		"Adventure",
		"Comedy"
	],
	"Director": "Lee Unkrich",
	"Writers": [
		"John Lasseter",
		"Andrew Stanton",
		"Lee Unkrich",
		"Michael Arndt"
	],
	"Actors": [
		"Tom Hanks",
		"Tim Allen",
		"Joan Cusack",
		"Ned Beatty"
	],
	"Plot": "The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it's up to Woody to convince the other toys that they weren't abandoned and to return home.",
	"Poster": "https://m.media-amazon.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_UY268_CR3,0,182,268_AL_.jpg",
	"Imdb": {
		"Id": "tt0435761",
		"Rating": 8.4,
		"Votes": NumberLong(500084)
	},
	"Tomato": {
		"Meter": NumberInt(99),
		"Image": "certified",
		"Rating": 8.9,
		"Reviews": NumberInt(287),
		"Fresh": NumberInt(283),
		"Consensus": "Deftly blending comedy, adventure, and honest emotion, Toy Story 3 is a rare second sequel that really works.",
		"UserMeter": NumberInt(89),
		"UserRating": 4.3,
		"UserReviews": NumberLong(602138)
	},
	"Metacritic": NumberInt(92),
	"Awards": {
		"Wins": NumberInt(56),
		"Nominations": NumberInt(86),
		"Text": "Won 2 Oscars. Another 56 wins \u0026 86 nominations."
	},
	"Type": "movie",
	"Reviews": [
		{
			"Date": new Date("2017-02-13T04:00:00.000Z"),
			"Name": "someone",
			"Rating": 8.9,
			"Comment": "My first review for Toy Story 3, hoping it will execute while trying for the very first time."
		},
		{
			"Date": new Date("2017-02-13T04:00:00.000Z"),
			"Name": "foobar",
			"Rating": 8.9,
			"Comment": "My first review for Toy Story 3, hoping it will execute while trying for the very first time."
		}
	]
});

// Deadpool
db.movies.insert({
	"_id": "589cbda9c0b9fec62febf274",
	"Title": "Deadpool",
	"Year": NumberInt(2016),
	"Rated": "R",
	"Released": new Date("2016-06-18T04:00:00.000Z"),
	"Runtime": NumberInt(108),
	"Countries": [
		"USA"
	],
	"Genres": [
		"Comics character",
		"Adventure",
		"Action"
	],
	"Director": "Tim Miller",
	"Writers": [
		"Rhett Reese",
		"Paul Wernick"
	],
	"Actors": [
		"Ryan Reynolds",
		"Morena Baccarin",
		"Ed Skrein",
		"T.J. Miller",
		"Gina Carano",
		"Leslie Uggams",
		"Stefan Kapičić",
		"Brianna Hildebrand"
	],
	"Plot": "Deadpool is a 2016 American superhero film directed by Tim Miller and written by Rhett Reese and Paul Wernick, based on the Marvel Comics character of the same name.",
	"Poster": "https://m.media-amazon.com/images/M/MV5BYzE5MjY1ZDgtMTkyNC00MTMyLThhMjAtZGI5OTE1NzFlZGJjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg",
	"Imdb": {
		"Id": "tt1431045",
		"Rating": 8.1,
		"Votes": NumberLong(585141)
	},
	"Tomato": {
		"Meter": NumberInt(99),
		"Image": "certified",
		"Rating": 6.9,
		"Reviews": NumberInt(287),
		"Fresh": NumberInt(241),
		"Consensus": "Fast, funny, and gleefully profane, the fourth-wall-busting Deadpool.",
		"UserMeter": NumberInt(90),
		"UserRating": 4.3,
		"UserReviews": NumberLong(181719)
	},
	"Metacritic": NumberInt(92),
	"Awards": {
		"Wins": NumberInt(5),
		"Nominations": NumberInt(12),
		"Text": "wo Golden Globe Award nominations for Best Motion Picture – Musical or Comedy and Best Actor – Motion Picture Musical or Comedy."
	},
	"Type": "movie"
});

// Batman v Superman: Dawn of Justice
db.movies.insert({
	"_id": "589cc22cc0b9fec62febf275",
	"Title": "Batman v Superman: Dawn of Justice",
	"Year": NumberInt(2016),
	"Rated": "PG-13",
	"Released": new Date("2016-03-19T04:00:00.000Z"),
	"Runtime": NumberInt(151),
	"Countries": [
		"USA"
	],
	"Genres": [
		"Action",
		"Adventure",
		"Sci-Fi"
	],
	"Director": "Lee Unkrich",
	"Writers": [
		"Chris Terrio",
		"David S. Goyer"
	],
	"Actors": [
		"Amy Adams",
		"Henry Cavill",
		"Ben Affleck"
	],
	"Plot": "The general public is concerned over having Superman on their planet and letting the Dark Knight - Batman - pursue the streets of Gotham. While this is happening, a power-phobic Batman tries to attack Superman.,Meanwhile Superman tries to settle on a decision, and Lex Luthor, the criminal mastermind and millionaire, tries to use his own advantages to fight the Man of Steel.",
	"Poster": "https://m.media-amazon.com/images/M/MV5BYThjYzcyYzItNTVjNy00NDk0LTgwMWQtYjMwNmNlNWJhMzMyXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg",
	"Imdb": {
		"Id": "tt2975590",
		"Rating": 6.7,
		"Votes": NumberLong(3206)
	},
	"Tomato": {
		"Meter": NumberInt(27),
		"Image": "certified",
		"Rating": 4.9,
		"Reviews": NumberInt(353),
		"Fresh": NumberInt(97),
		"Consensus": "Batman v Superman: Dawn of Justice smothers a potentially powerful story -- and some of Americas most iconic superheroes -- in a grim whirlwind of effects-driven action.",
		"UserMeter": NumberInt(64),
		"UserRating": 3.6,
		"UserReviews": NumberLong(225954)
	},
	"Metacritic": NumberInt(44),
	"Awards": {
		"Wins": NumberInt(6),
		"Nominations": NumberInt(26),
		"Text": "Actor of the Year, Most Original Poster, Best Body of Work"
	},
	"Type": "movie"
});

// Doctor Strange
db.movies.insert({
	"_id": "589cc417c0b9fec62febf276",
	"Title": "Doctor Strange",
	"Year": NumberInt(2016),
	"Rated": "PG-13",
	"Released": new Date("2016-11-04T04:00:00.000Z"),
	"Runtime": NumberInt(115),
	"Countries": [
		"USA"
	],
	"Genres": [
		"Sci-Fi",
		"Fantasy",
		"Adventure",
		"Action"
	],
	"Director": "Scott Derrickson",
	"Writers": [
		"Jon Spaihts",
		"Scott Derrickson"
	],
	"Actors": [
		"Benedict Cumberbatch",
		"Chiwetel Ejiofor",
		"Rachel McAdams"
	],
	"Plot": "Marvels Doctor Strange follows the story of the talented neurosurgeon Doctor Stephen Strange who, after a tragic car accident, must put ego aside and learn the secrets of a hidden world of mysticism and alternate dimensions. Based in New York Citys Greenwich Village, Doctor Strange must act as an intermediary between the real world and what lies beyond, utilising a vast array of metaphysical abilities and artifacts to protect the Marvel Cinematic Universe.",
	"Poster": "https://m.media-amazon.com/images/M/MV5BYzljNzE0ZDktNWFkOS00ZjE3LWJjNzEtZTE0NmVhNzBmYzE5XkEyXkFqcGdeQXVyNjg3MDMxNzU@._V1_UX182_CR0,0,182,268_AL_.jpg",
	"Imdb": {
		"Id": "tt1211837",
		"Rating": 7.8,
		"Votes": NumberLong(191181)
	},
	"Tomato": {
		"Meter": NumberInt(27),
		"Image": "certified",
		"Rating": 4.9,
		"Reviews": NumberInt(353),
		"Fresh": NumberInt(97),
		"Consensus": "Batman v Superman: Dawn of Justice smothers a potentially powerful story -- and some of Americas most iconic superheroes -- in a grim whirlwind of effects-driven action.",
		"UserMeter": NumberInt(64),
		"UserRating": 3.6,
		"UserReviews": NumberLong(225954)
	},
	"Metacritic": NumberInt(44),
	"Awards": {
		"Wins": NumberInt(6),
		"Nominations": NumberInt(38),
		"Text": "Oscar, Best Visual Effects"
	},
	"Type": "movie"
});

// Kung Fu Panda 3
db.movies.insert({
	"_id": "589cc696c0b9fec62febf277",
	"Title": "Kung Fu Panda 3",
	"Year": NumberInt(2016),
	"Rated": "PG",
	"Released": new Date("2016-01-29T04:00:00.000Z"),
	"Runtime": NumberInt(95),
	"Countries": [
		"USA"
	],
	"Genres": [
		" Animation",
		"Action",
		"Adventure",
		"Comedy",
		"Family"
	],
	"Director": " Alessandro Carloni",
	"Writers": [
		" Jonathan Aibel",
		"Glenn Berger"
	],
	"Actors": [
		" Jack Black",
		"Dustin Hoffman",
		"Bryan Cranston"
	],
	"Plot": "When Pos long-lost panda father suddenly reappears, the reunited duo travels to a secret panda paradise to meet scores of hilarious new panda characters. But when the supernatural villain Kai begins to sweep across China defeating all the kung fu masters, Po must do the impossible-learn to train a village full of his fun-loving, clumsy brethren to become the ultimate band of Kung Fu Pandas.",
	"Poster": "https://m.media-amazon.com/images/M/MV5BMTUyNzgxNjg2M15BMl5BanBnXkFtZTgwMTY1NDI1NjE@._V1_UX182_CR0,0,182,268_AL_.jpg",
	"Imdb": {
		"Id": "tt2267968",
		"Rating": 7.2,
		"Votes": NumberLong(83809)
	},
	"Tomato": {
		"Meter": NumberInt(87),
		"Image": "certified",
		"Rating": 6.8,
		"Reviews": NumberInt(153),
		"Fresh": NumberInt(133),
		"Consensus": "Kung Fu Panda 3 boasts the requisite visual splendor, but like its rotund protagonist, this sequels narrative is also surprisingly nimble, adding up to animated fun for the whole family.",
		"UserMeter": NumberInt(79),
		"UserRating": 3.9,
		"UserReviews": NumberLong(98794)
	},
	"Metacritic": NumberInt(44),
	"Awards": {
		"Wins": NumberInt(0),
		"Nominations": NumberInt(6),
		"Text": "Best Animated Feature, Most Wanted Pet"
	},
	"Type": "movie"
});

// Zootopia
db.movies.insert({
	"_id": "589cc846c0b9fec62febf278",
	"Title": "Zootopia",
	"Year": NumberInt(2016),
	"Rated": "PG",
	"Released": new Date("2016-04-04T04:00:00.000Z"),
	"Runtime": NumberInt(108),
	"Countries": [
		"USA"
	],
	"Genres": [
		"Animation",
		"Adventure",
		"Comedy",
		"Crime",
		"Family",
		"Mystery"
	],
	"Director": "Byron Howard",
	"Writers": [
		"Byron Howard",
		"Rich Moore"
	],
	"Actors": [
		"Ginnifer Goodwin",
		"Jason Bateman",
		"Idris Elba"
	],
	"Plot": "From the largest elephant to the smallest shrew, the city of Zootopia is a mammal metropolis where various animals live and thrive. When Judy Hopps becomes the first rabbit to join the police force, she quickly learns how tough it is to enforce the law. Determined to prove herself, Judy jumps at the opportunity to solve a mysterious case. Unfortunately, that means working with Nick Wilde, a wily fox who makes her job even harder.",
	"Poster": "https://m.media-amazon.com/images/M/MV5BOTMyMjEyNzIzMV5BMl5BanBnXkFtZTgwNzIyNjU0NzE@._V1_UX182_CR0,0,182,268_AL_.jpg",
	"Imdb": {
		"Id": "tt2948356",
		"Rating": 8.1,
		"Votes": NumberLong(262258)
	},
	"Tomato": {
		"Meter": NumberInt(98),
		"Image": "certified",
		"Rating": 8.1,
		"Reviews": NumberInt(241),
		"Fresh": NumberInt(236),
		"Consensus": "Kung Fu Panda 3 boasts the requisite visual splendor, but like its rotund protagonist, this sequels narrative is also surprisingly nimble, adding up to animated fun for the whole family.",
		"UserMeter": NumberInt(92),
		"UserRating": 4.4,
		"UserReviews": NumberLong(95658)
	},
	"Metacritic": NumberInt(44),
	"Awards": {
		"Wins": NumberInt(26),
		"Nominations": NumberInt(52),
		"Text": "Best Animated Feature Film of the Year, Best Motion Picture - Animated"
	},
	"Type": "movie"
});

// "John Carter"
db.movies.insert({
	"_id": "589d733a296ba85b1bc3bee6",
	"Title": "John Carter",
	"Year": NumberInt(2012),
	"Rated": "PG-13",
	"Released": new Date("2012-03-09T04:00:00.000Z"),
	"Runtime": NumberInt(132),
	"Countries": [
		"USA"
	],
	"Genres": [
		"Action",
		"Adventure",
		"Sci-Fi"
	],
	"Director": "Andrew Stanton",
	"Writers": [
		"John Lasseter",
		"Andrew Stanton",
		"Lee Unkrich",
		"Michael Arndt"
	],
	"Actors": [
		"Andrew Stanton",
		"Mark Andrews"
	],
	"Plot": "John Carter, a Civil War veteran, who in 1868 was trying to live a normal life, is asked by the Army to join, but he refuses so he is locked up. He escapes, and is pursued. Eventually they run into some Indians, and theres a gunfight. Carter seeks refuge in a cave. While there, he encounters someone who is holding some kind of medallion. When Carter touches it, he finds himself in a place where he can leap incredible heights, among other things. He later encounters beings he has never seen before. He meets a woman who helps him to discover that he is on Mars, and he learns theres some kind of unrest going on.",
	"Poster": "https://m.media-amazon.com/images/M/MV5BMDEwZmIzNjYtNjUwNS00MzgzLWJiOGYtZWMxZGQ5NDcxZjUwXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_FMjpg_UX742_.jpg",
	"Imdb": {
		"Id": "tt0401729",
		"Rating": 6.6,
		"Votes": NumberLong(217518)
	},
	"Tomato": {
		"Meter": NumberInt(51),
		"Image": "certified",
		"Rating": 5.7,
		"Reviews": NumberInt(219),
		"Fresh": NumberInt(111),
		"Consensus": "While John Carter looks terrific and delivers its share of pulpy thrills, it also suffers from uneven pacing and occasionally incomprehensible plotting and characterization.",
		"UserMeter": NumberInt(60),
		"UserRating": 3.5,
		"UserReviews": NumberLong(113966)
	},
	"Metacritic": NumberInt(92),
	"Awards": {
		"Wins": NumberInt(2),
		"Nominations": NumberInt(7),
		"Text": "Top Box Office Films, Best Original Score for a Fantasy/Science Fiction/Horror Film"
	},
	"Type": "movie"
});

EOF
