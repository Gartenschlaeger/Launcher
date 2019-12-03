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
session_start();
if($aktion == "logout"){
unset($_SESSION);
session_destroy();
}
include("system.php");
if (file_exists("$pfad/install.php")||file_exists("$pfad/update.php")) {
echo"<div align=\"center\"><br><strong>Bitte löschen Sie die Datei install.php und/oder update.php bevor Sie fortsetzen!</strong></div>";
echo"<!-- ENTFERNUNG DES COPYRIGHTS IST UNTERSAGT! LIZENZBESTIMMUNGEN --><div align=\"center\"><font size=\"1\">Script Powered by <a href=\"http://www.pa-s.de\" Target=\"_blank\">PA-S.de</a></font></div><!-- ENTFERNUNG DES COPYRIGHTS IST UNTERSAGT! LIZENZBESTIMMUNGEN -->";
exit;
}
$aktion = strip_tags($_GET['aktion']);
if(strip_tags($_POST['login']) == "1"){
$Kennwort = $_POST['Kennwort'];
$neue_session = session_regenerate_id();
$_SESSION["Kennwort"] = strip_tags(md5($_POST['Kennwort']));
}
?><html>
<head>
<title>Adminbereich</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="standard.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function DoSmilie(addSmilie)
{
 document.form1.nachricht.value= document.form1.nachricht.value+addSmilie;
 document.form1.nachricht.focus();
}
</script>
</head>
<BODY>
<table width="700" border="1" align="center" cellpadding="5" cellspacing="0" bordercolor="#CCCCCC" bgcolor="#f5f5f5">
  <tr>
    <td align="center">
  <h2>Adminbereich</h2>
