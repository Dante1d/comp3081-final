// app/assets/javascripts/sort.js
console.log('Script loaded');


// app/assets/javascripts/sort.js

document.addEventListener('DOMContentLoaded', function() {
    const table = document.getElementById('recipes-table');
    const tbody = table.querySelector('tbody');
  
    const sortTable = (columnIndex, ascending) => {
      const rows = Array.from(tbody.querySelectorAll('tr'));
  
      rows.sort((a, b) => {
        const aValue = a.children[columnIndex].textContent.trim().toLowerCase();
        const bValue = b.children[columnIndex].textContent.trim().toLowerCase();
        return ascending ? aValue.localeCompare(bValue) : bValue.localeCompare(aValue);
      });
  
      rows.forEach(row => tbody.appendChild(row));
    };
  
    const sortColumn = (columnIndex, ascending) => {
      sortTable(columnIndex, ascending);
    };
  
    table.addEventListener('click', event => {
      const th = event.target.closest('th');
      if (!th) return;
  
      const columnIndex = Array.from(th.parentNode.children).indexOf(th);
      const ascending = !th.classList.contains('sorted-asc');
  
      sortColumn(columnIndex, ascending);
  
      // Remove 'sorted' class from all other th elements
      table.querySelectorAll('th').forEach(element => element.classList.remove('sorted'));
      th.classList.toggle('sorted');
      th.classList.toggle('sorted-asc', ascending);
      th.classList.toggle('sorted-desc', !ascending);
    });
  
    document.getElementById('search-form').addEventListener('submit', function(event) {
      event.preventDefault(); // Prevent default form submission
      const searchValue = document.getElementById('search-input').value.trim().toLowerCase();
  
      // Perform search logic here...
      console.log('Search submitted with value:', searchValue);
    });
});
