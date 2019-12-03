 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Audi-Lovestory.de - Wie sich Hannah verliebt und das Hochzeitsproblem - Wir fordern alle Audih&auml;ndler auf uns zu unterst&uuml;tzen und Hannah ihren Traum, vom eigenen A3, zu erf&uuml;llen - Sportbag, Audi A3</title>
    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
    <meta http-equiv="pragma" content= "cache">
    <meta name="verify-v1" content="AnWdIhxn+le0UYrQLRAyCVI7hG5/+g/WEV/mM+GeH1M=" />
<meta name="robots" content= "INDEX,FOLLOW">
<meta http-equiv="content-language" content= "de">
<meta name="description" content= "Audi-Fotolovestory - G&auml;stebuch - Wir fordern alle Audih&auml;ndler auf uns zu unterst&uuml;tzen und Hannah ihren Traum, vom eigenen A3, zu erf&uuml;llen">
<meta name="keywords" content= "Autohaus, Werbung, Werbeaktion, Bannertausch, Paypal, helfen, Traum, innovativ, kreativ, Traumauto, Traumwagen, Bnner, wallpaper, Bilder, Audi, Love, Lovestory, Lovestorie, Liebe, Autos, Wagen, Idee, audi-lovestory, Hannah, Thomas Wolff, Fabian Jung, Wagenliebe, verknallt">
<meta name="author" content= "Hannah Gusik">
<meta name="publisher" content= "Hannah Gusik">
<link rev="made" content= "hannah@audi-lovestory.de">
<meta name="copyright" content= "Hannah Gusik, Thomas Wolff, Fabian Jung">
<meta name="page-topic" content= "Liebe, Schlagzeilen">
<meta name="revisit after" content= "2 days">
  </head>
 <body link="#B60404" vlink="#830202" alink="#830202" bgcolor="#B4002D">
  <div align="">

  <table cellpadding="0" cellspacing="0" hspace="0" vspace="0">
  <tr>
  <td>
  <img src="../img/top1.jpg" border="0" height="112" width="778" /><br>
  <table cellpadding="0" cellspacing="0" hspace="0" vspace="0" width="778">
  <tr>
  <td valign="top" bgcolor="#FFFFFF">
<a href="../index.php"
onMouseOver="image10.src='../img/navil/1a.jpg';"
onMouseOut="image10.src='../img/navil/1.jpg';">
<img name="image10" src="../img/navil/1.jpg" border="0" height="31" width="132" /></a><br>
<a href="../a_1_1.php"
onMouseOver="image11.src='../img/navil/2a.jpg';"
onMouseOut="image11.src='../img/navil/2.jpg';">
<img name="image11" src="../img/navil/2.jpg" border="0" height="31" width="132" /></a><br>
<a href="../a_2_1.php"
onMouseOver="image12.src='../img/navil/3a.jpg';"
onMouseOut="image12.src='../img/navil/3.jpg';">
<img name="image12" src="../img/navil/3.jpg" border="0" height="28" width="132" /></a><br>
<a href="../a_3_1.php"
onMouseOver="image13.src='../img/navil/4a.jpg';"
onMouseOut="image13.src='../img/navil/4.jpg';">
<img name="image13" src="../img/navil/4.jpg" border="0" height="32" width="132" /></a><br>
  <img src="../img/navil/5a.jpg" border="0" height="35" width="132" /><br> </td>
  <td valign="top" bgcolor="#FFFFFF">
<img src="../img/top2.jpg" border="0" height="58" width="508" /><br> 
<img src="../img/titel_torium.jpg" border="0" height="24" width="507" /><br>
<img src="../img/top3.jpg" border="0" height="75" width="508" /></td>
  <td valign="top" bgcolor="#FFFFFF">
