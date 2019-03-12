![](https://img.shields.io/github/license/DominikVogel/r-teaching-script.svg) ![](https://img.shields.io/github/release/DominikVogel/r-teaching-script.svg)

# Skript zur Einführung in die Datenanalyse mit R

In diesem Repository stelle ich die Skripte zur Verfügung, die ich nutze, um meinen Studierenden die Datenanalyse mit *R* näherzubringen. Ich nutze diese Skripte in meinem Forschungsseminar im Master ["Interdisziplinäre Public und Nonprofit Studien"](https://www.wiso.uni-hamburg.de/studienbuero-sozialoekonomie/studiengaenge/msc-puno.html) am [Fachbereich Sozialökonomie](https://www.wiso.uni-hamburg.de/fachbereich-sozoek.html) der Universität Hamburg.

# Fokus

Der Fokus der Skripte liegt auf der Einführung in ``R``. Auch wenn einige Basics erklärt werden, so spielen die statistischen Grundlagen eine eher untergeordnete Rolle, da die Studierenden bereits entsprechende Kurse belegt haben. Die Studierenden sollen stattdessen lernen, mir *R* umzugehen und ihre eigenen Daten auszuwerten.

# Inspiration

Die Skripte sind stark durch das Buch "Discovering Statistics Using R" von Field, Miles und Field inspiriert, das ich sehr empfehlen kann. 

# Datensätze

Die meisten der verwendeten Datensätze stammen aus der Online-Erweiterung des Buches "Discovering Statistics Using R" und können hier heruntergeladen werden: https://studysites.uk.sagepub.com/dsur/study/articles.htm.

Folgende Datensätze wurden verwendet:

| Dateiname im Repository   | Original von Field et al. | Modifikation        |
|---------------------------|---------------------------|---------------------|
| album_sales.csv           | Album Sales 2.dat         | viele               |
| drug.csv                  | Viagra.dat                | Variable umbenannt  |
| exam_anxiety.csv          | Exam Anxiety.dat          |  --                 |
| Lecturer_Data.csv         | Lecturer Data.dat         | ID hinzugefügt      |
| Lecturer_Data_Missing.csv | Lecturer Data.dat         | Missings erzeugt    |
| spider_long.csv           | SpiderLong.dat            | Variablen umbenannt |
| spider_wide.csv           | SpiderWide.dat            | --                  |

Das Repository enthält ein Skript (``convert_field_datasets.R``), das die heruntergeladenen Datensätze so modifiziert, dass sie für das Skript verwendet werden können. Dazu müssen lediglich die Original-Datensätze im Unterordner ``RMarkdown/data`` gespeichert werden.

# Struktur des Repositories

    +---PDF                 # Skripte als PDF
    \---RMarkdown           # RMarkdown-Dateien zum kompilieren
        +---data            # Datensätze (außer diejenigen von Field et al.)
        +---fig             # Grafiken
        \---output          # Speicherort für Outputs

# Struktur der Skripte

Die Einführung in *R* ist in fünf Dokumente unterteilt. Die Dokumente werden den Studierenden als PDF zur Verfügung gestellt. Folgende Teile stehen zur Verfügung:

* Teil 1: Einführung, Datenmanagement, deskriptive Statistik
* Teil 1.1: Exkurs Datentypen (wurde ausgelagert, da die Erläuterungen bei den Studierenden oftmals für mehr Verwirrung als Klarheit sorgen)
* Teil 2: Bi- und multivariate Zusammenhänge (*t*-Tests, ANOVA, lineare Regression)
* Teil 3: Export von Tabellen nach Word
* Teil 4: Erstellen von Grafiken

# Nutzung

Die PDF-Dokumente stehen unter CC-BY 4.0 zur freien Verfügung. Die RMarkdown-Dateien können unter der MIT-Lizenz frei verwendet werden.

Wenn Sie die Skripte verwenden, würde ich mich über eine Nachricht freuen.

# Anpassen

Die Skripte stehen als RMarkdown-Dateien zur Verfügung und können gerne für die eigenen Zwecke angepasst werden. Um die RMarkdown-Dateien nach PDF oder HTML zu kompilieren, sind folgende Schritte notwendig:

1. Ordner ``RMarkdown`` herunterladen
2. Datensätze von https://studysites.uk.sagepub.com/dsur/study/articles.htm herunterladen, im Unterordner ``data`` speichern, mithilfe von ``convert_field_datasets.R`` in CSV konvertieren und umbenennen
3. Pakete installieren (s.u.)

# Verwendete Pakete

Zum Kompilieren der RMarkdown-Dateien müssen folgende Pakete installiert sein (``install.packages("package", dep = TRUE)``): 

* bitops
* broman
* car
* caTools
* coefplot
* cowplot
* data.table
* effsize
* ggedit
* interplot
* knitr
* lm.beta
* psych
* reshape2
* rmarkdown
* sjstats
* skimr
* stargazer
* tidylog
* tidyverse
* yarrr

# Fehler und Mitarbeit

Ich bin weder Statistiker noch Programmierer (sondern [Juniorprofessor für Public Management](https://vogel-online.info)). Daher bin ich für jedes Feedback dankbar. Schreiben Sie mir eine E-Mail oder posten Sie einen Eintrag unter [Issues](https://github.com/DominikVogel/r-teaching-script/issues).
