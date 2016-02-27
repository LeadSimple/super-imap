#!/bin/bash
bundle install
rake db:setup db:seed
foreman start -c "web=1, worker=1, imap_client_1x=1"