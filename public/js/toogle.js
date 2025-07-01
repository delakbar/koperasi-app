document.addEventListener('DOMContentLoaded', function() {
    const sidebar = document.querySelector('.sidebar');
    const navbar = document.querySelector('.navbar');
    const mainContent = document.querySelector('.main-content');
    const sidebarToggle = document.getElementById('sidebarToggle');

    // --- Sidebar Toggle State (via localStorage) ---
    const isCollapsed = localStorage.getItem('sidebarCollapsed') === 'true';

    if (isCollapsed) {
        sidebar.classList.add('collapsed');
        mainContent.classList.add('expanded');
        navbar.classList.add('expanded');
    }

    sidebarToggle.addEventListener('click', function() {
        sidebar.classList.toggle('collapsed');
        mainContent.classList.toggle('expanded');
        navbar.classList.toggle('expanded');

        const isNowCollapsed = sidebar.classList.contains('collapsed');
        localStorage.setItem('sidebarCollapsed', isNowCollapsed);
    });

    function handleResize() {
        if (window.innerWidth <= 768) {
            sidebar.classList.add('collapsed');
            mainContent.classList.add('expanded');
            navbar.classList.add('expanded');
        } else {
            if (localStorage.getItem('sidebarCollapsed') !== 'true') {
                sidebar.classList.remove('collapsed');
                mainContent.classList.remove('expanded');
                navbar.classList.remove('expanded');
            }
        }
    }

    handleResize();
    window.addEventListener('resize', handleResize);

    // --- Collapse Dropdown Toggle (Admin/Ketua) ---
    const collapseToggles = document.querySelectorAll('[data-bs-toggle="collapse"]');

    collapseToggles.forEach(toggle => {
        const icon = toggle.querySelector('.bi-chevron-down, .bi-chevron-up');
        const targetId = toggle.getAttribute('href');
        const target = document.querySelector(targetId);

        if (!target) return;

        // Event toggle icon saat collapse dibuka atau ditutup
        target.addEventListener('shown.bs.collapse', function () {
            if (icon) {
                icon.classList.remove('bi-chevron-down');
                icon.classList.add('bi-chevron-up');
            }
        });

        target.addEventListener('hidden.bs.collapse', function () {
            if (icon) {
                icon.classList.remove('bi-chevron-up');
                icon.classList.add('bi-chevron-down');
            }
        });
    });
});
