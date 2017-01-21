FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.1.6

RUN gem install catalogchoice-ar_mailer --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ar_sendmail"]
CMD ["--help"]
