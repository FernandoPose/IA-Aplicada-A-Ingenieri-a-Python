


directorio = '/Users/fpose/Documents/Doctorado/1512427/brainTumorDataPublic_2299-3064/';

% Obtener la lista de archivos .mat en el directorio y ordenarlos numéricamente
archivos = natsortfiles({dir(fullfile(directorio, '*.mat')).name});

% Inicializar el vector para almacenar los valores de 'label'
labels = zeros(length(archivos), 1);
PID = zeros(length(archivos), 1);
Registro = zeros(length(archivos), 1);

% Bucle para recorrer cada archivo .mat
for i = 1:length(archivos)
    % Construir la ruta completa del archivo
    archivo_actual = fullfile(directorio, archivos{i});
    
    % Cargar la estructura desde el archivo .mat
    carga = load(archivo_actual);
    
    % Extraer el valor de 'label' y almacenarlo en el vector
    labels(i) = carga.cjdata.label;
    Registro(i) = 2298 + i;
    
    % Cerrar la estructura cargada
    clear carga;
end

% Ahora, 'labels' contiene los valores de 'label' para cada archivo
%disp(labels);



matriz_registros = [Registro labels];
