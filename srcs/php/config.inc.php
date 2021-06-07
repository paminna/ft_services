<?php
declare(strict_types=1);
$cfg['blowfish_secret'] = '';
$i = 0;
$i++;
$cfg['Servers'][$i]['auth_type'] = 'php-svc';
$cfg['Servers'][$i]['host'] = 'mysql-svc:3306';
$cfg['Servers'][$i]['password'] = 'password';
$cfg['Servers'][$i]['user'] = 'admin';

$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = false;
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';