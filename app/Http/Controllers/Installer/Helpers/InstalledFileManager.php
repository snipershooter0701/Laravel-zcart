<?php
/*   __________________________________________________
    |  Obfuscated by YAK Pro - Php Obfuscator  2.0.1   |
    |              on 2021-03-01 09:45:29              |
    |    GitHub: https://github.com/pk-fr/yakpro-po    |
    |__________________________________________________|
*/
/*
* Copyright (C) Incevio Systems, Inc - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Proprietary and confidential
* Written by Munna Khan <help.zcart@gmail.com>, September 2018
*/
 namespace App\Http\Controllers\Installer\Helpers; class InstalledFileManager { public function create() { $installedLogFile = storage_path("\151\x6e\163\164\141\x6c\154\x65\x64"); $dateStamp = date("\x59\x2f\155\57\x64\x20\x68\72\x69\72\163\141"); if (!file_exists($installedLogFile)) { goto X0ues; } $message = trans("\x69\156\x73\x74\141\x6c\154\145\x72\137\x6d\145\163\x73\141\x67\145\x73\x2e\x75\x70\144\141\164\x65\162\x2e\154\x6f\147\x2e\163\x75\x63\x63\145\163\x73\137\x6d\145\x73\163\x61\x67\145") . $dateStamp; file_put_contents($installedLogFile, $message . PHP_EOL, FILE_APPEND | LOCK_EX); goto PN7fF; X0ues: $message = trans("\151\x6e\x73\164\x61\154\154\145\x72\137\x6d\x65\x73\x73\141\x67\x65\x73\56\x69\x6e\x73\164\x61\x6c\154\x65\144\x2e\x73\x75\x63\x63\x65\163\x73\137\154\157\x67\137\x6d\145\x73\163\x61\x67\145") . $dateStamp . "\12"; file_put_contents($installedLogFile, $message); PN7fF: return $message; } public function update() { return $this->create(); } }
