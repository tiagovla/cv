FROM alpine:3.21

RUN apk add --no-cache tectonic
RUN echo "\\documentclass{article}\\begin{document}This is a minimal article.\\end{document}" | tectonic -o /tmp -

WORKDIR /data

CMD ["tectonic"]
