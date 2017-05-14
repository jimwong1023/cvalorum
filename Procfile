web: bundle exec rails server -p $PORT -e $RAILS_ENV
default_worker: bundle exec sidekiq -i ${DYNO:-1} -q default -c 1
