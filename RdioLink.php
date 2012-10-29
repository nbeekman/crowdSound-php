<?php

include("RdioAPI/rdio.php");
include ("Lastfm/lastfmapi.php");
define('RDIO_CONSUMER_KEY', "x8zxcv2b35bhmm4yj86xa3u6");
define('RDIO_CONSUMER_SECRET', 'Ey83GMjKBY');




class RdioLink{
	public $key = RDIO_CONSUMER_KEY;
	public $secret = RDIO_CONSUMER_SECRET;
	
	public $current_url = null;
	public $rdio = null;


	public function __init(){
		$this->current_url = "http" . ((!empty($_SERVER['HTTPS'])) ? "s" : "") ."://" . $_SERVER['SERVER_NAME'].$_SERVER['SCRIPT_NAME'];
		$this->rdio = new Rdio(array(RDIO_CONSUMER_KEY, RDIO_CONSUMER_SECRET));
			
	}
	
	
	/**
		Get playback token
	*/
	public function getPlaybackToken(){
		return "GAlNi78J_____zlyYWs5ZG02N2pkaHlhcWsyOWJtYjkyN2xvY2FsaG9zdEbwl7EHvbylWSWFWYMZwfc=";
	}	
	
	public function searchTracks($artist, $track) {
	    return $this->rdio->call("search", array("query" => sprintf('%s - %s', $artist, $track), "types" => "Track", "count" => 1));
	}
		
	
}//end class


class LastFM{
	public $key = "1b53c4075fc075e170a1d606b0eacf95";
	public $secret = "4229d67f7dabd424e51e9b9a46711f71";
	public $rootURL = "http://ws.audioscrobbler.com/2.0/";
	
	
	public function __init(){}
	
	
	public function getEvents($location="Boulder"){
		$fm = fopen($this->rootURL."?method=geo.getmetroartistchart&country=spain&metro=$location&api_key=".$this->key);
		
		print_r($fm);		
	}
	
	
}