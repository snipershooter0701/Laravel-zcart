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
 namespace App\Http\Controllers\Installer\Helpers; use Illuminate\Support\Facades\DB; trait MigrationsHelper { public function getMigrations() { $migrations = glob(database_path() . DIRECTORY_SEPARATOR . "\x6d\x69\147\x72\141\164\x69\x6f\156\163" . DIRECTORY_SEPARATOR . "\x2a\x2e\160\x68\160"); return str_replace("\x2e\x70\x68\160", '', $migrations); } public function getExecutedMigrations() { return DB::table("\x6d\x69\x67\162\141\164\151\157\x6e\163")->get()->pluck("\155\151\147\162\141\x74\151\157\x6e"); } }