<? if($aktion == "logout"){
echo"Sie haben sich erfolgreich ausgeloggt!<br><a href=admin.php>Login</a><p>";
}
else{
if($_SESSION["Kennwort"] != md5($pw)){ ?>
    <form action="admin.php" method="post">
      <p>Kennwort:</p>
      <input name="Kennwort" type="password" size="30" maxlength="100">
      <br>
      <input name="login" type="hidden" id="login" value="1">
      <br>
      <input name="submit" type="submit" id="submit" value="Login">
    </form>
<?php
}}
$did = strip_tags($_GET['did']);
   if(strip_tags($_POST['login']) == "1"){
   if($_SESSION["Kennwort"] == "" || $_SESSION["Kennwort"] == "d41d8cd98f00b204e9800998ecf8427e")
   {
   echo("<strong>Sie haben ein falsches Passwort eingegeben!</strong><p>");
   }
   elseif($_SESSION["Kennwort"] != md5($pw))
   {
   echo("<strong>Sie haben ein falsches Passwort eingegeben!</strong><p>");
   }
   }
   if($_SESSION["Kennwort"] == md5($pw) && $aktion != "logout"){
   ?>
    
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong>Men&uuml; (G&auml;stebuch Scripte Lite V.1.3):</strong><br>
            <br>  
          
            <table width="250" border="1" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
              <tr>
                <td><a href="<? echo"admin.php?aktion=freischalten"; ?>">Eintr&auml;ge freischalten </a></td>
              </tr>
              <tr>
                <td><a href="<? echo"admin.php?aktion=add"; ?>">Eintrag hinzuf&uuml;gen </a></td>
              </tr>
              <tr>
                <td><a href="<? echo"admin.php?aktion=verwaltung"; ?>">Eintr&auml;ge verwalten </a></td>
              </tr>
              <tr>
                <td><a href="<? echo"admin.php?aktion=einstellungen"; ?>">Einstellungen</a></td>
              </tr>
              <tr>
                <td><a href="http://www.pa-s.de" target="_blank">Neuste Version?</a></td>
              </tr>
              <tr>
                <td><a href="admin.php?aktion=logout"><strong>Logout</strong></a></td>
              </tr>
            </table>
            <br>
            <br>
      </div></td>
    </tr>
  </table>
  <br>
  <? 
if($aktion == "add"){ 
$ip = $_SERVER['REMOTE_ADDR'];
$host = gethostbyaddr($ip);
?>
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong><a href="<? echo"admin.php?"; ?>">Men&uuml;</a> &gt; Eintrag hinzuf&uuml;gen </strong><br>
        <B><BR>
              </B>
              <FORM NAME="form1" METHOD="post" ACTION="<? echo"admin.php?aktion=add2"; ?>">
                <table width="80%" border="0" cellpadding="3" cellspacing="0" class="table">
                  <tr>
                    <td width="50%" colspan="2" class="haupt">Eintrag hinzuf&uuml;gen </td>
                  </tr>

                  <tr>
                    <td width="50%" class="neben1"><strong>Name:</strong></td>
                    <td width="70%" class="neben1"><input name="name" type="text" class="input" id="name" maxlength="100"></td>
                  </tr>
                  <tr>
                    <td width="50%" class="neben1"><strong>E-Mail:</strong></td>
                    <td width="70%" class="neben1"><input name="email" type="text" class="input" id="email" maxlength="100"></td>
                  </tr>
                  <tr>
                    <td width="50%" class="neben1"><strong>Homepage:</strong></td>
                    <td width="70%" class="neben1"><input name="homepage" type="text" class="input" id="homepage" maxlength="100">
                        <span class="klein">(Optional) </span></td>
                  </tr>
                  <tr>
                    <td width="50%" class="neben1"><p><strong>Nachricht:</strong></p>
                        <p class="klein">BB-Codes: <br>
                          [b]<strong>fett</strong>[/b]<br>
                          [i]<em>kursiv</em>[/i]<br>
                          [u]<u>unterstrichen</u>[/u] </p></td>
                    <td width="70%" class="neben1"><textarea name="nachricht" rows="10" class="input" id="nachricht" style="width:300px"></textarea>
                        <br>
                      Smilies: <img src="smilies/1.gif" border="0" onClick="DoSmilie(' :) ');" alt=":)"> <img src="smilies/2.gif" border="0" onClick="DoSmilie(' :D ');" alt=":D"> <img src="smilies/3.gif" border="0" onClick="DoSmilie(' ;) ');" alt=";)"> <img src="smilies/4.gif" border="0" onClick="DoSmilie(' :( ');" alt=":("> <img src="smilies/5.gif" border="0" onClick="DoSmilie(' 8) ');" alt="8)"></td>
                  </tr>
                  <tr>
                    <td class="neben1"><strong>Zeit:</strong></td>
                    <td class="neben1">Datum: 
                      <input name="tag" type="text" id="tag" value="<? echo date("d"); ?>" size="2" maxlength="2">
                      .
<input name="monat" type="text" id="monat" value="<? echo date("m"); ?>" size="2" maxlength="2">
                        .
                        <input name="jahr" type="text" id="jahr" value="<? echo date("Y"); ?>" size="4" maxlength="4">
                        <br>
                        Uhrzeit: 
                        <input name="stunde" type="text" id="stunde" value="<? echo date("H"); ?>" size="2" maxlength="2">
                      :
                      <input name="minute" type="text" id="minute" value="<? echo date("i"); ?>" size="2" maxlength="2">
                      :
                    <input name="sekunde" type="text" id="sekunde" value="<? echo date("s"); ?>" size="2" maxlength="2"></td>
                  </tr>
                  <tr>
                    <td class="neben1"><strong>IP:</strong></td>
                    <td class="neben1"><input name="ip" type="text" class="input" id="ip" value="<? echo $ip; ?>" maxlength="100"></td>
                  </tr>
                  <tr>
                    <td class="neben1"><strong>Host:</strong></td>
                    <td class="neben1"><input name="host" type="text" class="input" id="host" value="<? echo $host; ?>" maxlength="100"></td>
                  </tr>
                  <tr>
                    <td class="neben1"><strong>Status:</strong></td>
                    <td class="neben1"><input name="status" type="radio" value="0" checked>
                      freigeschaltet 
                        <input type="radio" name="status" value="1">
nicht freigeschaltet</td>
                  </tr>

                  <tr>
                    <td colspan="2" align="center" class="neben2"><input type="submit" name="Submit" value="Senden">
                        <input type="reset" name="Submit2" value="Zur&uuml;cksetzen"></td>
                  </tr>
                </table>
              </FORM>
              <br>
              <br>
      </div></td>
    </tr>
  </table>
  <? }
if($aktion == "add2"){ ?>
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong><a href="<? echo"admin.php?"; ?>">Men&uuml;</a> &gt; Eintrag hinzuf&uuml;gen </strong><br>
          <br>
<?
$var_name = trim(htmlspecialchars($_POST['name'], ENT_QUOTES, "UTF-8"));
$var_email = trim(htmlspecialchars($_POST['email'], ENT_QUOTES, "UTF-8"));
$var_homepage = trim(htmlspecialchars($_POST['homepage'], ENT_QUOTES, "UTF-8"));
$var_nachricht = trim(htmlspecialchars($_POST['nachricht'], ENT_QUOTES, "UTF-8"));
$tag = trim(htmlspecialchars($_POST['tag'], ENT_QUOTES, "UTF-8"));
$jahr = trim(htmlspecialchars($_POST['jahr'], ENT_QUOTES, "UTF-8"));
$stunde = trim(htmlspecialchars($_POST['stunde'], ENT_QUOTES, "UTF-8"));
$minute = trim(htmlspecialchars($_POST['minute'], ENT_QUOTES, "UTF-8"));
$sekunde = trim(htmlspecialchars($_POST['sekunde'], ENT_QUOTES, "UTF-8"));
$ip = trim(htmlspecialchars($_POST['ip'], ENT_QUOTES, "UTF-8"));
$host = trim(htmlspecialchars($_POST['host'], ENT_QUOTES, "UTF-8"));
$monat = trim(htmlspecialchars($_POST['monat'], ENT_QUOTES, "UTF-8"));
$status = trim(htmlspecialchars($_POST['status'], ENT_QUOTES, "UTF-8"));

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
$time = mktime($stunde, $minute, $sekunde, $monat, $tag, $jahr);
$dbname = $zusatz.'gbpas';
if($var_homepage != ''){
$var_homepage = str_replace('http://', '', strtolower($var_homepage));
$var_homepage = 'http://'.$var_homepage;
}
$sql = "INSERT INTO $dbname (NAME, EMAIL, HOMEPAGE, NACHRICHT, IP, HOST, TIME, STATUS) VALUES ('$var_name', '$var_email', '$var_homepage', '$var_nachricht', '$ip', '$host', '$time', '$status');";
mysql_query($sql);
echo 'Eintrag wurde hinzugefügt!';
}else{
echo '<span class="red">Es sind folgende Fehler aufgetreten:'.$msg.'</span><br>';
}
?><br>
            </div></td>
    </tr>
  </table>
  <br>
  <? }
