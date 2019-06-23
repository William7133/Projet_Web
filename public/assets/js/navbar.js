var myNav;
var myNavHeight = 650;

window.addEventListener("load", function(){
  myNav = document.querySelector('nav');
})

window.addEventListener('scroll', function(){
  let hauteur = Math.abs(Math.round((document.body.scrollTop + 350) / myNavHeight));
  myNav.style.background = "var(--color" + hauteur + ")";
});
