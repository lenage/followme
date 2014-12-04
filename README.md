## FollowMe 找到和你志趣相投的人

This is a demo App and for FollowMe.

[See L!VE on Heroku](http://fast-gorge-1797.herokuapp.com)

Please create a [new issue](https://github.com/lenage/followme/issues) if you have any questions. :)


## Getting started

1. Install postgresql on your local
2. `bundle install`
3. `cp config/databases.yml.example config/database.yml` and fill your postgresql username and password
4. `rake db:migrate db:seed`
5. sign up http://fast-gorge-1797.herokuapp.com/users/sign_up
5. sign in http://fast-gorge-1797.herokuapp.com/users/sign_in
6. Testing

PS. can't sign out for now, cause it's a DELETE request

## PAGES
1. All users http://fast-gorge-1797.herokuapp.com/
2. User profiles with updated history http://fast-gorge-1797.herokuapp.com/profiles/1
3. My followed users http://fast-gorge-1797.herokuapp.com/follow

## API
1. Get all users profiles `curl -XGET http://fast-gorge-1797.herokuapp.com/profiles.json`
2. Get user profiles count `curl -XGET http://fast-gorge-1797.herokuapp.com/profiles/1.json`