if($aktion == "freischalten"){ 
?>
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong><a href="<? echo"admin.php?"; ?>">Men&uuml;</a> &gt; Freischalten </strong><br>
              <br>
              <table width="500" border="0" align="center" cellpadding="3" cellspacing="3">
                <tr>
                  <td align="left"><? echo $seiten; ?></td>
                  <td align="right"></td>
                </tr>
                <tr>
                  <td colspan="2"><table width="100%" border="0" cellpadding="3" cellspacing="0" class="table">
                      <tr>
                        <td colspan="2" class="haupt">Nicht freigeschaltene G&auml;stebuch Eintr&auml;ge: </td>
                      </tr>
                      <?
					
$dbname = $zusatz."gbpas";
$result = @mysql_query("select * from $dbname WHERE STATUS='1' ORDER BY TIME ASC");
  if (@mysql_num_rows($result)) {
    while($row=@mysql_fetch_array($result)) {
$id = $row['ID'];
$name = $row['NAME'];
$email = $row['EMAIL'];
$time = $row['TIME'];
$ip = $row['IP'];
$host = $row['HOST'];
$status = $row['STATUS'];
$status_array = array('freigeschaltet', 'Nicht freigeschaltet');
$nachricht = bbpas($row['NACHRICHT']);
if($row['HOMEPAGE'] != ''){
$homepage = '(<a href="'.$row['HOMEPAGE'].'" Target="_blank">URL</a>)';
}
$name = wordwrap($row['NAME'], $wwrap,"\n", 1);
   echo'<tr>
    <td class="neben1"><a href="'.pas($row['EMAIL']).'">'.$name.'</a> verfasste am '.date("d.m.Y", $row['TIME']).' um '.date("h:i:s", $row['TIME']).' '.$homepage.'</td>
    <td align="right" class="neben1">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" class="neben2">'.$nachricht.'</td>
  </tr>
    <tr>
    <td colspan="2" class="neben2"><strong>IP:</strong> '.$ip.' <strong>HOST:</strong> '.$host.' <strong>ID:</strong> '.$id.'<br> [ <a href="admin.php?aktion=edit&id='.$id.'">Eintrag bearbeiten</a> ] [ <a href="admin.php?aktion=del&id='.$id.'" onClick="return confirm(\'Wollen Sie den Eintrag wirklich l&ouml;schen?\')">Eintrag l&ouml;schen</a> ] [<a href="'.$PHP_SELF.'?aktion=schalte&id='.$id.'&to=0">FREISCHALTEN</a>]</td>
  </tr>
';
}
}else{
echo'
    <tr>
    <td colspan="2" class="neben2">Keine Eintr&auml;ge vorhanden!</td>
  </tr>';
  }

?>
                  </table></td>
                </tr>
              </table>
        <br>
      </div></td>
    </tr>
  </table>
  <br>
<? }
if($aktion == "verwaltung"){ 
$seite = trim(htmlspecialchars($_GET['seite'], ENT_QUOTES, "UTF-8"));
if(!is_numeric($seite) || $seite < 1){
$seite = 1;
}
$start = $seite * $limit - $limit;
$seiten = NULL;
$seitenpas = ceil(pcountadmin() / $limit);
if($seitenpas > 0){
$seiten .= 'Seite '.$seite.'/'.$seitenpas;
if($seitenpas != 1){ $seiten .= ': '; }
if($seitenpas > 2 && $seite != 1){
$seiten .= '<a href="'.$PHP_SELF.'?aktion=verwaltung">&lt;&lt;</a> ';
}
if($seite != 1){
$seiten .= '<a href="'.$PHP_SELF.'?aktion=verwaltung&seite='.($seite-1).'">&lt;</a> ';
}
if($seitenpas > 1){
for($i = 1; $i <= $seitenpas; $i++){
if($i == $seite){
$seiten .= '<a href="'.$PHP_SELF.'?aktion=verwaltung&seite='.$i.'"><strong>'.$i.'</strong></a> ';
}else{
$seiten .= '<a href="'.$PHP_SELF.'?aktion=verwaltung&seite='.$i.'">'.$i.'</a> ';
}
}
}
if($seite != $seitenpas){
$seiten .= '<a href="'.$PHP_SELF.'?aktion=verwaltung&seite='.($seite+1).'">&gt;</a> ';
}
if($seitenpas > 2 && $seite != $seitenpas){
$seiten .= '<a href="'.$PHP_SELF.'?aktion=verwaltung&seite='.$seitenpas.'">&gt;&gt;</a> ';
}
}
?>
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong><a href="<? echo"admin.php?"; ?>">Men&uuml;</a> &gt; Verwaltung </strong><br>
              <br>
              <table width="500" border="0" align="center" cellpadding="3" cellspacing="3">
                <tr>
                  <td align="left"><? echo $seiten; ?></td>
                  <td align="right"></td>
                </tr>
                <tr>
                  <td colspan="2"><table width="100%" border="0" cellpadding="3" cellspacing="0" class="table">
                      <tr>
                        <td colspan="2" class="haupt">G&auml;stebuch Eintr&auml;ge (<? echo pcountadmin(); ?>) </td>
                      </tr>
                    <?
					
$dbname = $zusatz."gbpas";
$result = @mysql_query("select * from $dbname ORDER BY TIME DESC LIMIT $start,$limit");
  if (@mysql_num_rows($result)) {
    while($row=@mysql_fetch_array($result)) {
$id = $row['ID'];
$name = $row['NAME'];
$email = $row['EMAIL'];
$time = $row['TIME'];
$ip = $row['IP'];
$host = $row['HOST'];
$status = $row['STATUS'];
$status_array = array('freigeschaltet', 'Nicht freigeschaltet');
$nachricht = bbpas($row['NACHRICHT']);
if($row['HOMEPAGE'] != ''){
$homepage = '(<a href="'.$row['HOMEPAGE'].'" Target="_blank">URL</a>)';
}
$name = wordwrap($row['NAME'], $wwrap,"\n", 1);
   echo'<tr>
    <td class="neben1"><a href="'.pas($row['EMAIL']).'">'.$name.'</a> verfasste am '.date("d.m.Y", $row['TIME']).' um '.date("h:i:s", $row['TIME']).' '.$homepage.'</td>
    <td align="right" class="neben1">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" class="neben2">'.$nachricht.'</td>
  </tr>
    <tr>
    <td colspan="2" class="neben2"><strong>IP:</strong> '.$ip.' <strong>HOST:</strong> '.$host.' <strong>ID:</strong> '.$id.'<br> [ <a href="admin.php?aktion=edit&id='.$id.'">Eintrag bearbeiten</a> ] [ <a href="admin.php?aktion=del&id='.$id.'" onClick="return confirm(\'Wollen Sie den Eintrag wirklich löschen?\')">Eintrag löschen</a> ] [Status: '.$status_array[$status].']</td>
  </tr>
';
}
echo'<p>[ <a href="admin.php?aktion=delall" onClick="return confirm(\'Wollen Sie die Datenbank wirklich leeren?\')">Datenbank leeren</a> ]';
}else{
echo'
    <tr>
    <td colspan="2" class="neben2">Keine Einträge vorhanden!</td>
  </tr>';
  }

?>
                  </table></td>
                </tr>
                <tr>
                  <td align="left"><? echo $seiten; ?></td>
                  <td align="right"></td>
                </tr>
              </table>
              <br>
      </div></td>
    </tr>
  </table>
  <br>
  <? }
