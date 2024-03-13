document.addEventListener('turbolinks:load', function() {
    let rule = document.getElementById('rule');

    function hideAllRuleValues() {
        document.querySelectorAll('.form-select.rule-value').forEach(function(element) {
            element.style.display = 'none';
        });
    }

    function showRelevantRuleValue() {
        hideAllRuleValues();
        let selectedRule = rule.value;
        let value = document.getElementById(selectedRule);
        if (value) {
            value.style.display = '';
        }
    }

    if (rule) {
        showRelevantRuleValue();
        rule.addEventListener('change', showRelevantRuleValue);
    }

    document.addEventListener('submit', function(event) {
        document.querySelectorAll('.form-select.rule-value').forEach(function(element) {
            if (element.style.display === 'none') {
                element.disabled = true;
            }
        });
    });
});


