cd /workspaces/github
# Ensure the service mapping cache files exist (used by following steps)
bin/generate-service-files.rb --cache-only

# recreate API files after making changes to operations and such
bin/openapi generate-root-files

# Update programmatic-access.yml
bin/safe-ruby script/programmatic-access update
