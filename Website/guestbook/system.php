<?php
###########################################################################################################################
# Gästebuch Script Lite by PA-S.de
###########################################################################################################################
# Gästebuch Script Lite V.1.3
# Copyright 2003-2007 PA-S.de
# Script Url: www.pa-s.de
# Kontakt: kontakt@pa-s.de
# Datum: 12.04.2007 || 10.05.2007
# Lizenzbestimmungen in der Datei Lizenzbestimmungen.txt
###########################################################################################################################
include_once("config.inc.php");

@MYSQL_CONNECT($sql[1], $sql[2], $sql[3]) or die ("Es konnte keine Verbindung zur Datenbank hergestellt werden!");
@MYSQL_SELECT_DB($sql[4]) or die ("Die Datenbank existiert nicht!");
# ENTFERNUNG DES COPYRIGHTS IST UNTERSAGT!
$c = 'Powered by PA-S.de';
function tpasin($tpl=NULL,$mode=false){
global $pfad;
global $c;
if(strlen($c) != 18){
return false;
}else{
if($tpl != NULL){
if(file_exists($pfad.'/template/'.$tpl)){
$out = @implode("",@file("$pfad/template/$tpl"));
if($mode==true){
$out.="<!-- ENTFERNUNG DES COPYRIGHTS IST UNTERSAGT! LIZENZBESTIMMUNGEN --><p align=\"center\" style=\"font-size: 10px;\">
<a href=\"http://www.pa-s.de\" Target=\"_blank\">Gästebuch Script Lite Powered by PA-S.de</a>
</p><!-- ENTFERNUNG DES COPYRIGHTS IST UNTERSAGT! LIZENZBESTIMMUNGEN -->";
}
return $out;
}else{
return false;
}
}else{
return false;
}
}
}
function tpasout($out){
global $c;
if(!strpos($out, $c)){
echo 'Copryight wurde verändert!';
die;
}else{
return $out;
}
}
function P91MAILBLOCK($email){
$email = strtolower(trim(strip_tags($email)));
// Blacklist Domains werden durch ein Leerzeichen getrennt!
// Aktuelle Liste: http://www.pa-s.de/php/forum/showthread-47.php
$heurisspamlist = 'sofort-mail.de trash-mail.de spambog.com spambog.de discardmail.com discardmail.de dodgeit.com mailinator.com spam.la mytrashmail.com emaildienst.de senseless-entertainment.com temporaryinbox.com put2.net afrobacon.com golfilla.info zoemail.net zoemail.com willhackforfood.biz wegwerfadresse.de mns.ru ukr.net trashmail.org trashmail.de trashmail.com temporaryinbox.com tempinbox.com sriaus.com spamtrail.com spammotel.com spaminator.de spamhole.com spamgourmet.com spamex.com spamday.com spambob.org spambob.net spambob.com kasmail.com sneakemail.com rootprompt.org punkass.com nurfuerspam.de nospammail.net netzidiot.de mailnull.com mailmoat.com mailexpire.com kasmail.com fastsubaru.com fastsuzuki.com fasttoyota.com fastyamaha.com fastnissan.com fastmitsubishi.com fastmazda.com fastkawasaki.com fastchrysler.com fastchevy.com fastacura.com emailias.com e4ward.com dumpmail.de centermail.net centermail.com spamgourmet.com trashmail.net antichef.net';
//
$pasarray = explode(' ', strtolower($heurisspamlist));
$mailcheck = explode('@', $email);
if(in_array($mailcheck[1], $pasarray, true)){
return true;
}else{
return false;
}
}
function pcount(){
global $zusatz;
$pcount = @mysql_query("select count(ID) from ".$zusatz."gbpas WHERE STATUS='0';");
$fetch = mysql_fetch_assoc($pcount);
return $fetch["count(ID)"];
}
function pcountadmin(){
global $zusatz;
$pcount = @mysql_query("select count(ID) from ".$zusatz."gbpas;");
$fetch = mysql_fetch_assoc($pcount);
return $fetch["count(ID)"];
}
function bbpas($var){
global $wwrap;
$simple_replace[0] = Array(':)', ':D', ';)', ':(', '8)');
$simple_replace[1] = Array('<img src="smilies/1.gif" alt=":)" border="0">',
			   '<img src="smilies/2.gif" alt=":D" border="0">',
		           '<img src="smilies/3.gif" alt=";)" border="0">',
		           '<img src="smilies/4.gif" alt=":(" border="0">',
		           '<img src="smilies/5.gif" alt="8)" border="0">');
$replace[0] = Array("#\[b\](.+?)\[/b\]#si",
		    "#\[i\](.+?)\[/i\]#si",
		    "#\[u\](.+?)\[/u\]#si");
$replace[1] = Array("<strong>\\1</strong>",
		    "<em>\\1</em>",
		    "<u>\\1</u>");
//REIHENFOLGE WICHTIG!
$heurix = explode(' ', $var);
$var = Array();
foreach($heurix as $tmp => $w){
$var[$tmp] = wordwrap($w, $wwrap,"\n", 1);
}
$var = implode(' ', $var);
$var = str_replace($simple_replace[0], $simple_replace[1], $var);
$var = preg_replace($replace[0], $replace[1], $var);
$var = nl2br($var);
return $var;
}
function ipsperrepas($ip){
global $timefromip;
global $zusatz;
$pas = $timefromip;
$zeit = time();
ipsperrepasdelold($pas);
$dbname = $zusatz.'gbpas_ipsperrepas';
$result = @mysql_query("select * from $dbname WHERE IP='$ip' LIMIT 1")
 or die ("MySQL-QUERY fehlgeschlagen,<br /> MySQL Error: <strong>".mysql_error()."</strong>");
if (@mysql_num_rows($result)) {
$row=mysql_fetch_array($result);
$dbtime = $row['TIME'];
$heuri = $zeit - $dbtime;
if($heuri > $pas){
@mysql_query("DELETE FROM $dbname WHERE IP = '$ip'")
 or die ("MySQL-DELETE fehlgeschlagen,<br /> MySQL Error: <strong>".mysql_error()."</strong>");
@mysql_query("INSERT INTO $dbname (IP, TIME) VALUES ('$ip', '$zeit')")
 or die ("MySQL-INSERT fehlgeschlagen,<br /> MySQL Error: <strong>".mysql_error()."</strong>");
return true;
}else{
return false;
}}else{
@mysql_query("INSERT INTO $dbname (IP, TIME) VALUES ('$ip', '$zeit')")
 or die ("MySQL-INSERT fehlgeschlagen,<br /> MySQL Error: <strong>".mysql_error()."</strong>");
return true;
}}
function pas($heuri) {
for ($i; $i < strlen($heuri); $i++)
for ($r = 32 ; $r <= 122; $r++)
if ($heuri[$i] == chr($r)) $pas.="&#$r;";
return '&#109;&#97;&#105;&#108;&#116;&#111;&#58;'.$pas;
}
function ipsperrepasdelold ($pas){
global $zusatz;
$zeit = time();
$dbname = $zusatz.'gbpas_ipsperrepas';
$result = @mysql_query("select * from $dbname")
 or die ("MySQL-Abfrage fehlgeschlagen,<br /> MySQL Error: <strong>".mysql_error()."</strong>");
if (@mysql_num_rows($result)) {
while($row=mysql_fetch_array($result)) {
$ip = $row['IP'];
$dbtime = $row['TIME'];
$heuri = $zeit - $dbtime;
if($heuri > $pas){
@mysql_query("DELETE FROM $dbname WHERE IP = '$ip' LIMIT 1")
 or die ("MySQL-Abfrage fehlgeschlagen,<br /> MySQL Error: <strong>".mysql_error()."</strong>");
}}}}
function PAS_CRYPT($data=NULL){
$key = md5($_SERVER["DOCUMENT_ROOT"].$_SERVER['SELF_PHP']);
$td = mcrypt_module_open(MCRYPT_GOST, '', MCRYPT_MODE_ECB, '');
$iv = mcrypt_create_iv(mcrypt_enc_get_iv_size ($td), MCRYPT_RAND);
mcrypt_generic_init($td, $key, $iv);
if ($data==NULL) {
$data = mcrypt_generic($td, substr(md5 (uniqid (rand())), 0, 6));
$data = base64_encode($data);
$data = strtr($data, '+/', '-_');
}else{
$data = mdecrypt_generic($td, base64_decode($data));
preg_match_all("/[.a-z0-9_-]+/i", $data, $heurix);
$data = $heurix[0][0];
}
mcrypt_generic_deinit($td);
mcrypt_module_close($td);
return $data;
}
?>