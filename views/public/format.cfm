<div class="block" id="block-text">
          <div class="secondary-navigation">
            <ul>
              <li class="active first"><a href="#block-text">Text</a></li>
              <li><a href="#block-tables">Tables</a></li>
              <li><a href="#block-forms">Forms</a></li>
              <li><a href="#block-messages">Messages</a></li>
              <li><a href="#block-forms-2">2 Columns Forms</a></li>
              <li><a href="#block-lists">Lists</a></li>
            </ul>
            <div class="clear"></div>
          </div>
          <div class="content">
            <h2 class="title">Text</h2>
            <div class="inner">
              <p class="first">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. <span class="hightlight">Excepteur sint occaecat cupidatat non proident</span>, sunt in culpa qui officia deserunt mollit anim id est laborum.
              </p>
              <p> <span class="small">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</span></p>
              <p> <span class="gray">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</span></p>
              <hr />
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. <span class="hightlight">Excepteur sint occaecat cupidatat non proident</span>, sunt in culpa qui officia deserunt mollit anim id est laborum.
              </p>
            </div>
          </div>
        </div>

        <div class="block" id="block-tables">
          <div class="secondary-navigation">
            <ul>
              <li class="first"><a href="#block-text">Text</a></li>
              <li class="active"><a href="#block-tables">Tables</a></li>
              <li><a href="#block-forms">Forms</a></li>
              <li><a href="#block-messages">Messages</a></li>
              <li><a href="#block-forms-2">2 Columns Forms</a></li>
              <li><a href="#block-lists">Lists</a></li>
            </ul>
            <div class="clear"></div>
          </div>
          <div class="content">
            <h2 class="title">Tables</h2>
            <div class="inner">
              <form action="#" class="form">
                <table class="table">
                  <tr>
                    <th class="first"><input type="checkbox" class="checkbox toggle" /></th>
                    <th>ID</th>
                    <th>Login</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th class="last">&nbsp;</th>
                  </tr>
                  <tr class="odd">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>1</td><td>hulk</td><td>Hulk</td><td>Hogan</td><td class="last"><a href="#">show</a> | <a href="#">edit</a> | <a href="#">destroy</a></td>
                  </tr>
                  <tr class="even">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>2</td><td>ultimate</td><td>Ultimate</td><td>Warrior</td><td class="last"><a href="#">show</a> | <a href="#">edit</a> | <a href="#">destroy</a></td>
                  </tr>
                  <tr class="odd">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>3</td><td>andre</td><td>Andre</td><td>The Giant</td><td class="last"><a href="#">show</a> | <a href="#">edit</a> | <a href="#">destroy</a></td>
                  </tr>
                  <tr class="even">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>4</td><td>machoman</td><td>Macho Man</td><td>Randy Savage</td><td class="last"><a href="#">show</a> | <a href="#">edit</a> | <a href="#">destroy</a></td>
                  </tr>
                </table>
                <div class="actions-bar">
                  <div class="actions">
                    <button class="button" type="submit">
                      <img src="/images/icons/cross.png" alt="Delete" /> Delete
                    </button>
                  </div>
                  <div class="pagination">
                    <span class="disabled prev_page">« Previous</span><span class="current">1</span><a rel="next" href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a><a href="#">11</a><a rel="next" class="next_page" href="#">Next »</a>
                  </div>
                  <div class="clear"></div>
                </div>
              </form>
            </div>
          </div>
        </div>

        <div class="block" id="block-forms">
          <div class="secondary-navigation">
            <ul>
              <li class="first"><a href="#block-text">Text</a></li>
              <li><a href="#block-tables">Tables</a></li>
              <li class="active"><a href="#block-forms">Forms</a></li>
              <li><a href="#block-messages">Messages</a></li>
              <li><a href="#block-forms-2">2 Columns Forms</a></li>
              <li><a href="#block-lists">Lists</a></li>
            </ul>
            <div class="clear"></div>
          </div>
          <div class="content">
            <h2 class="title">Forms</h2>
            <div class="inner">
              <form action="#" method="get" class="form">
                <div class="group">
                  <label class="label">Text field</label>
                  <input type="text" class="text_field" />
                  <span class="description">Ex: a simple text</span>
                </div>
                <div class="group">
                  <div class="fieldWithErrors">
                    <label class="label" for="post_title">Title</label>
                    <span class="error">can't be blank</span>
                  </div>
                  <input type="text" class="text_field" />
                  <span class="description">Ex: a simple text</span>
                </div>
                <div class="group">
                  <label class="label">Text area</label>
                  <textarea class="text_area" rows="10" cols="80"></textarea>
                  <span class="description">Write here a long text</span>
                </div>
                <div class="group navform">
                  <button class="button" type="submit">
                    <img src="/images/icons/tick.png" alt="Save" /> Save
                  </button>
                  <a href="#header" class="button">
                    <img src="/images/icons/cross.png" alt="Cancel"/> Cancel
                  </a>
                  <div class="clear"></div>
                </div>
              </form>
            </div>
          </div>
        </div>

        <div class="block" id="block-messages">
          <div class="secondary-navigation">
            <ul>
              <li class="first"><a href="#block-text">Text</a></li>
              <li><a href="#block-tables">Tables</a></li>
              <li><a href="#block-forms">Forms</a></li>
              <li class="active"><a href="#block-messages">Messages</a></li>
              <li><a href="#block-forms-2">2 Columns Forms</a></li>
              <li><a href="#block-lists">Lists</a></li>
            </ul>
            <div class="clear"></div>
          </div>
          <div class="content">
            <h2 class="title">Messages</h2>
            <div class="inner">
              <div class="flash">
                <div class="message error">
                  <p>Error message</p>
                </div>
                <div class="message warning">
                  <p>Warning message</p>
                </div>
                <div class="message success">
                  <p>Success message</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="block" id="block-forms-2">
          <div class="secondary-navigation">
            <ul>
              <li class="first"><a href="#block-text">Text</a></li>
              <li><a href="#block-tables">Tables</a></li>
              <li><a href="#block-forms">Forms</a></li>
              <li><a href="#block-messages">Messages</a></li>
              <li class="active"><a href="#block-forms-2">2 Columns Forms</a></li>
              <li><a href="#block-lists">Lists</a></li>
            </ul>
            <div class="clear"></div>
          </div>
          <div class="content">
            <h2 class="title">2 columns forms</h2>
            <div class="inner">
              <form action="#" method="get" class="form">
                <div class="columns">
                  <div class="column left">
                    <div class="group">
                      <label class="label">Text field</label>
                      <input type="text" class="text_field" />
                    </div>
                    <div class="group">
                      <label class="label">Text area</label>
                      <textarea class="text_area" rows="10" cols="80"></textarea>
                    </div>
                  </div>
                  <div class="column right">
                    <div class="group">
                      <label class="label">Select</label>
                      <select><option value="1">Choose...</option></select>
                    </div>
                    <div class="group">
                      <label class="label">Check box</label>
                      <div>
                        <input type="checkbox" name="checkbox" id="checkbox_1" class="checkbox" value="1" /> <label for="checkbox_1" class="checkbox">Option 1</label>
                      </div>
                      <div>
                        <input type="checkbox" name="checkbox" id="checkbox_2" class="checkbox" value="2" /> <label for="checkbox_2" class="checkbox">Option 2</label>
                      </div>
                    </div>
                    <div class="group">
                      <label class="label">Radio</label>
                      <div>
                        <input type="radio" name="radio" id="radio_1" class="checkbox" value="1" /> <label for="radio_1" class="radio">Option 1</label>
                      </div>
                      <div>
                        <input type="radio" name="radio" id="radio_2" class="checkbox" value="2" /> <label for="radio_2" class="radio">Option 2</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="clear"></div>
                <div class="group navform">
                  <button class="button" type="submit">
                    <img src="/images/icons/tick.png" alt="Save" /> Save
                  </button>
                  <a href="#header" class="button">
                    <img src="/images/icons/cross.png" alt="Cancel"/> Cancel
                  </a>
                  <div class="clear"></div>
                </div>
              </form>
            </div>
          </div>
        </div>

        <div class="block" id="block-lists">
          <div class="secondary-navigation">
            <ul>
              <li class="first"><a href="#block-text">Text</a></li>
              <li><a href="#block-tables">Tables</a></li>
              <li><a href="#block-forms">Forms</a></li>
              <li><a href="#block-messages">Messages</a></li>
              <li><a href="#block-forms-2">2 Columns Forms</a></li>
              <li class="active"><a href="#block-lists">Lists</a></li>
            </ul>
            <div class="clear"></div>
          </div>
          <div class="content">
            <h2 class="title">Lists</h2>
            <div class="inner">
              <ul class="list">
                <li>
                  <div class="left">
                    <a href="#"><img class="avatar" src="/images/avatar.png" alt="avatar" /></a>
                  </div>
                  <div class="item">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                  </div>
                </li>
                <li>
                  <div class="left">
                    <a href="#"><img class="avatar" src="/images/avatar.png" alt="avatar" /></a>
                  </div>
                  <div class="item">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                  </div>
                </li>
                <li>
                  <div class="left">
                    <a href="#"><img class="avatar" src="/images/avatar.png" alt="avatar" /></a>
                  </div>
                  <div class="item">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>