if($aktion == "del"){
$id = $_GET['id'];
$id = strip_tags($id);

?>
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong><a href="<? echo"admin.php?"; ?>">Men&uuml;</a> &gt; <a href="<? echo"admin.php?aktion=verwaltung"; ?>">Verwaltung</a> &gt; L&ouml;schen </strong><br>
              <br>
              <?
$dbname = $zusatz."gbpas";
if(!is_numeric($id)){
echo("Fehler,<br>Ungültige ID!<br><a href=javascript:history.go(-1)>Zurück</a>");
}
if($id == ""){
echo("Fehler,<br>Ungültige ID!<br><a href=javascript:history.go(-1)>Zurück</a>");
}
else{
$loeschen = "DELETE FROM $dbname WHERE ID = '$id' LIMIT 1";
$loesch = @mysql_query($loeschen);
echo ("Eintrag gelöscht!");
}
?>
      <br></div></td>
    </tr>
  </table>
  <br>
  <? }
  if($aktion == "schalte"){
$to = trim(htmlspecialchars($_GET['to'], ENT_QUOTES, "UTF-8"));
$id = trim(htmlspecialchars($_GET['id'], ENT_QUOTES, "UTF-8"));

?>
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong><a href="<? echo"admin.php?"; ?>">Men&uuml;</a> &gt; <a href="<? echo"admin.php?aktion=freischalten"; ?>">Verwaltung</a> &gt; Eintrag feischalten </strong><br>
              <br>
              <?
if(is_numeric($to) && is_numeric($id)){
	$dbname = $zusatz."gbpas";
	@mysql_query("UPDATE $dbname SET STATUS='$to' WHERE ID = '$id' LIMIT 1");
   echo"Status geupdatet!";
   }else{
   echo "Fehlerhafte Parameter!";
   }
?>
              <br>
      </div></td>
    </tr>
  </table>
  <br>
  <? }
