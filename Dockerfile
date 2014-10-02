############################################################
# Dockerfile to build our project
# Based on Ubuntu
############################################################

FROM ubuntu

MAINTAINER swillis "Sylvester Willis"

ENV HOME /root
ENV RAILS_ENV test

WORKDIR /home/app/railstutorial

CMD git clone https://github.com/sylvesterwillis/sample_app_rails_4.git
WORKDIR sample_app_rails_4

RUN bundle install --without production
RUN bundle exec rake db:migrate
RUN rails s
