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
 namespace App\Http\Controllers\Installer\Helpers; use Exception; use Illuminate\Support\Facades\Artisan; use Symfony\Component\Console\Output\BufferedOutput; class FinalInstallManager { public function runFinal() { $outputLog = new BufferedOutput(); $this->generateKey($outputLog); $this->publishVendorAssets($outputLog); return $outputLog->fetch(); } private static function generateKey($outputLog) { try { if (!config("\151\156\163\x74\141\154\x6c\145\x72\56\x66\x69\x6e\x61\x6c\56\153\145\171")) { goto WGe5h; } Artisan::call("\153\x65\171\72\147\x65\156\x65\162\x61\164\145", ["\55\x2d\x66\x6f\162\x63\145" => true], $outputLog); WGe5h: } catch (Exception $e) { return static::response($e->getMessage(), $outputLog); } return $outputLog; } private static function publishVendorAssets($outputLog) { try { if (!config("\x69\x6e\x73\164\141\x6c\154\145\162\x2e\146\151\x6e\141\154\x2e\x70\165\142\x6c\x69\163\x68")) { goto M4V5I; } Artisan::call("\166\x65\x6e\144\x6f\162\x3a\x70\x75\142\154\151\163\x68", ["\x2d\x2d\141\154\154" => true], $outputLog); M4V5I: } catch (Exception $e) { return static::response($e->getMessage(), $outputLog); } return $outputLog; } private static function response($message, $outputLog) { return ["\163\164\141\164\x75\163" => "\145\x72\162\x6f\x72", "\155\x65\163\163\x61\x67\145" => $message, "\144\x62\x4f\x75\x74\160\165\164\114\x6f\147" => $outputLog->fetch()]; } }
