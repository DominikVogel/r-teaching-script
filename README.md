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

Das Repository enthält ein Skript (``RMarkdown/convert_field_datasets.R``), das die heruntergeladenen Datensätze so modifiziert, dass sie für das Skript verwendet werden können. Dazu müssen lediglich die Original-Datensätze im Unterordner ``RMarkdown/data`` gespeichert werden.

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

# Session Info build

Letzter erfolgreicher Build mit folgenden Session Infos:

    R version 3.5.3 (2019-03-11)
    Platform: x86_64-w64-mingw32/x64 (64-bit)
    Running under: Windows >= 8 x64 (build 9200)

    Matrix products: default

    locale:
    [1] LC_COLLATE=German_Germany.1252  LC_CTYPE=German_Germany.1252    LC_MONETARY=German_Germany.1252 LC_NUMERIC=C                   
    [5] LC_TIME=German_Germany.1252    

    attached base packages:
    [1] stats     graphics  grDevices utils     datasets  methods   base     

    other attached packages:
     [1] ggedit_0.3.0           coefplot_1.2.6         reshape2_1.4.3         cowplot_0.9.4          data.table_1.12.0      stargazer_5.2.2       
     [7] lm.beta_1.5-1          sjstats_0.17.4         car_3.0-2              carData_3.0-2          yarrr_0.1.5            circlize_0.4.5        
    [13] BayesFactor_0.9.12-4.2 Matrix_1.2-15          coda_0.19-2            jpeg_0.1-8             effsize_0.7.4          tidylog_0.1.0         
    [19] skimr_1.0.5            forcats_0.4.0          stringr_1.4.0          dplyr_0.8.0.1          purrr_0.3.1            readr_1.3.1           
    [25] tidyr_0.8.3            tibble_2.0.1           ggplot2_3.1.0          tidyverse_1.2.1        knitr_1.22            

    loaded via a namespace (and not attached):
      [1] useful_1.2.6        TH.data_1.0-10      minqa_1.2.4         colorspace_1.4-0    rio_0.5.16          sjlabelled_1.0.17   htmlTable_1.13.1   
      [8] estimability_1.3    GlobalOptions_0.1.0 base64enc_0.1-3     rstudioapi_0.9.0    MatrixModels_0.4-1  mvtnorm_1.0-10      lubridate_1.7.4    
     [15] xml2_1.2.0          codetools_0.2-16    splines_3.5.3       mnormt_1.5-5        sjmisc_2.7.9        Formula_1.2-3       jsonlite_1.6       
     [22] nloptr_1.2.1        interactionTest_1.1 broom_0.5.1         cluster_2.0.7-1     shiny_1.2.0         compiler_3.5.3      httr_1.4.0         
     [29] emmeans_1.3.3       backports_1.1.3     assertthat_0.2.0    lazyeval_0.2.1      cli_1.0.1           later_0.8.0         htmltools_0.3.6    
     [36] acepack_1.4.1       tools_3.5.3         gtable_0.2.0        glue_1.3.1          Rcpp_1.0.0          cellranger_1.1.0    nlme_3.1-137       
     [43] psych_1.8.12        insight_0.1.2       xfun_0.5            openxlsx_4.1.0      lme4_1.1-21         rvest_0.3.2         miniUI_0.1.1.1     
     [50] mime_0.6            gtools_3.8.1        interplot_0.2.1     shinyAce_0.3.3      MASS_7.3-51.1       zoo_1.8-4           scales_1.0.0       
     [57] shinyBS_0.61        promises_1.0.1      hms_0.4.2           parallel_3.5.3      sandwich_2.5-0      RColorBrewer_1.1-2  yaml_2.2.0         
     [64] curl_3.3            gridExtra_2.3       pbapply_1.4-0       rpart_4.1-13        latticeExtra_0.6-28 stringi_1.4.3       checkmate_1.9.1    
     [71] boot_1.3-20         zip_2.0.1           shape_1.4.4         rlang_0.3.1         pkgconfig_2.0.2     arm_1.10-1          lattice_0.20-38    
     [78] htmlwidgets_1.3     labeling_0.3        tidyselect_0.2.5    plyr_1.8.4          magrittr_1.5        R6_2.4.0            generics_0.0.2     
     [85] Hmisc_4.2-0         multcomp_1.4-10     pillar_1.3.1        haven_2.1.0         foreign_0.8-71      withr_2.1.2         survival_2.43-3    
     [92] abind_1.4-5         nnet_7.3-12         modelr_0.1.4        crayon_1.3.4        grid_3.5.3          readxl_1.3.1        digest_0.6.18      
     [99] xtable_1.8-3        httpuv_1.4.5.1      munsell_0.5.0    
