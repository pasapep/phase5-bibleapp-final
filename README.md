# Phase 5 Project 

## Project Description 

- This app will allow users to read bible and keep track of the reading progress  

## Models 

1. A user has many tablebooks and has many bibles through tablebooks. 
2. A bible has many tablebooks and has many users through tablebooks
3. A tablebook belongs to a user and a bible. 

## ERD Diagram 
![erd newnew](https://user-images.githubusercontent.com/117331219/228733244-4882e80d-e73c-4f38-b749-6104661e96d2.png)

## Validations 
Users: 
validates_uniqueness_of:email
validates :name, presence : true 

bible: 
validates :book, presence: true
validates :chapters, presence: true 

date 
validates : date, date.strptime("%m%d%y")

## REACT Components 
![React Component](https://user-images.githubusercontent.com/117331219/224904683-6babaaf3-22d4-4892-a2b3-652040cc1b3e.png)