if($aktion == "delall"){


?>
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong><a href="<? echo"admin.php?"; ?>">Men&uuml;</a> &gt; <a href="<? echo"admin.php?aktion=verwaltung"; ?>">Verwaltung</a> &gt; Datenbank leeren </strong><br>
              <br>
              <?
$dbname = $zusatz."gbpas";
   $leeren = "TRUNCATE `$dbname`";
   $leer = @mysql_query($leeren);
   echo"Datenbank geleert!";
?>
              <br>
      </div></td>
    </tr>
  </table>
  <br>
  <? }
if($aktion == "edit"){
$id = $_GET['id'];
$id = strip_tags($id); ?>
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong><a href="<? echo"admin.php?"; ?>">Men&uuml;</a> &gt; <a href="<? echo"admin.php?aktion=verwaltung"; ?>">Verwaltung</a> &gt; Editieren </strong><br>
              <B><BR>
              </B><?
$dbname = $zusatz."gbpas";
$result = @mysql_query("select * from $dbname WHERE ID='$id' LIMIT 1");
$reihen = @mysql_num_rows($result);
  if (@mysql_num_rows($result)) {
    $row=@mysql_fetch_array($result);
$id = $row['ID'];
$name = $row['NAME'];
$email = $row['EMAIL'];
$homepage = $row['HOMEPAGE'];
$nachricht = $row['NACHRICHT'];
$time = $row['TIME'];
$ip = $row['IP'];
$host = $row['HOST'];
$status = $row['STATUS'];
}
if($reihen > "0"){
?>
              <FORM NAME="form1" METHOD="post" ACTION="<? echo"admin.php?aktion=edit2&id=$id"; ?>">
                <table width="80%" border="0" cellpadding="3" cellspacing="0" class="table">
                  <tr>
                    <td width="70%" colspan="2" class="haupt">Eintrag bearbeiten </td>
                  </tr>

                  <tr>
                    <td width="70%" class="neben1"><strong>Name:</strong></td>
                    <td width="70%" class="neben1"><input name="name" type="text" class="input" id="name" value="<? echo $name; ?>" maxlength="100"></td>
                  </tr>
                  <tr>
                    <td width="70%" class="neben1"><strong>E-Mail:</strong></td>
                    <td width="70%" class="neben1"><input name="email" type="text" class="input" id="email" value="<? echo $email; ?>" maxlength="100"></td>
                  </tr>
                  <tr>
                    <td width="70%" class="neben1"><strong>Homepage:</strong></td>
                    <td width="70%" class="neben1"><input name="homepage" type="text" class="input" id="homepage" value="<? echo $homepage; ?>" maxlength="100">
                        <span class="klein">(Optional) </span></td>
                  </tr>
                  <tr>
                    <td width="70%" class="neben1"><p><strong>Nachricht:</strong></p>
                        <p class="klein">BB-Codes: <br>
                          [b]<strong>fett</strong>[/b]<br>
                          [i]<em>kursiv</em>[/i]<br>
                          [u]<u>unterstrichen</u>[/u] </p></td>
                    <td width="70%" class="neben1"><textarea name="nachricht" rows="10" class="input" id="nachricht" style="width:300px"><? echo $nachricht; ?></textarea>
                        <br>
                      Smilies: <img src="smilies/1.gif" border="0" onClick="DoSmilie(' :) ');" alt=":)"> <img src="smilies/2.gif" border="0" onClick="DoSmilie(' :D ');" alt=":D"> <img src="smilies/3.gif" border="0" onClick="DoSmilie(' ;) ');" alt=";)"> <img src="smilies/4.gif" border="0" onClick="DoSmilie(' :( ');" alt=":("> <img src="smilies/5.gif" border="0" onClick="DoSmilie(' 8) ');" alt="8)"></td>
                  </tr>
                  <tr>
                    <td class="neben1"><strong>Zeit:</strong></td>
                    <td class="neben1">Datum:
                      <input name="tag" type="text" id="tag" value="<? echo date("d", $time); ?>" size="2" maxlength="2">
                      .
                      <input name="monat" type="text" id="monat" value="<? echo date("m", $time); ?>" size="2" maxlength="2">
                      .
                      <input name="jahr" type="text" id="jahr" value="<? echo date("Y", $time); ?>" size="4" maxlength="4">
                      <br>
                      Uhrzeit:
                      <input name="stunde" type="text" id="stunde" value="<? echo date("H", $time); ?>" size="2" maxlength="2">
                      :
                      <input name="minute" type="text" id="minute" value="<? echo date("i", $time); ?>" size="2" maxlength="2">
                      :
                      <input name="sekunde" type="text" id="sekunde" value="<? echo date("s", $time); ?>" size="2" maxlength="2"></td>
                  </tr>
                  <tr>
                    <td class="neben1"><strong>IP:</strong></td>
                    <td class="neben1"><input name="ip" type="text" class="input" id="ip" value="<? echo $ip; ?>" maxlength="100"></td>
                  </tr>
                  <tr>
                    <td class="neben1"><strong>Host:</strong></td>
                    <td class="neben1"><input name="host" type="text" class="input" id="host" value="<? echo $host; ?>" maxlength="100"></td>
                  </tr>
                  <tr>
                    <td class="neben1"><strong>Status:</strong></td>
                    <td class="neben1"><input name="status" type="radio" value="0"<? if($status==0){ echo' checked'; } ?>>
                      freigeschaltet
                      <input type="radio" name="status" value="1"<? if($status==1){ echo' checked'; } ?>>
                      nicht freigeschaltet</td>
                  </tr>
                  

                  <tr>
                    <td colspan="2" align="center" class="neben2"><input type="submit" name="Submit3" value="Senden">
                        <input type="reset" name="Submit22" value="Zur&uuml;cksetzen"></td>
                  </tr>
                </table>
              </FORM><? }else{ echo"Ungültige ID!"; }?>
        <br>
              <br>
      </div></td>
    </tr>
  </table>
  <br>
  <? }
