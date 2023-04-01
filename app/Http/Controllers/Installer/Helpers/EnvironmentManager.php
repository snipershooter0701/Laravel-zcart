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
 namespace App\Http\Controllers\Installer\Helpers; use Exception; use Illuminate\Http\Request; class EnvironmentManager { private $envPath; private $envExamplePath; public function __construct() { $this->envPath = base_path("\x2e\145\x6e\166"); $this->envExamplePath = base_path("\x2e\x65\x6e\166\56\x65\170\141\x6d\160\x6c\145"); } public function getEnvContent() { if (file_exists($this->envPath)) { goto W3FEZ; } if (file_exists($this->envExamplePath)) { goto nw1VP; } touch($this->envPath); goto rO11B; nw1VP: copy($this->envExamplePath, $this->envPath); rO11B: W3FEZ: return file_get_contents($this->envPath); } public function getEnvPath() { return $this->envPath; } public function getEnvExamplePath() { return $this->envExamplePath; } public function saveFileClassic(Request $input) { $message = trans("\151\156\163\164\x61\154\x6c\145\x72\137\x6d\x65\163\x73\141\147\145\x73\x2e\145\156\166\151\x72\157\156\x6d\x65\156\164\x2e\x73\165\143\x63\x65\x73\163"); try { file_put_contents($this->envPath, $input->get("\145\156\x76\103\x6f\156\x66\x69\147")); } catch (Exception $e) { $message = trans("\151\x6e\163\x74\141\x6c\154\x65\x72\x5f\x6d\x65\163\163\x61\x67\x65\163\56\145\156\x76\x69\162\x6f\156\155\145\x6e\x74\56\x65\x72\162\x6f\x72\163"); } return $message; } }
