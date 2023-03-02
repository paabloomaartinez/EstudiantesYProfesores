Select TareaGenerica.Codigo, TareaGenerica.Descripcion, TareaGenerica.hEstimadas, TareaGenerica.tipoTarea
                from TareaGenerica Join Asignatura On
                TareaGenerica.CodAsig = Asignatura.Codigo