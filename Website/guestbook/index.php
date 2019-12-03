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
# Hier nix ändern!
require_once('system.php');
$sql = NULL;
$aktion = trim(htmlspecialchars($_GET['aktion'], ENT_QUOTES, "UTF-8"));
$cache = tpasin('main.tpl');
if (file_exists("$pfad/install.php")||file_exists("$pfad/update.php")) {
echo"<div align=\"center\"><br><strong>Bitte löschen Sie die Datei install.php und/oder update.php bevor Sie fortsetzen!</strong></div>";
echo"<!-- ENTFERNUNG DES COPYRIGHTS IST UNTERSAGT! LIZENZBESTIMMUNGEN --><div align=\"center\"><font size=\"1\">Script Powered by <a href=\"http://www.pa-s.de\" Target=\"_blank\">PA-S.de</a></font></div><!-- ENTFERNUNG DES COPYRIGHTS IST UNTERSAGT! LIZENZBESTIMMUNGEN -->";
exit;
}
# auslesen
if($offline == 1){
$cache = str_replace('%codepas%', tpasin('offline.tpl', true), $cache);
}else{
if($aktion != 'neu'){
$seite = trim(htmlspecialchars($_GET['seite'], ENT_QUOTES, "UTF-8"));
if(!is_numeric($seite) || $seite < 1){
$seite = 1;
}
$start = $seite * $limit - $limit;
$dbname = $zusatz.'gbpas';
$result = mysql_query("select * from $dbname WHERE STATUS='0' ORDER BY TIME DESC LIMIT $start,$limit") or die("MySQL Query Fehler:".mysql_error()."<br>$c");
$reihen = mysql_num_rows($result);
if($reihen < 1){
header("Location: $PHP_SELF?aktion=neu");
exit;
}else{
$tmp = tpasin('eintraege.tpl', true);
$cache = str_replace('%codepas%', $tmp, $cache);
while($row = mysql_fetch_array($result)) {
$tmp = tpasin('eintrag.tpl');
$replacepas[0] = Array('%id%', '%name%', '%homepage%', '%nachricht%', '%email%', '%time%');
$nachricht = bbpas($row['NACHRICHT']);
if($row['HOMEPAGE'] != ''){
$homepage = '(<a href="'.$row['HOMEPAGE'].'" Target="_blank">URL</a>)';
}
$name = wordwrap($row['NAME'], $wwrap,"\n", 1);
$replacepas[1] = Array($row['ID'], '<a href="'.pas($row['EMAIL']).'">'.$name.'</a>', $homepage, $nachricht, $row['EMAIL'], date("d.m.Y", $row['TIME']).' um '.date("H:i:s", $row['TIME']));
$eintraege .= str_replace($replacepas[0], $replacepas[1], $tmp);
$homepage = NULL;
}
$seiten = NULL;
$seitenpas = ceil(pcount() / $limit);
$seiten .= 'Seite '.$seite.'/'.$seitenpas;
if($seitenpas != 1){ $seiten .= ': '; }
if($seitenpas > 2 && $seite != 1){
$seiten .= '<a href="'.$PHP_SELF.'">&lt;&lt;</a> ';
}
if($seite != 1){
$seiten .= '<a href="'.$PHP_SELF.'?seite='.($seite-1).'">&lt;</a> ';
}
if($seitenpas > 1){
for($i = 1; $i <= $seitenpas; $i++){
if($i == $seite){
$seiten .= '<a href="'.$PHP_SELF.'?seite='.$i.'"><strong>'.$i.'</strong></a> ';
}else{
$seiten .= '<a href="'.$PHP_SELF.'?seite='.$i.'">'.$i.'</a> ';
}
}
}
if($seite != $seitenpas){
$seiten .= '<a href="'.$PHP_SELF.'?seite='.($seite+1).'">&gt;</a> ';
}
if($seitenpas > 2 && $seite != $seitenpas){
$seiten .= '<a href="'.$PHP_SELF.'?seite='.$seitenpas.'">&gt;&gt;</a> ';
}
$replacerpas[0] = Array('%eintraege%', '%count%', '%phpself%', '%seiten%');
$replacerpas[1] = Array($eintraege, pcount(), $PHP_SELF, $seiten);
$cache = str_replace($replacerpas[0], $replacerpas[1], $cache);
}
}

# neuer eintrag
if($aktion == 'neu'){
$pas = PAS_CRYPT(); 
$tmp = tpasin('neu.tpl', true);
$var_name = NULL;
$var_email = NULL;
$var_homepage = NULL;
$var_nachricht = NULL;
$msg = NULL;
if(isset($_POST['xpas'])){
$var_name = trim(htmlspecialchars($_POST['name'], ENT_QUOTES, "UTF-8"));
$var_email = trim(htmlspecialchars($_POST['email'], ENT_QUOTES, "UTF-8"));
$var_homepage = trim(htmlspecialchars($_POST['homepage'], ENT_QUOTES, "UTF-8"));
$var_nachricht = trim(htmlspecialchars($_POST['nachricht'], ENT_QUOTES, "UTF-8"));
$code = trim(htmlspecialchars($_POST['code'], ENT_QUOTES, "UTF-8"));
$xpas = trim(htmlspecialchars($_POST['xpas'], ENT_QUOTES, "UTF-8"));
if(PAS_CRYPT($xpas) != $code){
$msg .= '<br>- Ungültiger Sicherheitscode';
}
if($var_name == ''){
$msg .= '<br>- Ungültiger Name';
}
if(!ereg("^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,4})$", $var_email)){
$msg .= '<br>- Ungülte E-Mailadresse';
}
if(P91MAILBLOCK($var_email)){
$msg .= '<br>- Ungülte E-Mailadresse';
}
if($var_nachricht == ''){
$msg .= '<br>- Ungültige Nachricht';
}
if($msg == NULL){
if(!ipsperrepas($_SERVER['REMOTE_ADDR'])){
$msg .= '<span class="red">Es sind folgende Fehler aufgetreten:<br>- IP-Sperre aktiv</span><br>';
}else{
$ip = $_SERVER['REMOTE_ADDR'];
$host = gethostbyaddr($ip);
$time = time ();
$dbname = $zusatz.'gbpas';
if($var_homepage != ''){
$var_homepage = str_replace('http://', '', strtolower($var_homepage));
$var_homepage = 'http://'.$var_homepage;
}
$sql = "INSERT INTO $dbname (NAME, EMAIL, HOMEPAGE, NACHRICHT, IP, HOST, TIME, STATUS) VALUES ('$var_name', '$var_email', '$var_homepage', '$var_nachricht', '$ip', '$host', '$time', '$mod');";
mysql_query($sql) OR die("<strong>MYSQL_INSERT FEHLER:</strong><br><span style=\"color: red\">".mysql_error()."</span><br><strong>Befehl:</strong> <span style=\"color: red\">$sql</span><br><strong>$c</strong>");
if($nemail != ''){
$zeit = date("d.m.Y", $time).' um '.date("h:i:s", $time);
if($mod == 1){
$mailpas = "\nSie haben manuelles freischalten aktiviert,\nbitte schalten Sie diesen Eintrag ggf. Frei!\n\n";
}
  mail($nemail, "Neuer Gästebucheintrag!", "Hallo,\nes wurde ein neuer Gästebucheintrag getätigt:\n=======================================\n\nName: $var_name\nE-Mail: $var_email\nHomepage: $var_homepage\nNachricht: $var_nachricht\n\n=======================================\nIP: $ip\nHost: $host\nDatum-Uhrzeit: $zeit\n $mailpas \nDies ist eine automatisch generierte E-Mail vom Gästebuch Script Lite by PA-S.de",
       "From: Gaestebuch Script Lite <$nemail>");
}
if($mod == 1){
$tmp = tpasin('ok_manuell.tpl', true);
}else{
$tmp = tpasin('ok.tpl', true);
}
}
}else{
$msg = '<span class="red">Es sind folgende Fehler aufgetreten:'.$msg.'</span><br>';
}}
if($msg == NULL){
$msg = 'Bitte füllen Sie folgende Felder aus:';
}
$replacepas[0] = Array('%codepas%', '%xpas%', '%pas%', '%var_name%', '%var_email%', '%var_homepage%', '%var_nachricht%', '%msg%', '%phpself%');
$replacepas[1] = Array($tmp, $xpas, $pas, $var_name, $var_email, $var_homepage, $var_nachricht, $msg, $PHP_SELF);
$cache = str_replace($replacepas[0], $replacepas[1], $cache);
}
}

echo tpasout($cache);
?>