if($aktion == "edit2"){
$id = $_GET['id'];
$id = strip_tags($id); 
?>
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong><a href="<? echo"admin.php?"; ?>">Men&uuml;</a> &gt; <a href="<? echo"admin.php?aktion=verwaltung"; ?>">Verwaltung</a> &gt; Editieren </strong><br>
              <br>
              <?
$var_name = trim(htmlspecialchars($_POST['name'], ENT_QUOTES, "UTF-8"));
$var_email = trim(htmlspecialchars($_POST['email'], ENT_QUOTES, "UTF-8"));
$var_homepage = trim(htmlspecialchars($_POST['homepage'], ENT_QUOTES, "UTF-8"));
$var_nachricht = trim(htmlspecialchars($_POST['nachricht'], ENT_QUOTES, "UTF-8"));
$tag = trim(htmlspecialchars($_POST['tag'], ENT_QUOTES, "UTF-8"));
$jahr = trim(htmlspecialchars($_POST['jahr'], ENT_QUOTES, "UTF-8"));
$stunde = trim(htmlspecialchars($_POST['stunde'], ENT_QUOTES, "UTF-8"));
$minute = trim(htmlspecialchars($_POST['minute'], ENT_QUOTES, "UTF-8"));
$sekunde = trim(htmlspecialchars($_POST['sekunde'], ENT_QUOTES, "UTF-8"));
$ip = trim(htmlspecialchars($_POST['ip'], ENT_QUOTES, "UTF-8"));
$host = trim(htmlspecialchars($_POST['host'], ENT_QUOTES, "UTF-8"));
$monat = trim(htmlspecialchars($_POST['monat'], ENT_QUOTES, "UTF-8"));
$status = trim(htmlspecialchars($_POST['status'], ENT_QUOTES, "UTF-8"));

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
$time = mktime($stunde, $minute, $sekunde, $monat, $tag, $jahr);
$dbname = $zusatz.'gbpas';
if($var_homepage != ''){
$var_homepage = str_replace('http://', '', strtolower($var_homepage));
$var_homepage = 'http://'.$var_homepage;
}
$dbname = $zusatz."gbpas";
@mysql_query("UPDATE $dbname SET NAME='$var_name' WHERE ID = '$id' LIMIT 1");
@mysql_query("UPDATE $dbname SET EMAIL='$var_email' WHERE ID = '$id' LIMIT 1");
@mysql_query("UPDATE $dbname SET HOMEPAGE='$var_homepage' WHERE ID = '$id' LIMIT 1");
@mysql_query("UPDATE $dbname SET NACHRICHT='$var_nachricht' WHERE ID = '$id' LIMIT 1");
@mysql_query("UPDATE $dbname SET IP='$ip' WHERE ID = '$id' LIMIT 1");
@mysql_query("UPDATE $dbname SET HOST='$host' WHEt' WHERE ID = '$id' LIMIT 1");
@mysql_query("UPDATE $dbname SET TIME='$time' WHERE ID = '$id' LIMIT 1");
@mysql_query("UPDATE $dbname SET STATUS='$status' WHERE ID = '$id' LIMIT 1");
echo 'Eintrag wurde bearbeitet!';
}else{
echo '<span class="red">Es sind folgende Fehler aufgetreten:'.$msg.'</span><br>';
}

