# README

## WHAT
-------

Horrorscope is a fun app that automatically generates horoscopes, with a twist. Horrorscope pokes fun at horoscopes and entertains horror lovers by mashing together a horror theme with generated horoscope text for each zodiac sign.

Horrorscope was built as a solo project in just over four days during the General Assembly Web Development Immersive.

## TECH
-------

Horrorscope is built primarily in Ruby on Rails (standard MVC fun). Horrorscope relies on javascript for corny animations and AJAX calls to external APIs for the movie content displayed. The front end was written in HTML5 and CSS3, using Sass and Bourbon but no cheaty frameworks. It's not easy to replicate a true early '00s horoscope website!

Other stuff:
- the copy library and the generator and imdb scraping functions are modularized and pushed into lib to keep the MVC relatively clean
- postgres for storing the daily horoscopes, emails and movies information
- a fancy homegrown algorithm that punches together a bunch of copy in different segments with a horror them and sub-themes to spin some kind of consistent feel
- sendgrid and rails activemailer to email welcome messages on signup
- HTTParty for grabbing omdb's movie data to push into my db
- Nokogiri for scraping imdb's movie images (shh don't tell anyone) because omdb's posters sometimes aren't served and it's annoying to demo when poster images don't load
- also I have an api if you want to access the daily horrorscope at /horrorscopes/api
- localStorage for determining first time visitors, default horoscope of user etc
- figaro and environment variables so I don't have to put sendgrid passwords etc on github
- deployed on heroku because it's free and the world deserves horrorscopes

## LINK
-------

Click on [this](https://horrify.herokuapp.com/). Do it

## LEARNINGS
------------

- I wasted about an hour and a half trying wrangle up a grid system into a simple design that didn't really fit a grid
- better understanding of how to keep rails code modular
- mailer stuff
- deployment is hard but not that hard (ok so heroku helps)
- small scope on projects with optional features makes for achievable wins
- scraping is sneaky and powerful
- environment variables, though figaro was overkill I think
- sass beats vanilla css by a fair amount
- there is never time for testing
- you can do a lot in four days!

## TIPS
-------

For best experience...

The site is, like vaguely responsive but probably best viewed on a desktop. Note that it is intentionally designed to look a bit ridiculous and aged. Hope your eyes are okay. The 'love heart' is cool though right?

It isn't actually set up to email the daily horroscopes because I figured that would be annoying, so don't be shy about putting in your email address to test the welcome email. I won't even sell it to spammers.

The products bit is a placeholder I guess, I'm not actually trying to sell you anything.

Thanks for viewing and let me know about any terrible bugs!
