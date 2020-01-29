# The lygeum server official container images 
<center>
<img src="https://raw.githubusercontent.com/kaiso/lygeum/master/ui/src/assets/lygeum_logo_square.png" width="400" height="250"/><br><br>
</center>
<br>
<br>

#### [Visit project home page](https://kaiso.github.io/lygeum/)

## What is Lygeum
---
Lygeum is a centralized configuration server for modern applications and services.
Lygeum is especially suitable for cloud based applications and distributed systems and provides a unique interface and repository for managing configurations.[**learn more...**](https://kaiso.github.io/lygeum/)

## How to use this image
---
### Run the server with the default embedded database<br>
_This should be used only for test purposes_
```bash
docker run -itd -p 5000:5000 kaiso/lygeum:latest
```
You can go on the administration console by visiting `http://localhost:5000`
<br>

### Run the server with PostgreSQL backend<br>
_Suitable for production environment_

```bash
docker run -itd -p 5000:5000 -e DB_VENDOR=postgres (add other database environment variables here) kaiso/lygeum:latest
```
#### Environment variables to specify:
`DB_HOST` : the hostname or ip of the database<br>
`DB_PORT`: Specify port of the database (optional, default is DB vendor default port)<br>
`DB_DATABASE`: Specify name of the database to use (optional, default is lygeum).<br>
`DB_SCHEMA`: Specify name of the schema to use for DB that support schemas (optional, default is public on Postgres).<br>
`DB_USER`: Specify user to use to authenticate to the database (optional, default is postgres).<br>
`DB_PASSWORD`: Specify user's password to use to authenticate to the database (optional, default is postgres).

You can go on the administration console by visiting `http://localhost:5000`

## LICENSE

   © Copyright 2020 Kais OMRI.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.