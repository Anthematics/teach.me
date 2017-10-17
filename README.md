  
  ```--------------------------------------------Teach.ME--------------------------------------------------
                                     Our final project 
                                         GET HYPED
                                            Feat.
                                      LOB TO THE SANG ,
                                    NAVI DA BUG KILLIN BEAST,  
                              KAISER "MAKES ME THINK OF BREAD" CHANNNN,
                                              &&&&
                           Jayshun "I'm spelling my own name wrong" Harder
                   ***************FEEL FREE TO MAKE CHANGES AS NEEDED ***************                                                                   
1. Standards
2. Workflow
3. Priorities
4. Helpful stuff
A. Git Commands 
B. Relevent Links
5. Solving production issues
  
  
  

STANDARDS


Test complex logic -> It was agreed amoung the seniors at Bitmaker that we only really have to worry about testing our complex apps -> remember how much employers love well tested code!

comments -> If it is not apparant what the code is trying to accomplish right away we should:
1) Refactor or 2) Commenting the code

Committing -> whenever we debug or write a method I imagine we should commit. 

if there are any instructions regarding something we created that have to be followed at a (LATER) time , please add the instruction to the trello list (for now) until we have a better strategy -> TO AVOID EXTRA BUGGYNESS


OUR WORKFLOW
 1- Add features in develop -> Push to develop ONLY when Individual Bugs have been worked out to keep production clean.
 2- When Master is pushed to heroku there may be bugs (Production issues stopping the live app from working) when these           issues have been worked out we must push the master branch BACK to development.
------------------------------------------------GITHUB-----------------------------------
1) pull latest from develop
2) create local branch -> checkout the branch 
3) add change to local branch
4) create temp branch 
5) IF NO CONFLICT : git merge develop 
6) git checkout local branch and merge to develop

------------------------------------------------HEROKU-----------------------------------

                              ----Deploying to Heroku --- 
                              Go to github.com 
                              pull request (look at compare and p
                              then merge 
                              ----command line below---
                              then checkout master
                              then pull 
                              then push 
                              -----------END---------
                              IN CASE OF PRODUCTION ISSUES (Heroku deployment issues) 
                              if you have made any changes in master 
                              go to github 
                              pull request and merge 
                              from master to develop 

                              origin will be master pushing to develop
---------------------------------------------------------------------------
      
XXXXXXXXXXXXXXXXXXXXXXXXXXX       Priorities XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

Take a look at githooks - Should allow for strong testing
Ruby cop -> enforces ruby style guide.
Develop a timeline.
Standards


             ______________________________  Helpful things ____________________________ 
             
A: Some git commands: git init /// creates new git repository
git add . /// adds files to staging
git add --all ///adds files to staging (incl deleted) 
git commit -m "<message>" /// moves files to repo
git status /// checks the status of files
git log /// shows history of commits
git fetch //Use git fetch to retrieve new work done by other people. Fetching from a repository grabs all the new remote-     tracking branches and tags without merging those changes into your own branches.
git commit --amend -m // amend a commit when you do not feel the notes are accurate. 
BRANCHING

git branch -a /// shows all branches
git branch <branch_name> /// creates <branch_name>
git checkout <branch_name> /// switches to <branch_name>
git merge <branch_name> /// brings new branch back to current branch. ```
                
```B: Some heroku commands 
git remote -v will show both github and heroku remotes.  
heroku create -> creates a new heroku app -> you will not need this. (but useful for your own projects)
git push heroku master -> self explanatory 
git add . , git commit -m "' -> functionality remains the same.
                
                
                B: Relevant Links (in case you missed a link didnt bookmark not at main computer)
                          https://trello.com/b/3f0p2RmT/teachme -> Group trello
                          https://teachmeproduction.herokuapp.com -> production app -> also in "our website" link
                                  
                                  

------------------------------------------Solving Production Issues --------------------------------------------
Issue: Cannot go to signup page in heroku production app 

Log Error: FATAL -- : [c9be78c3-9abb-406f-8a14-3736b19ffc41] ActiveRecord::StatementInvalid (PG::UndefinedTable: ERROR:  relation "users" does not exist

fix: run a db migrate for heroku as that means your heroku data base does not know what a user is. 
command: heroku run rake db:migrate 

1) heroku run rake db:migrate
