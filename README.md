A script I made for using the same mediakeys for 2 mediaplayers, in my case Spotify and Banshee.
This is a very simple bash script, and can be runned from terminal or keybind with a parameter.

Examples from my openbox rc.xml:
    <keybind key="XF86AudioPlay">
      <action name="Execute">
        <execute>sh ~/Scripts/checkRunning.sh playpause</execute>
      </action>
    </keybind>
    <keybind key="XF86AudioStop">
      <action name="Execute">
        <execute>sh ~/Scripts/checkRunning.sh stop</execute>
      </action>
    </keybind>
    <keybind key="XF86AudioPrev">
      <action name="Execute">
        <execute>sh ~/Scripts/checkRunning.sh previous</execute>
      </action>
    </keybind>
    <keybind key="XF86AudioNext">
      <action name="Execute">
        <execute>sh ~/Scripts/checkRunning.sh next</execute>
      </action>
    </keybind>    
