# glot

This is the frontend for _glot_, a place to translate for fun and profit. The purpose of the app is to connect translators with those who need translations.

This project utilizes Ruby on Rails for hassle-free quires to the SQL database. Additionally, it adds GraphQL on top to provide a [frontend](https://github.com/m4thayus/glot-frontend)-focused API. The database schema is shown below:

![Schema](https://github.com/m4thayus/glot-backend/blob/master/models.png?raw=true)

The core functionality of glot revolves around three main user stories:
1. A user can submit a text for translation, into another language, or for clarification in the same language e.g. idioms
2. A user, who knows the relevant language(s), can submit a translation for a pending text.
3. A user, who knows the relevant language(s), can "upvote" or "downvote" a translation of a text.

Once a translation reaches an arbitrary threshold of, in this case 3, cumulative positive (i.e "up") votes. The translation and text are marked complete.

To view a live version of this project go to [https://glot.conceptualsoup.blog/](https://glot.conceptualsoup.blog/). A basic demo user is provided with the below credentials:

    User: demo
    Pass: 123