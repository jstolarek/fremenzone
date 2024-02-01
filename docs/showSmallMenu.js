function showSmallMenu() {
  var navbar = document.getElementById( "small-navbar-id" );
  if ( navbar.className.indexOf( "navbar-show" ) == -1 ) {
    navbar.className += " navbar-show";
  } else {
    navbar.className = navbar.className.replace(" navbar-show", "");
  }
}
