<script>
export default {
    data() {
        return {
            searchQuery: "",
            newMessage: "",
            messages: [
                { title: "Lodo", time: "10:00 AM", img: "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/borrar-fondo-imagen-1.jpg", description: "blablabla", reclamed: false },
                { title: "Vandolero", time: "10:00 AM", img: "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/borrar-fondo-imagen-1.jpg", description: "blablabla", reclamed: false },
                { title: "Bienvenidos al canal de novedades", time: "10:00 AM", img: "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/borrar-fondo-imagen-1.jpg", description: "blablabla", reclamed: true },
                { title: "Patioss al canal de novedades", time: "10:00 AM", img: "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/borrar-fondo-imagen-1.jpg", description: "blablabla", reclamed: false },


            ],
            filteredMessages: [],
        };
    },
    methods: {
        sendMessage() {
            if (this.newMessage.trim()) {
                const time = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
                const newMsg = {
                    title: this.newMessage,
                    time,
                    img: "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/borrar-fondo-imagen-1.jpg",
                    description: "Nuevo mensaje",
                    reclamed: false,
                };
                this.messages.push(newMsg);
                this.filteredMessages.push(newMsg);
                this.newMessage = "";
                this.scrollToBottom();
            }
        },

        scrollToBottom() {
            this.$nextTick(() => {
                const chatMessages = this.$refs.chatMessages;
                chatMessages.scrollTop = chatMessages.scrollHeight;
            });
        },
        filterMessages() {
            const query = this.searchQuery.toLowerCase();
            this.filteredMessages = this.messages.filter((msg) =>
                msg.title.toLowerCase().includes(query) || msg.description.toLowerCase().includes(query)
            );
        },
        toggle(index) {
            this.messages[index].reclamed = !this.messages[index].reclamed;
        },
    },

};
</script>


<template>
    <div class="chat-container">
        <div class="chat-header d-flex align-items-center p-2 justify-content-center">
            <input type="text" class="form-control search-bar" placeholder="Search Object..." v-model="searchQuery"
                @input="filterMessages" />
        </div>


        <div class="chat-messages justify-content-center" ref="chatMessages">

            <div v-for="(message, index) in filteredMessages" :key="index" :class="['message-wrapper', 'obj-message']">
                <div class="message">

                    <div class="container-fluid">
                        <div class="row my-2">
                            <div class="col-9 text-start">
                                <span class="title-text">{{ message.title }}</span>
                            </div>
                            <div class="col-3">
                                <span class="time-text">{{ message.time }}</span>
                            </div>
                        </div>

                        <div class="row justify-content-center">
                            <img class="img-fluid" :src="message.img" alt="">
                        </div>

                        <div class="row text-start justify-content-end m-2">
                            <div class="col-9"><span class="description-text">{{ message.description }}</span></div>
                            <div class="col-1">
                                <button @click="toggle(index)" :class="{ active: message.reclamed }" class="toggle">
                                    <!--{{ isActive ? 'Activo' : 'Inactivo' }}-->
                                </button>
                            </div>
                            <div class="col-2 edit-btn"> </div>
                        </div>
                    </div>


                </div>
            </div>

        </div>


        <div class="chat-input d-flex p-2 justify-content-center">
            <!--
                  <input v-model="newMessage" @keyup.enter="sendMessage" type="text" placeholder="Escribe un mensaje..."
                  class="form-control me-2" />
                  <button @click="sendMessage" class="btn btn-primary alaing-content-center">Enviar</button>
                  -->
            <button type="button" class="btn addObject" style="color: #8f9bb3;">Add Object</button>
        </div>
    </div>
</template>


<style scoped>
.edit-btn {
    background-image: url("../components/icons/edit-obj.svg");
    background-repeat: no-repeat;
    background-position: center center;
    background-size: 45px 45px;
    /*transform: rotate(90deg);
     Rota el botón 90 grados */
    /*position: absolute;
    top: 3px;
    right: 10px;
    background-color: #0050EF;
    color: white;
    font-size: 24px;*/
    border: none;
    cursor: pointer;
}

.toggle {
    border: none;
    border-radius: 50%;
    padding: 23px 23px;
}

.toggle.active {
    background-color: #14ff00;
    /* Verde si está reclamado */
    border: 2px solid white;
}

.toggle:not(.active) {
    background-color: #c70707;
    /* Rojo si NO está reclamado */
    border: 2px solid black;

}

.addObject {
    background-image: url("../components/icons/add-object.svg");
    background-repeat: no-repeat;
    background-position: 10px center;
    /* Posición del ícono */
    padding-left: 35px;
    /* Espacio para que el texto no se sobreponga al ícono */
    background-size: 20px 20px;
    /* Tamaño del Icono */
}

.chat-container {
    width: 100%;
    height: 90vh;
    display: flex;
    flex-direction: column;
}


.chat-header {
    padding: 8px;
    background-color: #f0f0f0;
    /*border-top-left-radius: 8px;
      border-top-right-radius: 8px;*/
    border-bottom: 1px solid #c5c5c5;
    flex-shrink: 0;
    /* Prevent these sections from shrinking */

}

.search-bar {
    width: 70%;
    border-radius: 20px;
    padding: 5px 15px;
    background: #d8dcf5;
    color: #2e3a59;
}

.chat-messages {
    flex: 1;
    overflow-y: auto;
    padding: 10px 30px;
    background-color: #f0f0f0;
    display: flex;
    flex-direction: column;

}

.message-wrapper {
    display: flex;
    margin-bottom: 8px;
    flex-direction: column;
    /* Ensure messages stack vertically */
    align-items: center;
    /* Align messages to the left by default */
}

.my-message {
    justify-content: flex-end;
    align-items: flex-end;
    /* Align "my" messages to the right */
}

.other-message {
    justify-content: flex-start;
}

.message {
    width: 70%;
    padding: 8px 12px;
    border-radius: 12px;
    position: relative;
}

.obj-message .message {
    background-color: #99cce6;
    border-top-left-radius: 0;
}

/*
.my-message .message {
    background-color: #dcf8c6;
    border-bottom-right-radius: 0;
}

.other-message .message {
    background-color: #ffffff;
    border-bottom-left-radius: 0;
}
*/

.title-text {
    /*display: block;*/
    font-size: 0.9rem;
    font-weight: bold;
}

.description-text {
    /*display: block;*/
    font-size: 0.9rem;
}

.time-text {
    font-size: 0.7rem;
    color: black;
    text-align: right;
    margin-top: 4px;
}

/*
.chat-input {
    border-top: 1px solid #ddd;
    background-color: #f9f9f9;
    flex-shrink: 0; /* Prevent these sections from shrinking 

}
*/
</style>