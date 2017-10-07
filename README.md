                                 # teach.me

Our final project - In this description I would like to outline our set of standards at some point.

STANDARDS
When you are in github -> 
hit the compare and pull request so you can see what changes have been made.


OUR WORKFLOW
 1- Add features in develop -> Push to develop ONLY when Individual Bugs have been worked out to keep production clean.
 2- When Master is pushed to heroku there may be bugs (Production issues stopping the live app from working) when these           issues have been worked out we must push the master branch BACK to development.


                              ----Deploying to Heroku --- 
                              Go to github.com 
                              pull request
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

Test complex logic -> It was agreed amoung the seniors at Bitmaker that we only really have to worry about testing our complex apps -> remember how much employers love well tested code!

comments -> If it is not apparant what the code is trying to accomplish right away we should:
1) Refactor or 2) Commenting the code

______________________________  Helpful things ____________________________ 
Git Workflow

git init /// creates new git repository
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
git merge <branch_name> /// brings new branch back to current branch
