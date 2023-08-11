<!DOCTYPE html>
<html>
<head>
    <title>Aplicativo de Mensagens</title>
</head>
<body>
    <div id="contacts">
        <h2>Contatos</h2>
        <input type="text" id="contactName" placeholder="Nome do contato">
        <button onclick="addContact()">Adicionar Contato</button>
    </div>
    <div id="search">
        <h2>Pesquisar Contato</h2>
        <input type="text" id="searchName" placeholder="Nome do contato">
        <button onclick="searchContact()">Pesquisar</button>
    </div>
    <div id="chat">
        <h2>Chat</h2>
        <div id="messageContainer"></div>
        <input type="text" id="message" placeholder="Digite sua mensagem">
        <button onclick="sendMessage()">Enviar</button>
    </div>
</body>
</html>
