FROM ruby:2.5.1
 
# add nodejs and yarn dependencies for the frontend
RUN apt-get update && apt-get install -y build-essential nodejs
 
# Instala nossas dependencias
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
nodejs yarn build-essential libpq-dev imagemagick git-all nano
 
 
# Seta nosso path
ENV INSTALL_PATH /onebitexchange
 
# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH
 
# Seta o nosso path como o diretório principal
WORKDIR $INSTALL_PATH
 
# Seta o path para as Gems
ENV BUNDLE_PATH /gems
 
# Copia nosso código para dentro do container
COPY . .
