<%@ page import="java.util.List" %>
<%@ page import=" java.util.ListIterator" %>
<%@ page import="com.mvc.model.Posts" %>
<%@ page import="com.mvc.model.Amis" %>
<%@ page import="com.mvc.model.Likes" %>
<%@ page import="com.mvc.model.Commentaire" %>
<%@ page import="com.mvc.model.Pays, com.mvc.dao.PaysDAO , com.mvc.model.Ville , com.mvc.dao.VilleDAO , com.mvc.model.Utilisateur, com.mvc.dao.ConnexionBDD, com.mvc.dao.UserDAO"   %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>
 

 <header>
  <% 
 Utilisateur u = null;
 HttpSession s = request.getSession();
 UserDAO us = new UserDAO();

 if(s.getAttribute("username")== null){
	 request.setAttribute ( "msg" , "Il faut se connecter d'abord");
     request.getRequestDispatcher("/").forward(request, response);
 }
 else{
	 String username = (String) s.getAttribute("username");
	 System.out.println("username " + username);
	 u = us.getUtilisateurbyUsername(username);
	 String Fullname = u.getNom() + u.getPrenom();
	
	 

 }
 %>
			<div class="container">
				<div class="header-data">
					<div class="logo">
						<a href="index.html" title=""><img src="images/logo.png" alt=""></a>
					</div><!--logo end-->
					<div class="search-bar">
                    <form action="searchFriends" method="get">
                    <input type="text" name="query" placeholder="Rechercher un ami">
                    <button type="submit"><i class="la la-search"></i></button>
                    </form>
                    </div>
					<nav>
						<ul>
							<li>
								<a href="index.html" title="">
									<span><img src="images/icon1.png" alt=""></span>
									Home
								</a>
							</li>
							<li>
								<a href="companies.html" title="">
									<span><img src="images/icon2.png" alt=""></span>
									Companies
								</a>
								<ul>
									<li><a href="companies.html" title="">Companies</a></li>
									<li><a href="company-profile.html" title="">Company Profile</a></li>
								</ul>
							</li>
							<li>
								<a href="projects.html" title="">
									<span><img src="images/icon3.png" alt=""></span>
									Projects
								</a>
							</li>
							<li>
								<a href="profiles.html" title="">
									<span><img src="images/icon4.png" alt=""></span>
									Profiles
								</a>
								<ul>
									<li><a href="user-profile.html" title="">User Profile</a></li>
									<li><a href="my-profile-feed.html" title="">my-profile-feed</a></li>
								</ul>
							</li>
							<li>
								<a href="jobs.html" title="">
									<span><img src="images/icon5.png" alt=""></span>
									Jobs
								</a>
							</li>
							<li>
								<a href="#" title="" class="not-box-open">
									<span><img src="images/icon6.png" alt=""></span>
									Messages
								</a>
								<div class="notification-box msg">
									<div class="nt-title">
										<h4>Setting</h4>
										<a href="#" title="">Clear all</a>
									</div>
									<div class="nott-list">
										<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img1.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="messages.html" title="">Jassica William</a> </h3>
							  					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</p>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="messages.html" title="">Jassica William</a></h3>
							  					<p>Lorem ipsum dolor sit amet.</p>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img3.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="messages.html" title="">Jassica William</a></h3>
							  					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempo incididunt ut labore et dolore magna aliqua.</p>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="view-all-nots">
						  					<a href="messages.html" title="">View All Messsages</a>
						  				</div>
									</div><!--nott-list end-->
								</div><!--notification-box end-->
							</li>
							<li>
								<a href="#" title="" class="not-box-open">
									<span><img src="images/icon7.png" alt=""></span>
									Notification
								</a>
								<div class="notification-box">
									<div class="nt-title">
										<h4>Setting</h4>
										<a href="#" title="">Clear all</a>
									</div>
									<div class="nott-list">
										<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img1.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img3.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="view-all-nots">
						  					<a href="#" title="">View All Notification</a>
						  				</div>
									</div><!--nott-list end-->
								</div><!--notification-box end-->
							</li>
						</ul>
					</nav><!--nav end-->
					<div class="menu-btn">
						<a href="#" title=""><i class="fa fa-bars"></i></a>
					</div><!--menu-btn end-->
					<div class="user-account">
						<div class="user-info">
							<img src="/ProjetJ2E/images/<%out.print(u.getProfilImg()); %>" width="30px" height="30px">
							<a href="#" title=""><% out.print(u.getNom()); %></a>
							<i class="la la-sort-down"></i>
						</div>
						<div class="user-account-settingss">
							<h3>Online Status</h3>
							<ul class="on-off-status">
								<li>
									<div class="fgt-sec">
										<input type="radio" name="cc" id="c5">
										<label for="c5">
											<span></span>
										</label>
										<small>Online</small>
									</div>
								</li>
								<li>
									<div class="fgt-sec">
										<input type="radio" name="cc" id="c6">
										<label for="c6">
											<span></span>
										</label>
										<small>Offline</small>
									</div>
								</li>
							</ul>
							<h3>Custom Status</h3>
							<div class="search_form">
								<form>
									<input type="text" name="search">
									<button type="submit">Ok</button>
								</form>
							</div><!--search_form end-->
							<h3>Setting</h3>
							<ul class="us-links">
								<li><a href="/views/index.jsp" title="">Account Setting</a></li>
								<li><a href="#" title="">Privacy</a></li>
								<li><a href="#" title="">Faqs</a></li>
								<li><a href="#" title="">Terms & Conditions</a></li>
							</ul>
							<h3 class="tc"><a href="/ProjetJ2E/Logout" title="">Logout</a></h3>
						</div><!--user-account-settingss end-->
					</div>
				</div><!--header-data end-->
			</div>
		</header><!--header end-->


		

        <section class="cover-sec">
			<img src="/ProjetJ2E/views/images/coverture.png" alt="src" width="600px" height="400px">
		</section>
		<main>
			
			<div class="main-section">
			
				<div class="container">
			
					<div class="main-section-data">
						<div class="row">
							<div class="col-lg-3">
								<div class="main-left-sidebar">
									<div class="user_profile">
										<div class="user-pro-img">
											<img src="/ProjetJ2E/images/<%=u.getProfilImg() %>" width="100px" height="100px">
										</div>
										<div class="user_pro_status">
											<ul class="flw-hr">
												<li><a href="#" title="" class="flww"><i class="la la-plus"></i> Inviter</a></li>
												
											</ul>
											<ul class="flw-status">
												<li>
													<span> Amis </span>
													<%List<Amis> amis = us.getAmis(u.getIdu());%>
													<%=amis.size() %> 
												</li>
												
											</ul>
										</div><!--user_pro_status end-->
										
									</div><!--user_profile end-->
									
									<div class="suggestions full-width">
										<div class="sd-title">
											<h3> Amis</h3>
											
												
											<i class="la la-ellipsis-v"></i>
										</div><!--sd-title end-->
										<div class="suggestions-list">
										<% 
									
										
										for (int i = 0; i < amis.size() && i < 10; i++) {
										    	 try{
										    		 
													 
													     Amis AM = amis.get(i);
										 %>
										
										
										
										
										
											<div class="suggestion-usd">
												<img src="/ProjetJ2E/images/<%= AM.getAmi().getProfilImg() %>" width="30px" height="30px" alt="">
												<div class="sgt-text">
													<h4><%=AM.getAmi().getNom()+ "" + AM.getAmi().getPrenom() %></h4>
												   <span><%= AM.getAmi().getVille().getNom() %></span>
												</div>
												<form action="/ProjetJ2E/ConsulterAmis" method="get">
												
												<a href="/ProjetJ2E/ConsulterAmis?idu=<%= AM.getAmi().getIdu() %>">
                                                <span><i class="la la-plus"></i></span>
                                                 </a>
                                                </form>
											</div>
											    <%} catch(Exception e){} } %>
									
											
											
											<div class="view-more">
												<a href="#" title="">View More</a>
											</div>
										</div><!--suggestions-list end-->
									</div><!--suggestions end-->
								</div><!--main-left-sidebar end-->
							</div>
							<div class="col-lg-6">
								<div class="main-ws-sec">
									<div class="user-tab-sec">
										<h3><%= u.getNom() +"" + u.getPrenom() %></h3>
										
										<div class="star-descp">
											<span><% if (u.getVille() != null) { %>
                                            <%= u.getVille().getNom() %>
                                            <% } %>
											</span>
											
										</div><!--star-descp end-->
										<div class="tab-feed">
											<ul>
												<li data-tab="feed-dd" class="active">
													<a href="#" title="">
														<img src="images/ic1.png" alt="">
														<span>Feed</span>
													</a>
												</li>
												<li data-tab="info-dd">
													<a href="#" title="">
														<img src="images/ic2.png" alt="">
														<span>Info</span>
													</a>
												</li>
												<li data-tab="portfolio-dd">
													<a href="#" title="">
														<img src="images/ic3.png" alt="">
														<span>Portfolio</span>
													</a>
												</li>
											</ul>
										</div><!-- tab-feed end-->
									</div><!--user-tab-sec end-->
					
							
									
                                   
          
        
      
   
                     
                                    
                               
									
									
									<div class="product-feed-tab current" id="feed-dd">
                                     <%
                                      List<Posts> userPosts = us.getPosts(u.getIdu());
        ListIterator<Posts> iterator = userPosts.listIterator(userPosts.size());
        while (iterator.hasPrevious()) {
            Posts p = iterator.previous();
    %>
    <div class="posts-section">
        <div class="post-bar">
            <div class="post_topbar">
                <div class="usy-dt">
                    <img src="/ProjetJ2E/images/<%=u.getProfilImg() %>" alt="" width="30px" height="30px">
                    <div class="usy-name">
                        <h3><%= u.getNom() +"" + u.getPrenom() %></h3>
                        
                        <span><img src="images/clock.png" alt=""><%=p.getDatePoste() %></span>
                    </div>
                </div>

                <div class="ed-opts">
                    <a href="#" title="" class="ed-opts-open"><i class="la la-ellipsis-v"></i></a>
                    <ul class="ed-options">
                        <li><a href="#" title="">Editer Poste</a></li>
                        <li><a href="#" title="">Supprimer</a></li>

                    </ul>
                </div>
            </div>


            <div class="job_descp">
                <h3><%= p.getTitle() %></h3>
              
                <p>
                    <%if(p.getTypePoste().equals("message")) { %>
                    <%=p.getContenu()%>
                    <%} else if(p.getTypePoste().equals("image")) { %>
                    <img alt="" src="/ProjetJ2E/images/<%=p.getContenu() %>" height="100px" width="250px">
                    <%}else{ %>
                    <video controls="controls" src="/ProjetJ2E/videos/<%=p.getContenu() %>" ></video>
                    <%} %>
                </p>

            </div>

            <div class="job-status-bar">
                <ul class="like-com">
                    <li>
                        <a href="#"><i class="la la-heart"></i> Like</a>
                        <img src="images/liked-img.png" alt="">
                        <span><%List<Likes> likes = us.getLikesByIduAndIdp(u.getIdu(), p.getId()); %><%=likes.size() %></span>
                    </li>
                    <li><a href="#" title="" class="com"><img src="ProjetJ2E/images/com.png">
                    <span><%List<Commentaire> commentaire = us.getCommentairesByIduAndPosteId(u.getIdu(), p.getId()); %><%=commentaire.size() %></span>
                    </a></li>

                </ul>


            </div>

        </div><!--post-bar end-->
    </div>
    <% } %>
