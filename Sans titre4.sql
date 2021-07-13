/* Entrez :
    1 pour avoir la liste des notes;
    2 pour avoir l'emploi de temps;
    3 pour avoir la liste des admis;
    4 pour avoir la liste des redoublants;
    5 pour avoir le relevé d'un étudiant admis;
*/

ACCEPT choix PROMPT 'Entrez votre choix'

DECLARE
        c INTEGER;
BEGIN
        c := &choix;
        IF c = 1 THEN
            PROCNOTES;
        END IF;
        IF c = 2 THEN
            PROCEMPLOITEMPS;
        END IF;
        IF c = 3 THEN
            PROCADMIS;
        END IF;
        IF c = 4 THEN
            PROCREDOUBLANTS;
        END IF;
        IF c = 5 THEN
            PROCRELEVE;
        END IF;
        IF c < 1 OR c > 5 THEN
            DBMS_OUTPUT.PUT_LINE(' ');
            DBMS_OUTPUT.PUT_LINE('!!! ENTREZ UN NOMBRE COMPRIS ENTRE 1 ET 5 !!!');
        END IF;
END;
    
    
