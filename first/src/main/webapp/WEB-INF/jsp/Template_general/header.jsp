 <div class="w3-row" style="min-width:100%;">
	  <div class="w3-col l2 m2 s2  w3-padding-xsmall" style="width:200px;">
	       <p style="line-height:10px;font-family: Russo One;" class="w3-xlarge">COMPANY</p>
	  </div>
	  <div class="w3-col l8 m8 s8  w3-right-align w3-padding-20" style="width:1100px;">

	      <div class="w3-col s1"><a href="/Template_general.do"           class="w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">HOME</span></a></div>
	      <div class="w3-col s1"><a href="/Template_general/about.do"     class="w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">ABOUT</span></a></div>
	      <div class="w3-col s1"><a href="/Template_general/product.do"   class="w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">PRODUCT</span></a></div>
	      <div class="w3-col s1"><a href="/Template_general/sns.do"       class="w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">STORY</span></a></div>
	      <div class="w3-col s1"><a href="/Template_general/business.do"  class="w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">BUSINESS</span></a></div>
	      <div class="w3-col s1"><a href="/Template_general/service.do"     class="w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">SERVICE</span></a></div>
	      <div class="w3-col s1"><a href="/Template_general/staff.do"     class="w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">STAFF</span></a></div>
	      <div class="w3-col s1"><a href="/Template_general/recruit.do"   class="w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">RECRUIT</span></a></div>
	      <div class="w3-col s1"><a href="/Template_general/contact.do"   class="w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">CONTACT</span></a></div>
	      <div class="w3-col s1"><a href="/Template_general/openBoardList.do"  class="w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">CUSTOMER</span></a></div> 
          
	  </div>
	  <div class="w3-col l2 m2 s2  w3-padding-20 w3-right-align" style="width:150px;">
	      <div class="w3-col s6"><a href="#customer.do" class=" w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">LOGIN</span></a></div>
	      <div class="w3-col s6"><a href="#customer.do" class=" w3-block"><span style="font-family: Yanone Kaffeesatz;" class="w3-large">JOIN</span></a></div> 
	  </div>
</div> 
<script>
function openTab(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("fr-content");
  for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" w3-black", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " w3-black";
}
</script>