</div>
									
											<div class="process-comm">
												<div class="spinner">
													<div class="bounce1"></div>
													<div class="bounce2"></div>
													<div class="bounce3"></div>
												</div>
											</div><!--process-comm end-->
										</div><!--posts-section end-->
									</div><!--product-feed-tab end-->
									<div class="product-feed-tab" id="info-dd">
										<div class="user-profile-ov">
											<h3>Overview</h3>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. Nunc eu augue nec arcu efficitur faucibus. Aliquam accumsan ac magna convallis bibendum. Quisque laoreet augue eget augue fermentum scelerisque. Vivamus dignissim mollis est dictum blandit. Nam porta auctor neque sed congue. Nullam rutrum eget ex at maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget vestibulum lorem.</p>
										</div><!--user-profile-ov end-->
										<div class="user-profile-ov st2">
											<h3>Experience</h3>
											<h4>Web designer</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. </p>
											<h4>UI / UX Designer</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id.</p>
											<h4>PHP developer</h4>
											<p class="no-margin">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. </p>
										</div><!--user-profile-ov end-->
										<div class="user-profile-ov">
											<h3>Education</h3>
											<h4>Master of Computer Science</h4>
											<span>2015 - 2018</span>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. </p>
										</div><!--user-profile-ov end-->
										<div class="user-profile-ov">
											<h3>Location</h3>
											<h4>India</h4>
											<p>151/4 BT Chownk, Delhi </p>
										</div><!--user-profile-ov end-->
										<div class="user-profile-ov">
											<h3>Skills</h3>
											<ul>
												<li><a href="#" title="">HTML</a></li>
												<li><a href="#" title="">PHP</a></li>
												<li><a href="#" title="">CSS</a></li>
												<li><a href="#" title="">Javascript</a></li>
												<li><a href="#" title="">Wordpress</a></li>
												<li><a href="#" title="">Photoshop</a></li>
												<li><a href="#" title="">Illustrator</a></li>
												<li><a href="#" title="">Corel Draw</a></li>
											</ul>
										</div><!--user-profile-ov end-->
									</div><!--product-feed-tab end-->
									<div class="product-feed-tab" id="portfolio-dd">
										<div class="portfolio-gallery-sec">
											<h3>Portfolio</h3>
											<div class="gallery_pf">
												<div class="row">
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/271x174" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
												</div>
											</div><!--gallery_pf end-->
										</div><!--portfolio-gallery-sec end-->
									</div><!--product-feed-tab end-->
								</div><!--main-ws-sec end-->
							</div>
							<div class="col-lg-3">
								<div class="right-sidebar">
									<div class="message-btn">
										<a href="#" title=""><i class="fa fa-envelope"></i> Message</a>
									</div>
									<div class="widget widget-portfolio">
										<div class="wd-heady">
											<h3>Portfolio</h3>
											<img src="images/photo-icon.png" alt="">
										</div>
										<div class="pf-gallery">
											<ul>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
												<li><a href="#" title=""><img src="http://via.placeholder.com/70x70" alt=""></a></li>
											</ul>
										</div><!--pf-gallery end-->
									</div><!--widget-portfolio end-->
								</div><!--right-sidebar end-->
							</div>
						</div>
					</div><!-- main-section-data end-->
				</div> 
			</div>
		</main>
 <jsp:include page="footer.jsp"></jsp:include>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>

 
</body>
</html>