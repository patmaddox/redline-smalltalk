self import: 'st.redline.XGreeting'.

Object < #XGreetingCaller.

+ Fail
	XGreeting new sayHello.

-fails
	XGreeting new sayHello.

-works
	Transcript show: 'Getting Greeting to say Hello from works.'; cr.
	
	
