<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="curriculum">



<html lang="ca">

<head>
   
    <title>El meu Currículum</title>
    <!-- Agregamos el enlace a Bootstrap -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css"/>
    <!--Link de css-->
    <link rel="stylesheet" href="../css/css.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-SrM5ViZwsU6bDyO5kpFlrDl9FXVr5vBZ9II5Z0FbJ2kUmZhubxIkLd7gNPt1AHQbhYIzSvZDYYZd8pz4VOeCGw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>

<body>
    <header class="p-3 mb-3 border-bottom">
        <div class="container">
            <h1 class="fw-bold">El Meu Currículum</h1>
        </div>
    </header>
    <main>
        <div class="container">
            <div class="row">
                <div class="col-md-4 left-section">
                    <section class="mb-5 text-center">
                        <img src="logo.png" alt="Imatge" class="img-fluid mb-3 img-round" id="image"/>
                    </section>
                    <hr/>
                    <section class="mb-5 ">
                                <h2 class="mb-3">Dades personals</h2>
                                <li>Nom: <xsl:value-of select="datos_personales/Nom"/>
                                </li>
                                <li>Edad:  <xsl:value-of select="datos_personales/Edad"/>
                                </li>
                                <li>Telefono:  <xsl:value-of select="datos_personales/Telefon"/>
                                </li>
                                <li>Email: <xsl:value-of select="datos_personales/Correu"/>
                                </li>
                            </section>
                   

                    <section class="mb-5">
                        <hr/>
                        <h2 class="mb-3">Idiomes</h2>
                            <xsl:for-each select="//idiomes/idioma">
                        <div>   
                                <li>Nom: <xsl:value-of select="llengues"/>
                                </li>
                                <li>Edad:  <xsl:value-of select="nivell"/>
                                </li>
                        </div>
                            </xsl:for-each>
                    </section>
    
                </div>
                <div class="col-md-8">
                   <section class="mb-5">
                        <h2 class="mb-3">Formacio academica</h2>
                            <xsl:for-each select="//formacio_academica/Dades_Academiques">
                        <div>   
                                <li>Nom: <xsl:value-of select="Institut"/>
                                </li>
                                <li>Data:  <xsl:value-of select="Data"/>
                                </li>
                                <li>Cicle: <xsl:value-of select="Cicle"/>
                                </li>
                                <br></br>
                        </div>
                        </xsl:for-each>
                    </section>
                    <section class="mb-5">
                        <h2 class="mb-3">Experiencia laboral</h2>
                                               <xsl:for-each select="//experiencia_laboral/Experiencia">
<div>
                       <li>Lloc de treball: <xsl:value-of select="lloc_de_treball"/>
                       
                       </li>
                     
                       
                       <li>Empresa: <xsl:value-of select="Empresa"/>
                       </li>
                       <li>Data de Inici: <xsl:value-of select="Data_inici"/>
                       </li>
                       <li>Data del final: <xsl:value-of select="Data_final"/>
                       </li>
                       <br></br>
</div>
                                                        </xsl:for-each>

                    </section>
                    <section>
                        <h2 class="mb-3">habilitats tecniques</h2>
                        <xsl:for-each select="//habilitats_tecniques/habilitats">
<div>
                       <li>Habiliat: <xsl:value-of select="Nom_habilitat"/>
                       </li>
                         
                       <li>Nivell <xsl:value-of select="Nivell"/>
                       </li>
                       <br></br>
</div>
</xsl:for-each>
                    </section>
                </div>
            </div>
        </div>
    </main>
    <footer class="p-3 mt-5 bg-light text-center">
        <div class="container">
            <p>Derechos de autor © 2023. Todos los derechos reservados.</p>
        </div>
    </footer>
</body>

</html>
</xsl:template>
</xsl:stylesheet>