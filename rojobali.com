<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rojob Ali | Professional SEO Specialist in Meherpur</title>
    <meta name="description" content="Rojob Ali - Certified SEO specialist and digital marketer from Meherpur helping businesses grow online through effective search engine optimization strategies.">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --primary: #2563eb;
            --secondary: #1e40af;
            --accent: #3b82f6;
            --dark: #1f2937;
            --light: #f9fafb;
            --text: #374151;
            --text-light: #6b7280;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Poppins', sans-serif;
            line-height: 1.6;
            color: var(--text);
            background-color: #ffffff;
        }
        
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        /* Header Styles */
        header {
            background-color: #ffffff;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: fixed;
            width: 100%;
            z-index: 1000;
        }
        
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
        }
        
        .logo {
            font-size: 24px;
            font-weight: 700;
            color: var(--dark);
            text-decoration: none;
        }
        
        .logo span {
            color: var(--primary);
        }
        
        .nav-links {
            display: flex;
            list-style: none;
        }
        
        .nav-links li {
            margin-left: 30px;
        }
        
        .nav-links a {
            color: var(--dark);
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
            position: relative;
        }
        
        .nav-links a:hover {
            color: var(--primary);
        }
        
        .nav-links a::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            background: var(--primary);
            bottom: -5px;
            left: 0;
            transition: width 0.3s;
        }
        
        .nav-links a:hover::after {
            width: 100%;
        }
        
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 24px;
            cursor: pointer;
            color: var(--dark);
        }
        
        /* Hero Section */
        .hero {
            padding: 150px 0 100px;
            background: linear-gradient(135deg, #f0f7ff 0%, #e1effe 100%);
        }
        
        .hero-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        
        .hero-text {
            flex: 1;
            padding-right: 50px;
        }
        
        .hero-text h1 {
            font-size: 42px;
            font-weight: 700;
            color: var(--dark);
            margin-bottom: 20px;
            line-height: 1.2;
        }
        
        .hero-text p {
            font-size: 18px;
            color: var(--text-light);
            margin-bottom: 30px;
            max-width: 600px;
        }
        
        .btn {
            display: inline-block;
            padding: 12px 30px;
            background: var(--primary);
            color: white;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
            border: 2px solid var(--primary);
        }
        
        .btn:hover {
            background: transparent;
            color: var(--primary);
        }
        
        .btn-outline {
            background: transparent;
            color: var(--primary);
            margin-left: 15px;
        }
        
        .btn-outline:hover {
            background: var(--primary);
            color: white;
        }
        
        .hero-image {
            flex: 1;
            text-align: center;
        }
        
        .hero-image img {
            max-width: 100%;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }
        
        /* About Section */
        .section {
            padding: 100px 0;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 60px;
        }
        
        .section-title h2 {
            font-size: 36px;
            font-weight: 700;
            color: var(--dark);
            margin-bottom: 15px;
            position: relative;
            display: inline-block;
        }
        
        .section-title h2::after {
            content: '';
            position: absolute;
            width: 60px;
            height: 3px;
            background: var(--primary);
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
        }
        
        .section-title p {
            color: var(--text-light);
            max-width: 700px;
            margin: 0 auto;
        }
        
        .about-content {
            display: flex;
            align-items: center;
            gap: 50px;
        }
        
        .about-image {
            flex: 1;
        }
        
        .about-image img {
            width: 100%;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }
        
        .about-text {
            flex: 1;
        }
        
        .about-text h3 {
            font-size: 28px;
            font-weight: 600;
            color: var(--dark);
            margin-bottom: 20px;
        }
        
        .about-text p {
            margin-bottom: 20px;
            color: var(--text-light);
        }
        
        .skills {
            margin-top: 30px;
        }
        
        .skill-item {
            margin-bottom: 20px;
        }
        
        .skill-info {
            display: flex;
            justify-content: space-between;
            margin-bottom: 8px;
        }
        
        .skill-bar {
            height: 8px;
            background: #e5e7eb;
            border-radius: 10px;
            overflow: hidden;
        }
        
        .skill-progress {
            height: 100%;
            background: var(--primary);
            border-radius: 10px;
        }
        
        /* Services Section */
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }
        
        .service-card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.05);
            transition: all 0.3s ease;
        }
        
        .service-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
        }
        
        .service-icon {
            width: 70px;
            height: 70px;
            background: #dbeafe;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 20px;
            color: var(--primary);
            font-size: 28px;
        }
        
        .service-card h3 {
            font-size: 22px;
            font-weight: 600;
            margin-bottom: 15px;
            color: var(--dark);
        }
        
        .service-card p {
            color: var(--text-light);
        }
        
        /* Portfolio Section */
        .portfolio-filter {
            display: flex;
            justify-content: center;
            margin-bottom: 40px;
            flex-wrap: wrap;
            gap: 10px;
        }
        
        .filter-btn {
            padding: 8px 20px;
            background: transparent;
            border: 1px solid var(--primary);
            color: var(--primary);
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 500;
        }
        
        .filter-btn.active, .filter-btn:hover {
            background: var(--primary);
            color: white;
        }
        
        .portfolio-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 30px;
        }
        
        .portfolio-item {
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0,0,0,0.05);
            position: relative;
        }
        
        .portfolio-img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            transition: all 0.5s ease;
        }
        
        .portfolio-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(37, 99, 235, 0.9);
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            opacity: 0;
            transition: all 0.3s ease;
        }
        
        .portfolio-item:hover .portfolio-overlay {
            opacity: 1;
        }
        
        .portfolio-item:hover .portfolio-img {
            transform: scale(1.1);
        }
        
        .portfolio-overlay h3 {
            color: white;
            font-size: 22px;
            margin-bottom: 10px;
        }
        
        .portfolio-overlay p {
            color: rgba(255,255,255,0.8);
            margin-bottom: 20px;
            text-align: center;
            padding: 0 20px;
        }
        
        .portfolio-link {
            width: 50px;
            height: 50px;
            background: white;
            color: var(--primary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            text-decoration: none;
            font-size: 20px;
        }
        
        /* Testimonials Section */
        .testimonials {
            background: linear-gradient(135deg, #f0f7ff 0%, #e1effe 100%);
        }
        
        .testimonial-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 30px;
        }
        
        .testimonial-card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.05);
        }
        
        .testimonial-text {
            font-style: italic;
            color: var(--text-light);
            margin-bottom: 20px;
            position: relative;
        }
        
        .testimonial-text::before {
            content: '"';
            font-size: 60px;
            color: var(--primary);
            opacity: 0.2;
            position: absolute;
            top: -20px;
            left: -10px;
        }
        
        .client-info {
            display: flex;
            align-items: center;
        }
        
        .client-img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 15px;
            border: 3px solid var(--primary);
        }
        
        .client-details h4 {
            font-size: 18px;
            font-weight: 600;
            color: var(--dark);
            margin-bottom: 5px;
        }
        
        .client-details p {
            color: var(--text-light);
            font-size: 14px;
        }
        
        /* Contact Section */
        .contact-content {
            display: flex;
            gap: 50px;
        }
        
        .contact-info {
            flex: 1;
        }
        
        .contact-info h3 {
            font-size: 28px;
            font-weight: 600;
            color: var(--dark);
            margin-bottom: 20px;
        }
        
        .contact-info p {
            color: var(--text-light);
            margin-bottom: 30px;
        }
        
        .contact-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 25px;
        }
        
        .contact-icon {
            width: 50px;
            height: 50px;
            background: #dbeafe;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary);
            font-size: 20px;
            margin-right: 15px;
            flex-shrink: 0;
        }
        
        .contact-details h4 {
            font-size: 18px;
            font-weight: 600;
            color: var(--dark);
            margin-bottom: 5px;
        }
        
        .contact-details p {
            margin: 0;
            color: var(--text-light);
        }
        
        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 30px;
        }
        
        .social-link {
            width: 40px;
            height: 40px;
            background: #dbeafe;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary);
            text-decoration: none;
            transition: all 0.3s ease;
        }
        
        .social-link:hover {
            background: var(--primary);
            color: white;
        }
        
        .contact-form {
            flex: 1;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.05);
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #e5e7eb;
            border-radius: 8px;
            font-family: 'Poppins', sans-serif;
            transition: all 0.3s ease;
        }
        
        .form-control:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.1);
        }
        
        textarea.form-control {
            min-height: 150px;
            resize: vertical;
        }
        
        /* Footer */
        footer {
            background: var(--dark);
            color: white;
            padding: 80px 0 30px;
        }
        
        .footer-content {
            text-align: center;
        }
        
        .footer-logo {
            font-size: 28px;
            font-weight: 700;
            color: white;
            margin-bottom: 20px;
            display: inline-block;
            text-decoration: none;
        }
        
        .footer-logo span {
            color: var(--primary);
        }
        
        .footer-links {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 30px;
        }
        
        .footer-link {
            color: rgba(255,255,255,0.7);
            text-decoration: none;
            transition: all 0.3s ease;
        }
        
        .footer-link:hover {
            color: var(--primary);
        }
        
        .footer-social {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-bottom: 30px;
        }
        
        .footer-social-link {
            width: 40px;
            height: 40px;
            background: rgba(255,255,255,0.1);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        
        .footer-social-link:hover {
            background: var(--primary);
            transform: translateY(-5px);
        }
        
        .copyright {
            padding-top: 30px;
            border-top: 1px solid rgba(255,255,255,0.1);
            color: rgba(255,255,255,0.5);
            font-size: 14px;
        }
        
        /* Responsive */
        @media (max-width: 992px) {
            .hero-content {
                flex-direction: column;
                text-align: center;
            }
            
            .hero-text {
                padding-right: 0;
                margin-bottom: 50px;
            }
            
            .about-content {
                flex-direction: column;
            }
            
            .contact-content {
                flex-direction: column;
            }
            
            .contact-info {
                margin-bottom: 50px;
            }
        }
        
        @media (max-width: 768px) {
            .mobile-menu-btn {
                display: block;
            }
            
            .nav-links {
                position: fixed;
                top: 80px;
                left: -100%;
                width: 100%;
                background: white;
                flex-direction: column;
                align-items: center;
                padding: 30px 0;
                box-shadow: 0 10px 20px rgba(0,0,0,0.1);
                transition: all 0.3s ease;
            }
            
            .nav-links.active {
                left: 0;
            }
            
            .nav-links li {
                margin: 15px 0;
            }
            
            .hero-text h1 {
                font-size: 32px;
            }
            
            .section-title h2 {
                font-size: 30px;
            }
            
            .portfolio-grid {
                grid-template-columns: 1fr;
            }
        }
        
        @media (max-width: 576px) {
            .hero-text h1 {
                font-size: 28px;
            }
            
            .btn-group {
                display: flex;
                flex-direction: column;
                gap: 15px;
            }
            
            .btn-outline {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container">
            <nav class="navbar">
                <a href="#" class="logo">Rojob<span>Ali</span></a>
                
                <button class="mobile-menu-btn" id="mobileMenuBtn">
                    <i class="fas fa-bars"></i>
                </button>
                
                <ul class="nav-links" id="navLinks">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#portfolio">Portfolio</a></li>
                    <li><a href="#testimonials">Testimonials</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="container">
            <div class="hero-content">
                <div class="hero-text">
                    <h1>Rojob Ali - SEO Specialist in Meherpur</h1>
                    <p>Helping businesses in Meherpur and beyond improve their online visibility through proven SEO strategies and digital marketing solutions.</p>
                    <div class="btn-group">
                        <a href="#contact" class="btn">Get Started</a>
                        <a href="#portfolio" class="btn btn-outline">View Work</a>
                    </div>
                </div>
                <div class="hero-image">
                    <img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiX7BTYu2LSet07cN7HG1kwFvjlBnztXg_EEU2AtOG9lmozmWGJsla3NFueOhtkxkR7TcRAjg7fapNYShx2avviRFNjxIsybPof3z6HxK3Rdrx_D6VbBwXVi028KAPALZa9yhJC0cu1YhjLW0Cj39GqtiK8CEigEznj1PpvQmVQxbN8FzUkiMs6KlwjuAMC/s400/Best%20SEO%20Expert%20In%20Meherpur-Rojob%20Ali%20.png" alt="Rojob Ali - SEO Specialist">
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="section" id="about">
        <div class="container">
            <div class="section-title">
                <h2>About Me</h2>
                <p>Get to know the professional behind the results</p>
            </div>
            
            <div class="about-content">
                <div class="about-image">
                    <img src="https://images.unsplash.com/photo-1580927752452-89d86da3fa0a?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="About Rojob Ali">
                </div>
                <div class="about-text">
                    <h3>SEO Specialist & Digital Marketer</h3>
                    <p>I'm Rojob Ali, a certified SEO specialist based in Meherpur with over 10 years of experience in digital marketing. I help businesses of all sizes improve their online presence and reach more customers through search engine optimization.</p>
                    <p>My approach combines technical expertise with creative marketing strategies to deliver measurable results for my clients.</p>
                    
                    <div class="skills">
                        <div class="skill-item">
                            <div class="skill-info">
                                <span>SEO</span>
                                <span>95%</span>
                            </div>
                            <div class="skill-bar">
                                <div class="skill-progress" style="width: 95%;"></div>
                            </div>
                        </div>
                        
                        <div class="skill-item">
                            <div class="skill-info">
                                <span>Local SEO</span>
                                <span>90%</span>
                            </div>
                            <div class="skill-bar">
                                <div class="skill-progress" style="width: 90%;"></div>
                            </div>
                        </div>
                        
                        <div class="skill-item">
                            <div class="skill-info">
                                <span>Content Marketing</span>
                                <span>85%</span>
                            </div>
                            <div class="skill-bar">
                                <div class="skill-progress" style="width: 85%;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section class="section" id="services">
        <div class="container">
            <div class="section-title">
                <h2>My Services</h2>
                <p>Comprehensive digital marketing solutions tailored to your needs</p>
            </div>
            
            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-search"></i>
                    </div>
                    <h3>SEO Optimization</h3>
                    <p>Comprehensive search engine optimization services including keyword research, on-page optimization, and technical SEO audits to improve your website's rankings.</p>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-map-marker-alt"></i>
                    </div>
                    <h3>Local SEO</h3>
                    <p>Specialized strategies to help Meherpur businesses appear in local search results and Google Maps for relevant queries.</p>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <h3>Content Marketing</h3>
                    <p>Creating high-quality, SEO-optimized content that attracts and engages your target audience while improving search rankings.</p>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-ad"></i>
                    </div>
                    <h3>PPC Advertising</h3>
                    <p>Strategic pay-per-click campaigns on Google Ads and social media platforms to drive targeted traffic to your website.</p>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-hashtag"></i>
                    </div>
                    <h3>Social Media Marketing</h3>
                    <p>Building your brand presence on social platforms and driving engagement with your target audience.</p>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <h3>Email Marketing</h3>
                    <p>Effective email campaigns that nurture leads and convert subscribers into loyal customers.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Portfolio Section -->
    <section class="section" id="portfolio">
        <div class="container">
            <div class="section-title">
                <h2>My Portfolio</h2>
                <p>Some of my recent work and success stories</p>
            </div>
            
            <div class="portfolio-filter">
                <button class="filter-btn active" data-filter="all">All</button>
                <button class="filter-btn" data-filter="seo">SEO</button>
                <button class="filter-btn" data-filter="local">Local SEO</button>
                <button class="filter-btn" data-filter="content">Content</button>
            </div>
            
            <div class="portfolio-grid">
                <div class="portfolio-item" data-category="seo">
                    <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="SEO Project" class="portfolio-img">
                    <div class="portfolio-overlay">
                        <h3>E-commerce SEO</h3>
                        <p>Increased organic traffic by 300% for an online store in 6 months</p>
                        <a href="#" class="portfolio-link"><i class="fas fa-link"></i></a>
                    </div>
                </div>
                
                <div class="portfolio-item" data-category="local">
                    <img src="https://images.unsplash.com/photo-1581291518633-83b4ebd1d83e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Local SEO Project" class="portfolio-img">
                    <div class="portfolio-overlay">
                        <h3>Local Business SEO</h3>
                        <p>Helped a Meherpur business rank #1 for 15+ local keywords</p>
                        <a href="#" class="portfolio-link"><i class="fas fa-link"></i></a>
                    </div>
                </div>
                
                <div class="portfolio-item" data-category="content">
                    <img src="https://images.unsplash.com/photo-1542744173-8e7e53415bb0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Content Project" class="portfolio-img">
                    <div class="portfolio-overlay">
                        <h3>Content Strategy</h3>
                        <p>Developed content plan that increased leads by 150%</p>
                        <a href="#" class="portfolio-link"><i class="fas fa-link"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="section testimonials" id="testimonials">
        <div class="container">
            <div class="section-title">
                <h2>Client Testimonials</h2>
                <p>What my clients say about my work</p>
            </div>
            
            <div class="testimonial-grid">
                <div class="testimonial-card">
                    <div class="testimonial-text">
                        "Rojob helped our Meherpur business achieve first-page rankings for all our target keywords. Our website traffic increased by 400% and we're getting more customers than ever before."
                    </div>
                    <div class="client-info">
                        <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Client" class="client-img">
                        <div class="client-details">
                            <h4>Abdul Karim</h4>
                            <p>Meherpur Electronics</p>
                        </div>
                    </div>
                </div>
                
                <div class="testimonial-card">
                    <div class="testimonial-text">
                        "Working with Rojob was a game-changer for our online store. His SEO strategies helped us rank for competitive product terms and our sales have doubled in just 4 months."
                    </div>
                    <div class="client-info">
                        <img src="https://randomuser.me/api/portraits/women/44.jpg" alt="Client" class="client-img">
                        <div class="client-details">
                            <h4>Fatima Begum</h4>
                            <p>Fashion House BD</p>
                        </div>
                    </div>
                </div>
                
                <div class="testimonial-card">
                    <div class="testimonial-text">
                        "As a small business owner in Meherpur, I was skeptical about SEO. Rojob proved me wrong with measurable results. We're now getting 20+ quality leads every month from organic search."
                    </div>
                    <div class="client-info">
                        <img src="https://randomuser.me/api/portraits/men/75.jpg" alt="Client" class="client-img">
                        <div class="client-details">
                            <h4>Mohammad Ali</h4>
                            <p>Legal Associates</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="section" id="contact">
        <div class="container">
            <div class="section-title">
                <h2>Get In Touch</h2>
                <p>Ready to improve your online presence? Contact me today</p>
            </div>
            
            <div class="contact-content">
                <div class="contact-info">
                    <h3>Let's Talk About Your Project</h3>
                    <p>I'm available to discuss your digital marketing needs and how I can help your business grow online.</p>
                    
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div class="contact-details">
                            <h4>Location</h4>
                            <p>Meherpur, Khulna Division, Bangladesh</p>
                        </div>
                    </div>
                    
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="contact-details">
                            <h4>Email</h4>
                            <p>affordableseorojob@gmail.com</p>
                        </div>
                    </div>
                    
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-phone-alt"></i>
                        </div>
                        <div class="contact-details">
                            <h4>Phone</h4>
                            <p>+8801793419720</p>
                        </div>
                    </div>
                    
                    <div class="social-links">
                        <a href="https://www.facebook.com/md.rojobali.543/" class="social-link" target="_blank"><i class="fab fa-facebook-f"></i></a>
                        <a href="https://x.com/RojobAl00751499" class="social-link" target="_blank"><i class="fab fa-twitter"></i></a>
                        <a href="https://www.linkedin.com/in/rojobali-seospecialist/" class="social-link" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" class="social-link" target="_blank"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                
                <div class="contact-form">
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Your Name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Your Email" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Subject">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" placeholder="Your Message" required></textarea>
                        </div>
                        <button type="submit" class="btn">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <a href="#" class="footer-logo">Rojob<span>Ali</span></a>
                
                <div class="footer-links">
                    <a href="#home" class="footer-link">Home</a>
                    <a href="#about" class="footer-link">About</a>
                    <a href="#services" class="footer-link">Services</a>
                    <a href="#portfolio" class="footer-link">Portfolio</a>
                    <a href="#testimonials" class="footer-link">Testimonials</a>
                    <a href="#contact" class="footer-link">Contact</a>
                </div>
                
                <div class="footer-social">
                    <a href="https://www.facebook.com/md.rojobali.543/" class="footer-social-link" target="_blank"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://x.com/RojobAl00751499" class="footer-social-link" target="_blank"><i class="fab fa-twitter"></i></a>
                    <a href="https://www.linkedin.com/in/rojobali-seospecialist/" class="footer-social-link" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                    <a href="#" class="footer-social-link" target="_blank"><i class="fab fa-instagram"></i></a>
                </div>
                
                <div class="copyright">
                    &copy; 2025 Rojob Ali. All Rights Reserved.
                </div>
            </div>
        </div>
    </footer>

    <!-- JavaScript -->
    <script>
        // Mobile Menu Toggle
        const mobileMenuBtn = document.getElementById('mobileMenuBtn');
        const navLinks = document.getElementById('navLinks');
        
        mobileMenuBtn.addEventListener('click', () => {
            navLinks.classList.toggle('active');
        });
        
        // Smooth Scrolling
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                e.preventDefault();
                
                if (navLinks.classList.contains('active')) {
                    navLinks.classList.remove('active');
                }
                
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });
        
        // Portfolio Filter
        const filterBtns = document.querySelectorAll('.filter-btn');
        const portfolioItems = document.querySelectorAll('.portfolio-item');
        
        filterBtns.forEach(btn => {
            btn.addEventListener('click', () => {
                // Remove active class from all buttons
                filterBtns.forEach(btn => btn.classList.remove('active'));
                // Add active class to clicked button
                btn.classList.add('active');
                
                const filter = btn.getAttribute('data-filter');
                
                portfolioItems.forEach(item => {
                    if (filter === 'all' || item.getAttribute('data-category') === filter) {
                        item.style.display = 'block';
                    } else {
                        item.style.display = 'none';
                    }
                });
            });
        });
        
        // Form Submission
        const contactForm = document.querySelector('.contact-form form');
        if (contactForm) {
            contactForm.addEventListener('submit', function(e) {
                e.preventDefault();
                alert('Thank you for your message! I will get back to you soon.');
                this.reset();
            });
        }
    </script>
</body>
</html>