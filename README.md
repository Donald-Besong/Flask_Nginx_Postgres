<div id="top"></div>
<!--
*** Thanks for checking out my project
*** Dr Donald O. Besong
-->


<!-- PROJECT LOGO -->
<br />
<div align="center">
<a href="http://github.com/Donald-Besong/Donald_Rest_API">
<img src="images/logo.png" alt="Logo" width="80" height="80">
</a>

<h3 align="center">Donald's rest API</h3>
<p align="center">
project_description
<br />
<a href="http://github.com/Donald-Besong"><strong>Explore the docs »</strong></a>
</p>
</div>

## Usage

1. Clone the repositry and open the terminal in the root directory.
```bash
$ docker-compose up -d postgres_service
$ docker-compose run --rm flask_service /bin/bash -c "cd /opt/services/flaskapp/src && python -c  'import database; database.init_db()'"
```

2. Bring up the cluster
```bash
$ docker-compose up -d
```

3. Browse to localhost:8080 to see the enjoy the amazing app.

## Notes
In database.py, engine = create_engine('postgresql://%s:%s@%s:%s/%s' % (user, pwd, host, port, db)) 
Please do not use the short form postgres, because it would fail.
host should be the name of the service for the db, as you have in your 
docker-compose file.
