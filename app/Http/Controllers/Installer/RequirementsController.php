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
 namespace App\Http\Controllers\Installer; use Illuminate\Routing\Controller; use App\Http\Controllers\Installer\Helpers\RequirementsChecker; class RequirementsController extends Controller { protected $requirements; public function __construct(RequirementsChecker $checker) { $this->requirements = $checker; } public function requirements() { $phpSupportInfo = $this->requirements->checkPHPversion(config("\x69\x6e\x73\x74\x61\154\154\145\x72\56\143\157\x72\x65\56\x6d\151\x6e\120\x68\160\126\x65\162\x73\151\x6f\156"), config("\x69\156\163\164\x61\x6c\x6c\145\162\x2e\143\x6f\162\x65\x2e\x6d\141\x78\x50\150\160\x56\x65\x72\x73\151\157\156")); $requirements = $this->requirements->check(config("\x69\156\163\164\141\154\x6c\x65\162\56\x72\x65\x71\165\x69\162\x65\155\145\x6e\164\163")); return view("\151\x6e\163\164\141\154\154\x65\162\56\162\x65\x71\x75\x69\162\145\x6d\x65\156\164\163", compact("\x72\x65\161\x75\x69\162\x65\155\145\156\164\163", "\160\x68\160\123\x75\x70\x70\x6f\162\164\x49\x6e\x66\x6f")); } }
