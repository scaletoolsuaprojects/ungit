## ungit - git tree viewer & more
Dockerized version of [ungit](https://github.com/FredrikNoren/ungit) together with conf files. 

Setup:
- Build the image
- Have host with Docker and Nginx installed
- User running the container needs to have SSH identity in ssh-agent that grants access to desired repositories 
  - `ssh-add -l` - check what identities are loaded into ssh-agent
  - `ssh-add /path/to/private_key` - import private part of key associated with GitHub account
  - `eval $(ssh-agent)` or `eval ssh-agent bash` - to initialize ssh-agent if it wasn't running already
- Afterwards just run `bash run_ungit.sh`
- App will be accessible at `http://localhost:8448`
- Use nginx to provide https and basic auth (directive `auth_basic_user_file`)