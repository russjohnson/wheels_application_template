//  Public 
// @@Created By: Russ Johnson on 2009-12-29. 
// @@Copyright: Copyright (c) 2009 Mad Piranha, Inc.. All rights reserved. 
// @@License:

component extends="Controller" output="false" {
  
  public void function init(){
    filters(through="theme", except="switchTheme");
  }
  
  public void function index(){
    
  }
  
  public void function format(){
      renderPage(layout='format_layout');
  }
  
  public void function switchTheme(){
      session.theme = params.theme;
      redirectTo(route='home');
  }
}