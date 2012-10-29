var LastFM = function(){
	
	this.base = "http://ws.audioscrobbler.com/2.0/"
	
}

LastFM.prototype.getMetroArtistChart = function(location){
	console.log(this.base+"?method=geo.getmetroartistchart&country=USA&metro="+location+"&api_key=1b53c4075fc075e170a1d606b0eacf95?callback=?");
	$.ajax({
		url:this.base+"?method=geo.getmetroartistchart&country=USA&metro="+location+"&api_key=1b53c4075fc075e170a1d606b0eacf95?callback=?",
		success:function(data){
			console.log(data);
		}
		
		
	})	
	
};

//http://ws.audioscrobbler.com/2.0/?method=geo.getmetroartistchart&country=USA&metro=Boulder&api_key=1b53c4075fc075e170a1d606b0eacf95?callback=?
$(document).ready(function(){
	

	
		
})