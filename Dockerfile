FROM nginx:1.21.6

# Update all packages
RUN apt-get update && apt-get -y upgrade

# Use a custom startpage
RUN echo '<html><bod>My Custom Startpage</body></html>' > /usr/share/nginx/html/index.html
COPY build.sh .
RUN touch testfile
RUN chmod +x build.sh
RUN ./build.sh