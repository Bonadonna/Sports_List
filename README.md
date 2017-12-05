# Sports_List
My sample app called SportsList made with siwft without storyboard, because in my opinion that way is more confortable for future upgradeof the app or the desing of Iphone. 
SportsList retrieves the sports list thank to one API delegate that call API async with to two escaping (one for completition and one for failure).
It will show the result, when the date are ready, in a vertical simple list with sport names for each row; while the list are waiting for data appear an allert for loading the data from database.
If an user press on a row, a navigatore controll show an other pages with details of the selected sport like match duration time of match and numer of match.
I used alamofire for the api because in my opinion is better than the afnetworking.

Assignment
PUC applications use an API call to get a JSON which contains the list of all sports we can handle in our booking system.
The url is https://sandbox.prenotauncampo.it/rest/sports/
Code a little app that:
1. retrieves the sports list,
2. show sports in a vertical simple list with sport names for each row,
3. let the user press on a row to inspect all the details of the selected sport in other page.
You are free to use any kind of framework or library, but keep the code and the app simple and clean.
During the development commit your code to a shareable repository (Github) with requested code and a readme.txt file (pref in english) where you briefly explain about:
• yoursampleapp,
• thedecisionsyoumade,
• thepatternsandlibrariesused.
Bonus: Present the result of API call async.
In other words, do not block in any way the UI during the network time, but show the result as soon as it is available.
