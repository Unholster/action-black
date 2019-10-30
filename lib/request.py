import os
from github import Github

print('Je suis un script python')
print(os.environ)
github_token = os.environ['GITHUB_TOKEN']
github_repository = os.environ['GITHUB_REPOSITORY']
pr_number = os.environ['GITHUB_REF'].split("/")[2]

g = Github(github_token)
repo = g.get_repo(github_repository)
pr = repo.get_pull(int(pr_number))
pr.create_issue_comment("Formatted by BLACK")