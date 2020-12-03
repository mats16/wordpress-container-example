FROM public.ecr.aws/q9z3k1b4/wordpress:latest

RUN apt-get update && apt-get install -y wget unzip

RUN wget -O amazon-polly.zip https://downloads.wordpress.org/plugin/amazon-polly.4.2.2.zip \
    && unzip -q -o '*.zip' -d /usr/src/wordpress/wp-content/plugins \
    && chown -R www-data:www-data /usr/src/wordpress/wp-content/plugins \
    && rm -f '*.zip'
