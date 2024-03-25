
function exibirFormulario(formId) {
    // Esconder todos os formulários
    var forms = document.querySelectorAll('form');
    forms.forEach(function(form) {
        form.style.display = 'none';
    });

    // Exibir o formulário específico
    var formulario = document.getElementById(formId);
    formulario.style.display = 'block';
}


function toggleFormulario(formId, buttonId) {
    var formulario = document.getElementById(formId);
    var botao = document.getElementById(buttonId);

    if (formulario.style.display === 'none' || formulario.style.display === '') {
        // Exibir o formulário e alterar o botão para "Fechar"
        formulario.style.display = 'block';
        botao.innerHTML = 'Fechar';
        botao.style.backgroundColor = '#ff7f00'; // Alterar cor para vermelho
    } else {
        // Esconder o formulário e alterar o botão para "Incluir"
        formulario.style.display = 'none';
        botao.innerHTML = 'Incluir';
        botao.style.backgroundColor = ''; // Limpar cor
    }
}





var formularioAberto = null;

function toggleFormulario(formId, buttonId) {
    var formulario = document.getElementById(formId);
    var botao = document.getElementById(buttonId);

    if (formularioAberto === null) {
        // Nenhum formulário aberto, abrir o formulário
        formulario.style.display = 'block';
        botao.innerHTML = 'Fechar';
        botao.style.backgroundColor = '#ff7f00';
        formularioAberto = formId;
    } else {
        // Já existe um formulário aberto, exibir alerta
        alert('Feche o formulário em aberto antes de abrir outro.');
    }
}

function fecharFormulario(formId, buttonId) {
    var formulario = document.getElementById(formId);
    var botao = document.getElementById(buttonId);

    formulario.style.display = 'none';
    botao.innerHTML = 'Incluir';
    botao.style.backgroundColor = '';
    formularioAberto = null;
}
var formularioAberto = null;

function toggleFormulario(formId, buttonId) {
    var formulario = document.getElementById(formId);
    var botao = document.getElementById(buttonId);

    if (formularioAberto === null) {
        // Nenhum formulário aberto, abrir o formulário
        formulario.style.display = 'block';
        botao.innerHTML = 'Fechar';
        botao.style.backgroundColor = '#ff7f00';
        formularioAberto = formId;
    } else if (formularioAberto === formId) {
        // O mesmo formulário está aberto, fechar o formulário
        formulario.style.display = 'none';
        botao.innerHTML = 'Incluir';
        botao.style.backgroundColor = '';
        formularioAberto = null;
    } else {
        // Outro formulário está aberto, exibir alerta
        alert('Feche o formulário em aberto antes de abrir outro.');
    }
}
