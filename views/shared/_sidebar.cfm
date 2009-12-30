<div class="block">
    <h3>Simple Block</h3>
  <div class="content">
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
  </div>
</div>
<div class="block">
  <h3>Switch Theme</h3>
  <ul class="navigation">
      <cfoutput>
        <li>#linkTo(text="Default", route="switchTheme", theme="drastic-dark")#</li>
        <li>#linkTo(text="Dark Red", route="switchTheme", theme="default")#</li>
        <li>#linkTo(text="Bec", route="switchTheme", theme="bec")#</li>
        <li>#linkTo(text="Bec-Green", route="switchTheme", theme="bec-green")#</li>
        <li>#linkTo(text="Blue", route="switchTheme", theme="blue")#</li>
        <li>#linkTo(text="Djime-Cerulean", route="switchTheme", theme="djime-cerulean")#</li>
        <li>#linkTo(text="Greenish", route="switchTheme", theme="reidb-greenish")#</li>
        <li>#linkTo(text="Kathleene", route="switchTheme", theme="kathleene")#</li>
        <li>#linkTo(text="Orange", route="switchTheme", theme="orange")#</li>
        <li>#linkTo(text="Warehouse", route="switchTheme", theme="warehouse")#</li>
      </cfoutput>
  </ul>
</div>
<div class="block">
  <h3>Sidebar</h3>
  <ul class="navigation">
    <li><a href="#block-text">Text</a></li>
    <li><a href="#block-tables">Tables</a></li>
    <li><a href="#block-forms">Forms</a></li>
    <li><a href="#block-messages">Messages</a></li>
    <li><a href="#block-forms-2">2 Columns Forms</a></li>
    <li><a href="#block-lists">Lists</a></li>
  </ul>
</div>
<div class="block notice">
  <h4>Notice Title</h4>
  <p>Morbi posuere urna vitae nunc. Curabitur ultrices, lorem ac aliquam blandit, lectus eros hendrerit eros, at eleifend libero ipsum hendrerit urna. Suspendisse viverra. Morbi ut magna. Praesent id ipsum. Sed feugiat ipsum ut felis. Fusce vitae nibh sed risus commodo pulvinar. Duis ut dolor. Cras ac erat pulvinar tortor porta sodales. Aenean tempor venenatis dolor.</p>
</div>
<div class="block">
  <div class="sidebar-block">
    <h4>Sidebar Inner block Title</h4>
    <p>Morbi posuere urna vitae nunc. Curabitur ultrices, lorem ac <a href="#">aliquam blandit</a>, lectus eros hendrerit eros, at eleifend libero ipsum hendrerit urna. Suspendisse viverra. Morbi ut magna. Praesent id ipsum. Sed feugiat ipsum ut felis. Fusce vitae nibh sed risus commodo pulvinar. Duis ut dolor. Cras ac erat pulvinar tortor porta sodales. Aenean tempor venenatis dolor.</p>
  </div>
</div>