?>
              <br>
      </div></td>
    </tr>
  </table>
  <br>
  <br>
  <? }
if($aktion == "einstellungen"){
?>
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong><a href="<? echo"admin.php?"; ?>">Men&uuml;</a> &gt; <a href="<? echo"admin.php?aktion=einstellungen"; ?>">Einstellungen</a></strong><br>
              <br>
              <form action="<? echo"admin.php?aktion=einstellungen2"; ?>" method="POST">
                <table width="400" border="0" align="center" cellpadding="3" cellspacing="0" class="table">
                  <tr>
                    <td colspan="2" class="haupt">Konfiguration:</td>
                  </tr>
                  <tr>
                    <td class="neben1">Admin-Passwort</td>
                    <td class="neben1"><input name="adminpw" type="text" id="adminpw" value="<? echo $pw; ?>"></td>
                  </tr>

                  <tr>
                    <td class="neben1"> IP Sperre </td>
                    <td class="neben1"><input name="timefromip" id="timefromip" value="<? echo $timefromip; ?>"></td>
                  </tr>
                  <tr>
                    <td class="neben1"> Wordwrap </td>
                    <td class="neben1"><input name="wwrap" id="wwrap" value="<? echo $wwrap; ?>"></td>
                  </tr>
                  <tr>
                    <td class="neben1"> Statistik Eintr&auml;ge anzeigen </td>
                    <td class="neben1"><input name="anzahl" value="<? echo $limit; ?>"></td>
                  </tr>
                  <tr>
                    <td class="neben1"> Emailbenachrichtigung <br>
                    (frei lassen falls nicht gew&uuml;nscht) </td>
                    <td class="neben1"><input name="nemail" id="nemail" value="<? echo $nemail; ?>"></td>
                  </tr>
                  <tr>
                    <td class="neben1"> Manuelles Freischalten </td>
                    <td class="neben1"><input type="radio" name="mod" value="1"<? if($mod==1){ echo' checked'; } ?>>
                      Ja
                      <input name="mod" type="radio" value="0"<? if($mod==0){ echo' checked'; } ?>>
                    Nein</td>
                  </tr>
                  <tr>
                    <td class="neben1"> G&auml;stebuch Offline? </td>
                    <td class="neben1"><input type="radio" name="offline" value="1"<? if($offline==1){ echo' checked'; } ?>>
                      Ja
                      <input name="offline" type="radio" value="0"<? if($offline==0){ echo' checked'; } ?>>
                      Nein</td>
                  </tr>
                  <tr>
                    <td class="neben2"><strong>
                      <?php if(!is_writable('config.inc.php')){ echo '<span style="color:red">config.inc.php nicht beschreibbar!</span>'; }else{ echo '<span style="color:green">config.inc.php ist beschreibbar!</span>'; } ?>
                    </strong></td>
                    <td class="neben2"><input name="submit2" type="submit" value="Speichern"></td>
                  </tr>
                </table>
              </form>
              <br>
      </div></td>
    </tr>
  </table>
  <br>
  <br>
  <? }
