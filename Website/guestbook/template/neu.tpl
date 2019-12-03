<table width="500" border="0" align="center" cellpadding="3" cellspacing="3">
  <tr>
    <td align="right"><a href="%phpself%?aktion=lesen">G&auml;stebuch lesen </a></td>
  </tr>
  <tr>
    <td><form id="neu" name="neu" method="post" action="%phpself%?aktion=neu">
      <table width="100%" border="0" cellpadding="3" cellspacing="0" class="table">
      <tr>
        <td width="50%" colspan="2" class="haupt">Eintrag hinzuf&uuml;gen </td>
      </tr>
      <tr>
        <td colspan="2" class="neben1"><strong>%msg%</strong></td>
        </tr>
      <tr>
        <td width="50%" class="neben1"><strong>Name:</strong></td>
        <td width="70%" class="neben1"><input name="name" type="text" class="input" id="name" value="%var_name%" maxlength="100"></td>
      </tr>
      <tr>
        <td width="50%" class="neben1"><strong>E-Mail:</strong></td>
        <td width="70%" class="neben1"><input name="email" type="text" class="input" id="email" value="%var_email%" maxlength="100"></td>
      </tr>
      <tr>
        <td width="50%" class="neben1"><strong>Homepage:</strong></td>
        <td width="70%" class="neben1"><input name="homepage" type="text" class="input" id="homepage" value="%var_homepage%" maxlength="100"> 
          <span class="klein">(Optional) </span></td>
      </tr>
      <tr>
        <td width="50%" class="neben1"><p><strong>Nachricht:</strong></p>
          <p class="klein">BB-Codes:
            <br>
            [b]<strong>fett</strong>[/b]<br> 
            [i]<em>kursiv</em>[/i]<br> 
            [u]<u>unterstrichen</u>[/u]            </p>          </td>
        <td width="70%" class="neben1"><textarea name="nachricht" rows="10" class="input" id="nachricht" style="width:300px">%var_nachricht%</textarea><br>Smilies: 
	        <img src="smilies/1.gif" border="0" onClick="DoSmilie(' :) ');" alt=":)"> 
                <img src="smilies/2.gif" border="0" onClick="DoSmilie(' :D ');" alt=":D">
                <img src="smilies/3.gif" border="0" onClick="DoSmilie(' ;) ');" alt=";)">
                <img src="smilies/4.gif" border="0" onClick="DoSmilie(' :( ');" alt=":(">
            <img src="smilies/5.gif" border="0" onClick="DoSmilie(' 8) ');" alt="8)"></td>
      </tr>
      <tr>
        <td width="50%" class="neben1"><strong>Sicherheitscode:</strong></td>
        <td width="70%" class="neben1"><img src="pschutz.php?pa_s=%pas%" alt="Sicherheitscode" border="1"><input name="xpas" type="hidden" id="xpas" value="%pas%"></td>
      </tr>
      <tr>
        <td width="50%" class="neben1"><strong>Code wiederholen :</strong></td>
        <td width="70%" class="neben1"><input name="code" type="text" class="input" id="code" maxlength="100"></td>
      </tr>

      <tr>
        <td colspan="2" align="center" class="neben2">
          <input type="submit" name="Submit" value="Senden">
          <input type="reset" name="Submit2" value="Zur&uuml;cksetzen"></td>
      </tr>
    </table> 
    </form></td>
  </tr>
  <tr>
    <td align="right"><a href="%phpself%?aktion=lesen">G&auml;stebuch lesen </a></td>
  </tr>
</table>
