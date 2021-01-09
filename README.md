# README

## Local Setup

### 1. Install RVM
```$ \curl -sSL https://get.rvm.io | bash```  
If you face any issues, please check [RVM](https://rvm.io/rvm/install)

### 2. Install and use Ruby
```
$ rvm install 2.7.0
$ rvm use 2.7.0
```

### 3. Create a gemset for the project
```
$ rvm gemset create <gemset_name>
$ rvm use 2.7.0@gemset_name
```

### 4. Install Rails
```
$ gem install rails --version=5.2.4.2
```

### 5. Clone JustText
```
$ git clone git@github.com:boring-dude/justtext.git
$ cd justtext
$ bundle install
```

#### Congratulations! You've completed the local setup successfully

## Things to do

-> Add Sign up, User creations and updations

-> Ability to create private channels with users using name or email

-> Deployment in a production environment
