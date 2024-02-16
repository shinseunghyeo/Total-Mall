// -----------자주 묻는 질문-----------
document.querySelectorAll('details').forEach(item => {
    item.addEventListener('toggle', event => {
        if (event.target.open) {
            document.querySelectorAll('details').forEach(detail => {
                if (detail !== event.target) {
                    detail.open = false;
                }
            });
        }
    });
});
// -----------자주 묻는 질문-----------