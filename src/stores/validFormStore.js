import { defineStore } from "pinia"
import { ref } from "vue";

export const useValidFormStore = defineStore('validFrom', () => {
    const correo = ref('');
    const contraseña = ref('');
    const sessionActive = ref('');

    const validarForm = (correoForm, contraseñaForm, session) => {
        correo.value = correoForm;
        contraseña.value = contraseñaForm;
        sessionActive.value = session;
    }
    return { correo, contraseña, sessionActive, validarForm }
}); 