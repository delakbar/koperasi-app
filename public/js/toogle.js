document.addEventListener('DOMContentLoaded', function() {
    const sidebar = document.querySelector('.sidebar');
    const navbar = document.querySelector('.navbar');
    const mainContent = document.querySelector('.main-content');
    const sidebarToggle = document.getElementById('sidebarToggle');
    
    // Cek state dari localStorage
    const isCollapsed = localStorage.getItem('sidebarCollapsed') === 'true';
    
    // Set initial state
    if (isCollapsed) {
        sidebar.classList.add('collapsed');
        mainContent.classList.add('expanded');
        navbar.classList.add('expanded');
    }
    
    // Toggle sidebar
    sidebarToggle.addEventListener('click', function() {
        sidebar.classList.toggle('collapsed');
        mainContent.classList.toggle('expanded');
        navbar.classList.toggle('expanded');
        
        // Simpan state ke localStorage
        const isNowCollapsed = sidebar.classList.contains('collapsed');
        localStorage.setItem('sidebarCollapsed', isNowCollapsed);
    });
    
    // Responsive behavior
    function handleResize() {
        if (window.innerWidth <= 768) {
            sidebar.classList.add('collapsed');
            mainContent.classList.add('expanded');
            navbar.classList.add('expanded');
        } else {
            // Kembalikan ke state yang disimpan di localStorage
            if (localStorage.getItem('sidebarCollapsed') !== 'true') {
                sidebar.classList.remove('collapsed');
                mainContent.classList.remove('expanded');
                navbar.classList.remove('expanded');
            }
        }
    }
    
    // Jalankan saat pertama kali load dan saat resize
    handleResize();
    window.addEventListener('resize', handleResize);
});