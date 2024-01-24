document.addEventListener('turbolinks:load', function() {  //отслеживаем загрузку всей страницы
    var control = document.querySelector('.sort-by-title') //когда страница загрузилась, сохраняем объект с нужным классом

    if (control) { control.addEventListener('click', sortRowsByTitle) } //отслеживаем у сохраненного элемента событие клик, и когда оно случается передаем функцию
})

function sortRowsByTitle() {
    var table = document.querySelector('table') //ищем и сохраняем элемент таблицы

    // NodeList
    // https://developer.mozilla.org/ru/docs/Web/API/NodeList
    var rows = table.querySelectorAll('tr') //ищем и сохраняем все строки в таблице
    sortedRows = []

    // выбираем все строки таблице кроме первой, которая является заголовком
    for (var i = 1; i < rows.length; i++) {
        sortedRows.push(rows[i])
    }

    if (this.querySelector('.octicon-arrow-up').classList.contains('hide')) {
        sortedRows.sort(compareRowsAsc)
        this.querySelector('.octicon-arrow-up').classList.remove('hide')
        this.querySelector('.octicon-arrow-down').classList.add('hide')
    } else {
        sortedRows.sort(compareRowsDesc)
        this.querySelector('.octicon-arrow-down').classList.remove('hide')
        this.querySelector('.octicon-arrow-up').classList.add('hide')
    }

    var sortedTable = document.createElement('table')
    sortedTable.classList.add('table')

    var tbody = document.createElement('tbody');
    tbody.appendChild(rows[0])

    for (var i = 0; i < sortedRows.length; i++) {
       tbody.appendChild(sortedRows[i])
    }

    sortedTable.appendChild(tbody);
    table.parentNode.replaceChild(sortedTable, table)
}

function compareRowsAsc(row1, row2) {
    var testTitle1 = row1.querySelector('td').textContent
    var testTitle2 = row2.querySelector('td').textContent

    if (testTitle1 < testTitle2) { return -1 }
    if (testTitle1 > testTitle2) { return 1 }
    return 0
}

function compareRowsDesc(row1, row2) {
    var testTitle1 = row1.querySelector('td').textContent
    var testTitle2 = row2.querySelector('td').textContent

    if (testTitle1 < testTitle2) { return 1 }
    if (testTitle1 > testTitle2) { return -1 }
    return 0
}


