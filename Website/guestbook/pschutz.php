<?
###########################################################################################################################
# Captcha V.1.3 by PA-S.de
###########################################################################################################################
# Captcha V.1.3 by PA-S.de
# Copyright 2003-2007 PA-S.de
# Script Url: www.pa-s.de
# Kontakt: kontakt [@] pa-s [.] de
# Dieser unsichtbare Verweis darf nicht entfernt werden!
###########################################################################################################################
$pa_s = $_GET['pa_s'];
/*
 Hilfe zur Erstellung von Farbcodes:
 HTML Farbentabelle: http://www.onlinetools24.de/farbentabelle.php
 HTML-Farbe in RGB-Farbwerte konvertieren: http://www.onlinetools24.de/html2rgb-farbe.php
 Fragen dazu hier: www.pa-s.de/php/forum/index.php
*/


# Breite der Grafik
$breite = "100";

# H�he der Grafik
$hoehe = "20";


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
header("Content-Type: image/png");         #
$pas = ImageCreate($breite, $hoehe);    #
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# Hintergrundfarbe:  (Tools zum erstellen eines Farbcodes siehe oben)
$hintergrund = ImageColorAllocate($pas, 255, 255, 255); //  wei�

# Textfarbe:
$text = ImageColorAllocate($pas, 151, 151, 151); // grau

# Linien Farbe
$lf = ImageColorAllocate($pas, 220,220,220); // helleres grau

# Textposition X-Wert [horizontal]
$h = "20";

# Textposition Y-Wert [Vertikal]
$v = "2";

# Positionen der St�rlinien
$hn = $h - 5;
$hnp = $hn +2;
imageline($pas,0,$hn,100,$hnp,$lf);
imageline($pas,0,$hn+10,100,$hnp+10,$lf);
imageline($pas,0,$hn-4,100,$hnp-4,$lf);
imageline($pas,0,$hn+10,100,$hnp+10,$lf);
imageline($pas,0,$hn+14,100,$hnp+12,$lf);
imageline($pas,0,$hn-12,100,$hnp+15,$lf);
imageline($pas,0,$hn+12,100,$hnp-15,$lf);
imageline($pas,0,$hn-12,100,$hnp-8,$lf);

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

$key = md5($_SERVER["DOCUMENT_ROOT"].$_SERVER['SELF_PHP']);
$td = mcrypt_module_open(MCRYPT_GOST, '', MCRYPT_MODE_ECB, '');
$iv = mcrypt_create_iv(mcrypt_enc_get_iv_size ($td), MCRYPT_RAND);
mcrypt_generic_init($td, $key, $iv);
$pa_s = strtr($pa_s, '-_', '+/');
$data = mdecrypt_generic($td, base64_decode($pa_s));
preg_match_all("/[.a-z0-9_-]+/i", $data, $heurix);
$pa_s = $data;
mcrypt_generic_deinit($td);
mcrypt_module_close($td);                            
ImageFill($pas, 0, 0, $hintergrund);                    
imagestring($pas,6,$h,$v,$pa_s,$text);  
ImagePng($pas);                                                                    
ImageDestroy($pas);                    
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
?> 