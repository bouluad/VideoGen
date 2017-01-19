package videogen

class FFMPEGHelpere {
	
	def void executeCmd(String location, String name){
		
	 var command = "ffmpeg -y -i " + "./" + location + " -r 1 -t 00:00:01 -ss 00:00:01.000 -f image2 screenshot/" + name + ".png"
        var p = Runtime.runtime.exec(command)
        p.waitFor
	}
	
    def void executeCmdGIF(String input, String outputname){
    			
	// var command = "ffmpeg -i screenshot/"+input+outputname+".gif"
	var command = "ffmpeg -i "+input+" "+outputname+".gif"
        var p = Runtime.runtime.exec(command)
        p.waitFor
	}
	
	
}