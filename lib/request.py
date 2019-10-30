from github import Github

print('Je suis un script python')

g = Github(os.environ['GITHUB_TOKEN'])
for repo in g.get_user().get_repos():
    print(repo.name)