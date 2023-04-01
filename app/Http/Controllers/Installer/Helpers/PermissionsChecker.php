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
 namespace App\Http\Controllers\Installer\Helpers; class PermissionsChecker { protected $results = []; public function __construct() { $this->results["\160\x65\x72\155\151\163\163\151\x6f\x6e\163"] = []; $this->results["\x65\162\x72\x6f\162\x73"] = null; } public function check(array $folders) { foreach ($folders as $folder => $permission) { if (!($this->getPermission($folder) >= $permission)) { goto Pqpwn; } $this->addFile($folder, $permission, true); goto hKFmn; Pqpwn: $this->addFileAndSetErrors($folder, $permission, false); hKFmn: WIV3l: } wr3H1: return $this->results; } private function getPermission($folder) { return substr(sprintf("\x25\157", fileperms(base_path($folder))), -4); } private function addFile($folder, $permission, $isSet) { array_push($this->results["\x70\x65\162\155\151\x73\x73\151\x6f\156\163"], ["\x66\x6f\x6c\144\145\162" => $folder, "\160\x65\x72\x6d\x69\163\163\151\157\156" => $permission, "\x69\x73\x53\x65\164" => $isSet]); } private function addFileAndSetErrors($folder, $permission, $isSet) { $this->addFile($folder, $permission, $isSet); $this->results["\145\x72\162\x6f\162\x73"] = true; } }
