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
 namespace App\Http\Controllers\Installer; use Illuminate\Routing\Controller; use Illuminate\Http\Request; use Illuminate\Routing\Redirector; use App\Http\Controllers\Installer\Helpers\EnvironmentManager; use Validator; class EnvironmentController extends Controller { protected $EnvironmentManager; public function __construct(EnvironmentManager $environmentManager) { $this->EnvironmentManager = $environmentManager; } public function environmentMenu() { return view("\151\156\x73\x74\x61\x6c\154\145\x72\56\x65\156\166\151\162\x6f\156\x6d\145\156\164"); } public function environmentWizard() { } public function environmentClassic() { $envConfig = $this->EnvironmentManager->getEnvContent(); return view("\151\x6e\163\x74\x61\154\x6c\x65\162\56\x65\x6e\x76\151\x72\x6f\156\x6d\x65\x6e\x74\55\x63\154\141\x73\x73\151\143", compact("\145\x6e\x76\103\x6f\x6e\146\x69\147")); } public function saveClassic(Request $input, Redirector $redirect) { $message = $this->EnvironmentManager->saveFileClassic($input); return $redirect->route("\x49\x6e\163\164\141\x6c\154\145\x72\56\145\156\x76\x69\x72\157\x6e\155\x65\x6e\x74\x43\154\141\163\163\x69\143")->with(["\x6d\145\x73\x73\x61\x67\145" => $message]); } }
