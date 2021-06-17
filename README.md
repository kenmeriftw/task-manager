# TaskManager

The backend part of test-task for Oblako Group. It works with Angular-frontend now, both of apps are deployed on Heroku (links 

There are three API-methods available now:
- GET /projects — return all the Projects with Todos related;
- POST /todos — creates a new Todo;
- PATCH /projects/id/todo/id — updates Todo.

Feel free to visit the Heroku deploy-page or to use the provided API!

To run this application locally on your machine, you have to have `ruby-2.7.2` installed. Then,

- clone this repo using
```
git clone git@github.com:knmrftw/task-manager.git
```
- make `cd` into new directory
- run 
```
bundle
```
to install all the required Gems
- run 
```
rails db:create
rails db:migrate
```
to create the development Database and run all the required migrations in it.
- finally, you may run
```
rails s
```
to start the local server, which may be found on `localhost:3000`
