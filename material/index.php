<?php
include("imdb.php");
 
$imdb = new Imdb();


// $movieIds = ["tt0211915","tt0088763","tt0046359","tt0365748","tt0449059","tt0425112","tt0027977","tt0053291","tt0032553","tt0264464","tt0053604","tt0017925","tt0012349","tt0014429","tt0021749","tt0107048","tt0023969","tt0120382","tt1119646","tt0018773","tt0190590","tt0095705","tt0829482","tt0446029","tt1570728","tt0084805","tt0443453","tt0057187","tt0032339","tt0286112","tt0109686","tt0362227","tt0099785","tt0104431","tt1149361","tt1178663","tt0129387","tt0838221","tt1605630","tt0416960","tt0078841","tt1411697","tt1605783","tt0290002","tt0477347","tt0315327","tt0107614","tt0396269","tt0207201","tt0119528","tt0386588","tt1375670","tt0163651","tt0252866","tt0337741","tt0110475","tt0942385","tt0208003","tt0369441","tt0112281","tt0122933","tt0099492","tt0328828","tt0413099","tt1068680","tt0175142","tt0257106","tt0306047","tt0362120","tt0116852","tt0183505","tt0368578","tt0087928","tt0838232","tt0810913","tt0109040","tt0102059","tt0107144","tt0119715","tt0110622","tt0102510","tt0118689","tt1385867","tt1045778","tt0335245","tt0453451","tt0119654","tt0295178","tt0367594","tt1478338","tt0486946","tt1114740","tt0795421","tt0467406","tt0343660","tt0045152","tt0075686","tt0057012","tt1675434"];
// foreach ($movieIds as $key=>$value){
//	$movieArray = $imdb->getMovieInfoById($value);
//	echo $movieArray['title_id'].'","'.$movieArray['title'].'","'.$movieArray['original_title'].'","'.$movieArray['year'].'","'. (is_array($movieArray['genres'])?implode("-",$movieArray['genres']):$movieArray['genres']) .'","'.$movieArray['tagline'] ."<br>";
// }

if (isset($_GET['movieId']))
{

 $movieId = $_GET['movieId'];
 $movieArray = $imdb->getMovieInfoById($movieId);
 $response = '"'.$movieArray['title_id'].';'.$movieArray['title'].';'.$movieArray['original_title'].';'.$movieArray['year'].';'. (is_array($movieArray['genres'])?implode("-",$movieArray['genres']):$movieArray['genres']) .';'.$movieArray['tagline'] .'"';
 
 echo 'responseReadyCallback(['.$response.'])';
 
} else {

 echo 'responseReadyCallback(["there is no movieId"])';
 
}

?>