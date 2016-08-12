fun main () =
    visibleSource <- source True;
    ctextboxSource <- source "";
    ctextareaSource <- source "";
    cselectSource <- source "";
    let val signal =
	    visible <- signal visibleSource;
	    if visible then
		return 
		    <xml>
		      <p>
			<ctextbox source={ctextboxSource}/>
		      </p>
		      <p>
			<ctextarea source={ctextboxSource}/>
		      </p>
		      <p>
			<cselect source={cselectSource}/>
		      </p>
		    </xml>
	    else
		return
		    <xml></xml>
    in
	return
	    <xml>
              <body>
		<p>
		  <button onclick={fn _ => visible <- get visibleSource; set visibleSource (not visible)}>Show / Hide</button>
		</p>
		<dyn signal={signal}/>
	      </body>
            </xml>
    end
