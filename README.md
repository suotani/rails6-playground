# README

# migration
bundle exec ridgepole -c config/database.yml -E development --apply -f db/Schemafile
bundle exec rake db:schema:dump