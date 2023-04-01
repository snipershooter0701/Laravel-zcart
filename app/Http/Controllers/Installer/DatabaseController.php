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
 namespace App\Http\Controllers\Installer; use Exception; use Illuminate\Support\Facades\DB; use Illuminate\Routing\Controller; use App\Http\Controllers\Installer\Helpers\DatabaseManager; class DatabaseController extends Controller { private $databaseManager; public function __construct(DatabaseManager $databaseManager) { $this->databaseManager = $databaseManager; } public function database() { if ($this->checkDatabaseConnection()) { goto oKG1A; } return redirect()->back()->withErrors(["\144\141\164\x61\x62\x61\x73\x65\x5f\143\157\156\156\145\143\164\151\x6f\x6e" => trans("\151\x6e\163\x74\141\154\154\x65\162\x5f\155\145\163\163\x61\147\145\x73\x2e\145\156\166\x69\x72\157\156\155\x65\156\164\x2e\167\151\172\x61\x72\144\56\x66\x6f\162\x6d\56\144\x62\137\x63\157\156\156\145\x63\x74\x69\157\x6e\137\146\x61\151\154\x65\x64")]); oKG1A: ini_set("\x6d\141\170\x5f\x65\x78\145\143\165\164\151\157\x6e\x5f\164\151\x6d\145", 600); $response = $this->databaseManager->migrateAndSeed(); return redirect()->route("\x49\156\163\164\141\154\154\x65\x72\x2e\x66\x69\x6e\141\x6c")->with(["\x6d\x65\x73\163\x61\x67\145" => $response]); } private function checkDatabaseConnection() { try { DB::connection()->getPdo(); return true; } catch (Exception $e) { return false; } } }
