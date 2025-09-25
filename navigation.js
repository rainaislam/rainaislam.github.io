// Simple and reliable navigation for Academic Pages design

$(document).ready(function() {
    
    // Wait for all content to load, then set up navigation
    setTimeout(function() {
        setupNavigation();
    }, 1000);
    
    function setupNavigation() {
        // Smooth scrolling for navigation links
        $('.navbar-nav a[href^="#"]').off('click').on('click', function(e) {
            e.preventDefault();
            
            const href = $(this).attr('href');
            const targetId = href.substring(1);
            let targetElement;
            
            // Find the target element
            if (targetId === 'about-section') {
                targetElement = $('#about-section');
            } else {
                // Try to find the loaded content first
                targetElement = $('#load' + targetId);
                
                // If not found, try to trigger loading
                if (targetElement.length === 0) {
                    const loadTrigger = $('#' + targetId);
                    if (loadTrigger.length && loadTrigger.hasClass('load')) {
                        loadTrigger.click();
                        // Wait and try again
                        setTimeout(() => {
                            targetElement = $('#load' + targetId);
                            if (targetElement.length) {
                                scrollToElement(targetElement);
                            }
                        }, 600);
                        return;
                    }
                }
            }
            
            if (targetElement.length) {
                scrollToElement(targetElement);
            }
        });
    }
    
    function scrollToElement(element) {
        const headerHeight = $('.navbar').outerHeight() || 60;
        const offset = element.offset();
        
        if (offset) {
            const targetPosition = offset.top - headerHeight - 20;
            
            $('html, body').animate({
                scrollTop: targetPosition
            }, 0, 'swing');
        }
    }
    
    // Close mobile menu when clicking on a link
    $(document).on('click', '.navbar-nav .nav-link', function() {
        if ($(window).width() < 992) {
            $('.navbar-collapse').removeClass('show');
            $('.navbar-toggler').attr('aria-expanded', 'false');
        }
    });
    
    // Scroll spy - highlight current section in navigation
    let isScrolling = false;
    
    $(window).scroll(function() {
        if (!isScrolling) {
            isScrolling = true;
            setTimeout(function() {
                updateActiveNavigation();
                isScrolling = false;
            }, 10);
        }
    });
    
    function updateActiveNavigation() {
        const scrollTop = $(window).scrollTop();
        const headerHeight = $('.navbar').outerHeight() || 60;
        const windowHeight = $(window).height();
        const documentHeight = $(document).height();
        
        // Check if we're at the bottom of the page
        if (scrollTop + windowHeight >= documentHeight - 10) {
            // Highlight the last section (awards)
            $('.navbar-nav .nav-link').removeClass('active');
            $('.navbar-nav .nav-link[href="#awards"]').addClass('active');
            return;
        }
        
        // Check if we're at the top of the page
        if (scrollTop < 100) {
            $('.navbar-nav .nav-link').removeClass('active');
            $('.navbar-nav .nav-link[href="#about-section"]').addClass('active');
            return;
        }
        
        // Define sections with their corresponding selectors and nav links
        const sections = [
            { selector: '#about-section', navLink: '#about-section' },
            { selector: '#loadexperience', navLink: '#experience' },
            { selector: '#loadprojects', navLink: '#projects' },
            { selector: '#loadskills', navLink: '#skills' },
            { selector: '#loadcertifications', navLink: '#certifications' },
            { selector: '#loadawards', navLink: '#awards' }
        ];
        
        let currentSection = '';
        let minDistance = Infinity;
        
        // Find the section that's most visible or closest to the top
        sections.forEach(function(section) {
            const element = $(section.selector);
            if (element.length && element.is(':visible')) {
                const elementTop = element.offset().top;
                const elementBottom = elementTop + element.outerHeight();
                const viewportTop = scrollTop + headerHeight + 50;
                
                // Check if section is in viewport
                if (elementBottom > viewportTop && elementTop < scrollTop + windowHeight) {
                    const distance = Math.abs(elementTop - viewportTop);
                    if (distance < minDistance) {
                        minDistance = distance;
                        currentSection = section.navLink;
                    }
                }
            }
        });
        
        // Update active navigation link
        if (currentSection) {
            $('.navbar-nav .nav-link').removeClass('active');
            $('.navbar-nav .nav-link[href="' + currentSection + '"]').addClass('active');
        }
    }
    
    // Initialize active navigation on page load
    setTimeout(function() {
        updateActiveNavigation();
    }, 1500);
    
    // Add visual styles for navigation
    $('<style>').prop('type', 'text/css').html(`
        .navbar-nav .nav-link {
            position: relative;
            transition: all 0.3s ease;
        }
        
        .navbar-nav .nav-link.active {
            background-color: rgba(255,255,255,0.2) !important;
            border-radius: 3px;
            font-weight: 600 !important;
            position: relative;
            margin: 0 2px;
            padding: 0.4rem 0.7rem !important;
        }
        
        .navbar-nav .nav-link.active::after {
            content: '';
            position: absolute;
            bottom: -1px;
            left: 50%;
            transform: translateX(-50%);
            width: 70%;
            height: 1.5px;
            background-color: white;
            border-radius: 1px;
        }
        
        .navbar-nav .nav-link:hover {
            background-color: rgba(255,255,255,0.08) !important;
            border-radius: 3px;
            margin: 0 2px;
            padding: 0.4rem 0.7rem !important;
        }
        
        /* Mobile Navigation Fixes */
        @media (max-width: 991.98px) {
            .navbar-collapse {
                background-color: var(--primary-color) !important;
                margin-top: 0.5rem;
                border-radius: 8px;
                padding: 1rem;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }
            
            .navbar-nav .nav-link {
                color: white !important;
                padding: 0.5rem 0.75rem !important;
                margin: 0.15rem 0;
                border-radius: 4px;
            }
            
            .navbar-nav .nav-link:hover {
                background-color: rgba(255,255,255,0.12) !important;
            }
            
            .navbar-nav .nav-link.active {
                background-color: rgba(255,255,255,0.25) !important;
                font-weight: 600 !important;
                border-left: 3px solid white;
                padding-left: 0.6rem !important;
            }
            
            .navbar-nav .nav-link.active::after {
                display: none;
            }
        }
        
        /* Navbar Brand and Toggler Spacing */
        .navbar-brand {
            margin-right: auto !important;
        }
        
        .navbar-toggler {
            border: 2px solid rgba(255,255,255,0.3) !important;
            padding: 0.5rem 0.75rem !important;
            margin-left: 1rem;
        }
        
        .navbar-toggler:focus {
            box-shadow: 0 0 0 0.2rem rgba(255,255,255,0.25) !important;
        }
        
        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28255, 255, 255, 0.8%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e") !important;
        }
    `).appendTo('head');
});