<a href="../uns.php"
onMouseOver="image14.src='../img/navir/1a.jpg';"
onMouseOut="image14.src='../img/navir/1.jpg';">
<img name="image14" src="../img/navir/1.jpg" border="0" height="31" width="138" /></a><br>
<a href="./guestbox.php"
onMouseOver="image15.src='../img/navir/2a.jpg';"
onMouseOut="image15.src='../img/navir/2a.jpg';">
<img name="image15" src="../img/navir/2a.jpg" border="0" height="27" width="138" /></a><br>  
<a href="../forum/index.php"
onMouseOver="image16.src='../img/navir/3a.jpg';"
onMouseOut="image16.src='../img/navir/3.jpg';">
<img name="image16" src="../img/navir/3.jpg" border="0" height="38" width="138" /></a><br> 
<a href="../kontakt.php"
onMouseOver="image17.src='../img/navir/4a.jpg';"
onMouseOut="image17.src='../img/navir/4.jpg';">
<img name="image17" src="../img/navir/4.jpg" border="0" height="27" width="138" /></a><br>  
  <img src="../img/navir/5a.jpg" border="0" height="34" width="138" /></td></tr></table><img src="../img/top4.jpg" border="0" height="18" width="778" /><table cellpadding="0" cellspacing="0" hspace="0" vspace="0" bgcolor="#FFFFFF">
  <tr valign="top">
  <td valign="top" style="background-image:url(../img/links.jpg); background-repeat:repeat-y;" width="45"></td>
  <td width="681" valign="top">

  <!-- Hier steht der Inhalt -->
  <br>
  <div align="center">
  <table>
  <tr>
  <td width="486">
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
if (file_exists("$pfad/install.php")) {
echo"<div align=\"center\"><br><strong>Bitte löschen Sie die Datei install.php bevor Sie fortsetzen!</strong></div>";
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
$result = mysql_query("select * from $dbname ORDER BY TIME DESC LIMIT $start,$limit") or die("MySQL Query Fehler:".mysql_error()."<br>$c");
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
$replacepas[1] = Array($row['ID'], '<a href="'.pas($row['EMAIL']).'">'.$name.'</a>', $homepage, $nachricht, $row['EMAIL'], date("d.m.Y", $row['TIME']).' um '.date("h:i:s", $row['TIME']));
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
if(PAS_CRYPT(false, $xpas) != $code){
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
$sql = "INSERT INTO $dbname (NAME, EMAIL, HOMEPAGE, NACHRICHT, IP, HOST, TIME) VALUES ('$var_name', '$var_email', '$var_homepage', '$var_nachricht', '$ip', '$host', '$time');";
mysql_query($sql) OR die("<strong>MYSQL_INSERT FEHLER:</strong><br><span style=\"color: red\">".mysql_error()."</span><br><strong>Befehl:</strong> <span style=\"color: red\">$sql</span><br><strong>$c</strong>");
$tmp = tpasin('ok.tpl', true);
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
  </td>
  </tr>
  </table>
</div>
<br><br><br>
<div align="center">
<script type="text/javascript"><!--
google_ad_client = "pub-5369714250028099";
google_ad_width = 468;
google_ad_height = 60;
google_ad_format = "468x60_as";
google_ad_type = "text_image";
//2007-03-20: audi, auto, sportauto, wagen
google_ad_channel = "2632279502+0788046913+2097941542+7252880317";
google_color_border = "B4002D";
google_color_bg = "FFFFFF";
google_color_link = "5E0316";
google_color_text = "000000";
google_color_url = "5E0316";
//-->
</script>
<script type="text/javascript"
  src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</div>
<br>
  </td>
  <td valign="top" style="background-image:url(../img/rechts.jpg); background-repeat:repeat-y;" width="52"></td>
  </tr>
  </table>
  
  <?
  include("../foot2.inc.php");
  ?>
  

  </td>
    <td valign="top" bgcolor="#B4002D">
    <br><br><br><br><br><br><br>
<?php
include("../banner2.inc.php");
?>
  </td>
  </tr>
  </table>
  </div>

</body>
</html>









