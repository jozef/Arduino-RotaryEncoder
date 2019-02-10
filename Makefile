all: README examples/RotaryEncoder_double/README examples/RotaryEncoder_single/README examples/RotaryEncoder_synopsis/README

clean:
	rm -f README README.bak \
			examples/RotaryEncoder_double/README examples/RotaryEncoder_double/README.bak \
			examples/RotaryEncoder_single/README examples/RotaryEncoder_single/README.bak \
			examples/RotaryEncoder_synopsis/README examples/RotaryEncoder_synopsis/README.bak

README: RotaryEncoder.h
	pod2readme $< $@ && rm -f $@.bak

examples/RotaryEncoder_double/README: examples/RotaryEncoder_double/RotaryEncoder_double.ino
	pod2readme $< $@ && rm -f $@.bak

examples/RotaryEncoder_single/README: examples/RotaryEncoder_single/RotaryEncoder_single.ino
	pod2readme $< $@ && rm -f $@.bak
	
examples/RotaryEncoder_synopsis/README: examples/RotaryEncoder_synopsis/RotaryEncoder_synopsis.ino
	pod2readme $< $@ && rm -f $@.bak
