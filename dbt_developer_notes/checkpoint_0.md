SQL: Familiarity with joins, aggregations, CTEs, and window functions.
Git: Familiarity with branching strategies, basic commands, and pull requests.

## Phase 1: sync main and create your feature branch 
```
git checkout main
git pull origin main
# git pull combines git fetch and git merge. git fetch will update how you track what is in remote. git merge will then reconcile those changes with what is on your computer
git checkout -b feature/stg-payments-model
```

## Phase 2: Make changes, add files, and create
```
git status
git add models/staging/stg_payments.sql models/staging/schema.yml
git commit -m "feat: add stg_payments models and schema tests" 
```

## Phase 3: Push branch and open pull reqeust
```
git push -u origin feature/stg-payments-model
```
(Web UI): Go to GitHub/GitLab/Bitbucket.Select Base: main $\leftarrow$ Compare: feature/stg-payments-model.Click Create Pull Request.

## Phase 4: Merge the pull request 

(Web UI): Once code review passes and Slim CI checks succeed, click Merge Pull Request (or Squash and Merge) in the web interface.

## Phase 5: Post-Merge Clean up
```
git checkout main 

git pull origin main 

git branch -d feature/stg-payments-model

git fetch --prune
```