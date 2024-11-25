(deftemplate enfermedad
   (slot nombre)
   (slot tipo)
   (multislot sintomas)
)

(deffacts enfermedades
    (enfermedad (nombre "Gripe") 
            (tipo "Virus") 
            (sintomas "fiebre" "tos" "dolor de cabeza" "fatiga"))

    (enfermedad (nombre "COVID-19") 
                (tipo "Virus") 
                (sintomas "fiebre" "tos" "dificultad para respirar" "pérdida de olfato/gusto"))

    (enfermedad (nombre "Neumonía") 
                (tipo "Bacteria") 
                (sintomas "fiebre" "escalofríos" "dolor torácico" "tos con flema"))

    (enfermedad (nombre "Tuberculosis") 
                (tipo "Bacteria") 
                (sintomas "tos" "pérdida de peso" "fiebre nocturna"))

    (enfermedad (nombre "Dengue") 
                (tipo "Virus") 
                (sintomas "fiebre alta" "dolor articular" "erupción cutánea"))

    (enfermedad (nombre "Hepatitis B") 
                (tipo "Virus") 
                (sintomas "ictericia" "fatiga" "náuseas" "dolor abdominal"))

    (enfermedad (nombre "Tétanos") 
                (tipo "Bacteria") 
                (sintomas "espasmos musculares" "rigidez" "dificultad para tragar"))

    (enfermedad (nombre "Varicela") 
                (tipo "Virus") 
                (sintomas "fiebre" "erupciones cutáneas" "picazón"))

    (enfermedad (nombre "Rubeola") 
                (tipo "Virus") 
                (sintomas "fiebre leve" "sarpullido" "inflamación de ganglios linfáticos"))

    (enfermedad (nombre "Meningitis bacteriana") 
                (tipo "Bacteria") 
                (sintomas "dolor de cabeza severo" "fiebre alta" "rigidez en el cuello"))
)
