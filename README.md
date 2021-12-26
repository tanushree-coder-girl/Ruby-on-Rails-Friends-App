How To Host Website On Heroku

1. Install Heroku in Ubunto 

    sudo snap install --classic heroku

2. check version 
    heroku --version

3. Login 
    heroku login

4. create 
    heroku create

5. Rename App 
    heroku rename ror-friends-app

    https://ror-friends-app.herokuapp.com/

6. Add ssh key
    heroku keys:add

7. Database for Production and developemnt 

    add  sqlite in developmment
      gem 'sqlite3', '~> 1.4'

    add pg for production 

        group :production do
            gem 'pg', '~> 1.2', '>= 1.2.3'
            #gem 'rails_12factor', '0.0.2'
        end

    Install bundle now
        bundle install --without production 

8. Now push fresh code on github 

git add .
git commit -m "add pg to production"
git push 

9. Now Add on Heroku 

git push heroku main
heroku run rails db:migrate 


Congrats...
Your App is live now ....
You Can look At this on This domain... 

https://ror-friends-app.herokuapp.com/

================================= Enjoy Coding =================================


