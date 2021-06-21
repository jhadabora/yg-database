## Overview

Yordas technical task containing a chemical database with filters for EC number, CAS number and regulation type.

- Homepage: `/`
- Substances Page: `/substances`

Using CakePHP 4.1, requires PHP 7.2+

## Installation

1. Install Composer and install the environment.

```bash
composer install
```

2. Run the built in web server with:

```bash
bin/cake server -p 8765
```

3. Run your local database and import the contents of import/yordas_chemicals.sql

```
\. import/yordas_chemicals.sql
```

4. Edit the generated `config/app_local.php` file and enter your credentials for the default database connection, and set the initial database to `yordas_chemicals`.

```php
'default' => [
    'host' => 'localhost',
    'username' => 'username',
    'password' => 'password',
    'database' => 'yordas_chemicals',
],
```

Then visit `http://localhost:8765` to see the homepage.