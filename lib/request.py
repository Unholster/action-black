import os
from github import Github

print('Je suis un script python')
print(os.environ)
github_token = os.environ['GITHUB_TOKEN']
github_repository = os.environ['GITHUB_REPOSITORY']

g = Github(github_token)
repo = g.get_repo(github_repository)
pr = repo.get_pull(7)
pr.create_issue_comment("Formatted by black")