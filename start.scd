"standalone started\nBooting server".postln;
Server.program = "exec %/scsynth".format(LanguageConfig.currentDirectory).postln;
s.options.ugenPluginsPath = "%/plugins".format(LanguageConfig.currentDirectory).postln;
s.options.loadDefs = false;
"SC_JACK_DEFAULT_INPUTS".setenv("firewire_pcm");
"SC_JACK_DEFAULT_OUTPUTS".setenv("firewire_pcm");
fork{
	var synthdefDir;
	"started".postln;
	s.bootSync;
	"booted".postln;
	synthdefDir = "%/synthdefs".format(LanguageConfig.currentDirectory);
    s.loadDirectory(synthdefDir);
	SynthDef.synthDefDir_(synthdefDir);
	s.sync;
	x = { Out.ar(0, WhiteNoise.ar(0.1) ) }.play;
	Synth(\testTone)
}

//generate synthdef:
//SynthDef(\testTone, { Out.ar(1, SinOsc.ar(440) * 0.1) }).writeDefFile("%/synthdefs".format(LanguageConfig.currentDirectory))

//check:
//ls -l /proc/$(pidof scsynth)/map_files/ | grep plugins
//for x in $(pidof scide) $(pidof sclang) $(pidof scsynth); do ls -l /proc/$x/exe; done