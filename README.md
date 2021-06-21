## Overview

Yordas technical task containing a chemical database with filters for EC number, CAS number and regulation type.

- Homepage: `/`
- Substances Page: `/substances`

Using CakePHP 4.1, requires PHP 7.2+

## Installation

1. Run the built in web server with:

```bash
bin/cake server -p 8765
```

2. Run your local database and import the contents of import/yordas_chemicals.sql

```
\. import/yordas_chemicals.sql
```

3. Create a `config/app_local.php` file based on `config/app_local.example.php` and enter your credentials to allow the app to use your database, and set the default database to `yordas_chemicals`.

```php
'default' => [
    'host' => 'localhost',
    'username' => 'username',
    'password' => 'password',
    'database' => 'yordas_chemicals',
],
```

Then visit `http://localhost:8765` to see the homepage.