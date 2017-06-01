# Docker Symfony (PHP7-FPM + NGINX)

A development environement for Symfony3 developers. It runs Nginx and PHP7-FPM.

## Quickstart

```
git clone https://github.com/eon01/docker-symfony.git
cd docker-symfony
mkdir code
echo -e "<?php\n// Show all information, defaults to INFO_ALL\nphpinfo();\n?>" > code/index.php
docker-compose up
```

Now go to http://127.0.0.1

This project is inspired from: maxpou/docker-symfony

Thanks to [@bsene](https://github.com/bsene)
