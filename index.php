<?php
error_reporting(E_ALL);

ini_set('display_errors', '1');
include("RdioLink.php");

$rdio = new RdioLink();
$rdio->__init();

$token = $rdio->getPlaybackToken();

//Create old school procedural connection to mysql
$con = mysql_connect("127.0.0.1","sql","sql");
  
//If I can't connect, die
if (!$con)
{
  die('Could not connect: ' . mysql_error());
}

//Select DB
mysql_select_db("crowdsound", $con);

//Query String
$sql = "SELECT * FROM local_data ORDER BY RAND() LIMIT 5";

//Query
$q = mysql_query($sql,$con);

$track_array = array();
  
//Find rdio tracks
while($r = mysql_fetch_assoc($q)) {
  $rdio_track = $rdio->searchTracks($r['artist_name'], $r['track_name']);
  foreach ($rdio_track->result->results as $result) {
  	$track_id = $result->key;
  }
  $track_array[] = array('artist' => $r['artist_name'], 'track' => $r['track_name'], 'rdio_id' => $track_id);
} 
			
?>

<html>
	<head>
		<title>Crowd Sound</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="css/style.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
		<script src="Rdio.js"></script>
		<script type="text/javascript">
	var duration = 1; // track the duration of the currently playing track
	$(document).ready(function() {
	  $('#api').bind('ready.rdio', function() {
	  });
	  $('#api').bind('playingTrackChanged.rdio', function(e, playingTrack, sourcePosition) {
		if (playingTrack) {
		  duration = playingTrack.duration;
		  $('#art').attr('src', playingTrack.icon);
		  $('#track').text(playingTrack.name);
		  $('#album').text(playingTrack.album);
		  $('#artist').text(playingTrack.artist);
		}
		});
	  $('#api').bind('positionChanged.rdio', function(e, position) {
		$('#position').css('width', Math.floor(100*position/duration)+'%');
	  });
	  $('#api').bind('playStateChanged.rdio', function(e, playState) {
		if (playState == 0) { // paused
		  $('#play').show();
		  $('#pause').hide();
		} else {
		  $('#play').hide();
		  $('#pause').show();
		}
	  });
	  // this is a valid playback token for localhost.
	  // but you should go get your own for your own domain.
	  $('#api').rdio("<?php echo $token;?>");
	
	  $('#previous').click(function() { $('#api').rdio().previous(); });
	  $('#play').click(function() { $('#api').rdio().play(); });
	  $('#pause').click(function() { $('#api').rdio().pause(); });
	  $('#next').click(function() { $('#api').rdio().next(); });
	});
	</script>

  </head>
	
	<body>
		<div id="content-wrapper">
			<section>
				<h1>Crowd Sound</h1>
				<h2>what's playing in <span>Boulder, CO</span></h2>
			</section>
		</div>
		
		
		
		<footer>
		    <?php foreach($track_array as $track): ?>
			<p track="<?php echo $track['rdio_id'] ?>"><?php echo $track['artist'].' - '.$track['track']; ?></p>
			<?php endforeach; ?>
			  <div id="api"></div>
  <img id="art" src="" height="200" width="200" style="float:left;margin-right:20px;">
  <div>
    <div><b>Track: </b><span id="track"></span></div>
    <div><b>Album: </b><span id="album"></span></div>
    <div><b>Artist: </b><span id="artist"></span></div>
    <div><b>Position: </b>
      <span style="display:inline-block;width:200px;border:1px solid black;">
        <span id="position" style="display:inline-block;background-color:#666">&nbsp;</span>
      </span></div>
    <div>
      <button id="previous">&lt;&lt;</button>
      <button id="play">|&gt;</button>
      <button id="pause">||</button>
      <button id="next">&gt;&gt;</button>
    </div>
  </div>

		</footer>
	</body>

</html>