if($aktion == "einstellungen2"){
?>
  <table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
      <td width="100%" colspan="2" valign="top"><div align="center"><strong><a href="<? echo"admin.php?"; ?>">Men&uuml;</a> &gt; <a href="<? echo"admin.php?aktion=einstellungen"; ?>">Einstellungen</a></strong><br>
              <strong>
              <br>
              <?php if(!is_writable('config.inc.php')){ echo '<span style="color:red">Konnte Einstellungen nicht ändern da die Datei schreibgeschützt ist!</span>'; }else{
if(!is_numeric($_POST['timefromip']) || !is_numeric($_POST['wwrap']) || !is_numeric($_POST['anzahl'])){
echo 'Sie haben Felder ausgefüllt indenen nur Zahlen erlaubt sind!';
}else{
$pas=fopen("config.inc.php","w");
fputs($pas, '<?php
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

// MySQL-Host Standard localhost:
$sql[1]="'.$sql[1].'";
// MySQL-Username:
$sql[2]="'.$sql[2].'";
// MySQL-Passwort:
$sql[3]="'.$sql[3].'";
// MySQL-Datenbank:
$sql[4]="'.$sql[4].'";

// Tabellennamen Zusatz
$zusatz = "'.$zusatz.'";

// Pfad
$pfad = "'.$pfad.'";

# Passwort
$pw = "'.trim(strip_tags($_POST['adminpw'])).'";

# Wordwrap
$wwrap = "'.trim(strip_tags($_POST['wwrap'])).'";

# IP-Sperren Zeit 84600 = 24 stunden
$timefromip = "'.trim(strip_tags($_POST['timefromip'])).'";

# Einträge pro Seite
$limit = "'.trim(strip_tags($_POST['anzahl'])).'";

# Seite Offline
$offline= '.trim(strip_tags($_POST['offline'])).';

# E-Mail benachrichtigung?
$nemail = "'.trim(strip_tags($_POST['nemail'])).'";

# Moderatoren Funktion
$mod = "'.trim(strip_tags($_POST['mod'])).'";

?>');
fclose($pas);
echo "Einstellungen übernommen!";
}
			  } ?>
              </strong><br>
              <br>
      </div></td>
    </tr>
  </table>
  <?
   }}

?>
  <!-- Die entfernung ist nach den Lizenzbestimmungen ausdrücklich untersagt! -->
  <div align="center">&copy; Copyright 2003-2007 by <A HREF=http://www.pa-s.de TARGET=_blank>PA-S.de</A></div><!-- Die entfernung ist nach den Lizenzbestimmungen ausdrücklich untersagt! --></td>
  </tr>
</table>

</body>
</html>
