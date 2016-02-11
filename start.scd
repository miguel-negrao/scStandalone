Server.supernova;
Server.program = "exec ./supernova";
s.options.ugenPluginsPath = "plugins";
s.options.loadDefs = false;
"SC_JACK_DEFAULT_INPUTS".setenv("firewire_pcm");
"SC_JACK_DEFAULT_OUTPUTS".setenv("firewire_pcm");
fork{
	"started".postln;
	s.bootSync;
	"booted".postln;
	x = { Out.ar(0, WhiteNoise.ar(0.1) ) }.play;
}
