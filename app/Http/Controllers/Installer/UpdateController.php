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
 namespace App\Http\Controllers\Installer; use Illuminate\Routing\Controller; use App\Http\Controllers\Installer\Helpers\InstalledFileManager; use App\Http\Controllers\Installer\Helpers\DatabaseManager; class UpdateController extends Controller { use \App\Http\Controllers\Installer\Helpers\MigrationsHelper; public function welcome() { return view("\x69\156\x73\164\141\x6c\x6c\x65\162\56\165\x70\144\x61\x74\145\56\167\145\154\143\157\x6d\x65"); } public function overview() { $migrations = $this->getMigrations(); $dbMigrations = $this->getExecutedMigrations(); return view("\x69\156\163\x74\141\154\154\x65\162\56\x75\x70\x64\141\164\x65\56\157\x76\145\x72\x76\x69\145\x77", ["\x6e\x75\x6d\x62\x65\x72\117\146\x55\x70\144\x61\x74\145\x73\120\145\156\144\151\156\147" => count($migrations) - count($dbMigrations)]); } public function database() { $databaseManager = new DatabaseManager(); $response = $databaseManager->migrateAndSeed(); return redirect()->route("\114\141\162\141\166\145\154\125\x70\144\141\x74\x65\x72\72\72\x66\151\x6e\x61\154")->with(["\155\x65\163\163\141\147\x65" => $response]); } public function finish(InstalledFileManager $fileManager) { $fileManager->update(); return view("\151\156\x73\x74\141\154\x6c\x65\x72\56\165\x70\x64\x61\x74\x65\x2e\x66\x69\x6e\151\x73\x68\145\x64"); } }
