document.addEventListener('DOMContentLoaded', function() {
  const listItems = document.querySelectorAll('.list');

  listItems.forEach(function(item) {
    const buttons = item.querySelectorAll('.sub-btn');

    item.addEventListener('mouseenter', function() {
      buttons.forEach(function(button) {
        button.classList.add('show');
      });
    });

    item.addEventListener('mouseleave', function() {
      buttons.forEach(function(button) {
        button.classList.remove('show');
      });
    });
  });
});
