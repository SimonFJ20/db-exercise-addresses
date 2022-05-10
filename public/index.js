
const searchInput = document.getElementById('search');
const resultsDiv = document.getElementById('results');


const handleSearchInput = async () => {
    const res = await (await fetch('/search/' + searchInput.value)).json();
    resultsDiv.innerHTML = res.map(r => `<div title="${r.postnr}"><h2>${r.betegnelse}</h2></div>`).join('');
}

const setSearchInputListener = () => {

    let handleTimeout;

    const minimum_delay = 500;
    let timer = Date.now();
    searchInput.addEventListener('input', async () => {
        clearTimeout(handleTimeout);

        if (searchInput.value === '') {
            return resultsDiv.innerHTML = '';
        }

        if (Date.now() - timer < minimum_delay) {
            handleTimeout = setTimeout(() => handleSearchInput, 500);
            return;
        }
        timer = Date.now();

        handleSearchInput();

    });


}

setSearchInputListener();
