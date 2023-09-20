
FROM kalilinux/kali-bleeding-edge
WORKDIR /app
RUN apt update && apt install -y nikto && echo "Nikto Installation Complete ! "
# RUN apt install -y nikto && echo "Nikto Installation Complete ! "
RUN apt update && apt install -y curl gnupg
# RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
#     && apt-get install -y nodejs
# COPY package*.json ./
# RUN echo "hello"
# COPY nikto.js /app
# CMD ["nikto.js"]
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
COPY . .
ENTRYPOINT [ "node" ]
CMD [ "nikto.js" ]
