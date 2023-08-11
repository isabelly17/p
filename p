// Simulação de dados de contatos e mensagens
let contacts = [];
let messages = {};

// Função para adicionar um contato
function addContact() {
    const contactName = document.getElementById("contactName").value;
    contacts.push(contactName);
    // Você pode salvar os contatos em algum lugar (por exemplo, localStorage) para manter os dados entre sessões
    console.log("Contato adicionado:", contactName);
}

// Função para pesquisar um contato
function searchContact() {
    const searchName = document.getElementById("searchName").value;
    const result = contacts.filter(contact => contact.includes(searchName));
    console.log("Contatos encontrados:", result);
}

// Função para enviar uma mensagem
function sendMessage() {
    const message = document.getElementById("message").value;
    const contactName = document.getElementById("searchName").value;
    if (!messages[contactName]) {
        messages[contactName] = [];
    }
    messages[contactName].push(message);
    // Atualizar a exibição da conversa
    updateChat(contactName);
    console.log("Mensagem enviada:", message);
}

// Função para atualizar a exibição da conversa
function updateChat(contactName) {
    const messageContainer = document.getElementById("messageContainer");
    const messagesForContact = messages[contactName];
    if (messagesForContact) {
        const messageList = messagesForContact.map(msg => `<p>${msg}</p>`).join("");
        messageContainer.innerHTML = messageList;
    } else {
        messageContainer.innerHTML = "";
    }
}
