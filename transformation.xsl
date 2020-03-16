<?xml version='1.0' encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <style>
            p.ex1 {
                margin-left: 60px;
            }
        </style>
        <title>Curriculum Vitae</title>
        
        <h1 align="Center" style="color:steelblue;"><b><big>Curriculum Vitae </big></b></h1>
        
        
    </head>
    <body>
        
        
        <xsl:for-each select="CurriculumVitae/Informations">
        <br /><center><big><xsl:value-of select="Description"></xsl:value-of></big></center>
        <br/>
        
        <h2 align="Center" style="color:steelblue;"><i> Etat civil</i></h2>
        <hr />
        <p class="ex1">
        <strong ><b>Nom:    </b></strong><xsl:value-of select="Name"></xsl:value-of>
        <br /><b>Prénom:    </b> <xsl:value-of select="FirstName"></xsl:value-of>
        <br /><b>Email:     </b> <xsl:value-of select="Email"></xsl:value-of>
        <br /><b>téléphone: </b> <xsl:value-of select="Phone"></xsl:value-of>
        <br /><b>Linkedin:  </b> <xsl:value-of select="Linkedin"></xsl:value-of>
        <br /><b>Github:    </b><xsl:value-of select="Github"></xsl:value-of>
        </p>


        <h2 align="Center" style="color:steelblue;"><i>Formation</i> </h2>
        <hr/>
        </xsl:for-each>
        <p class="ex1">
        <xsl:for-each select="CurriculumVitae/Education/Educ">
        <b>Titre:</b><xsl:value-of select="Name"></xsl:value-of>
        <br /><b>Description:</b><xsl:value-of select="Description"></xsl:value-of>
        <br /><b>Debut:</b><xsl:value-of select="StartDate"></xsl:value-of>
        <br /><b>Fin:</b><xsl:value-of select="EndDate"></xsl:value-of>
        
        </xsl:for-each>
        </p>

        <h2 align="Center" style="color:steelblue;"><i>Expériences Professionnelles </i></h2>
        
        <hr />
        <p class="ex1">
        <xsl:for-each select="CurriculumVitae/ExperiencePro/Exp">
        <b>Titre:</b><xsl:value-of select="Name"></xsl:value-of>
        <br /><b>Description:</b><xsl:value-of select="Description"></xsl:value-of>
        <br /><b>Projet:</b><xsl:value-of select="Projet"></xsl:value-of>
        <br /><b>Debut:</b><xsl:value-of select="StartDate"></xsl:value-of>
        <br /><b>Fin:</b><xsl:value-of select="EndDate"></xsl:value-of>
        <br /><br/>
        </xsl:for-each>
        </p>

        <h2 align="Center" style="color:steelblue;"><i>Projets Académiques</i> </h2>
        <hr />
        <p class="ex1">
        <xsl:for-each select="CurriculumVitae/Projets/Proj">
        <b>Titre:</b><xsl:value-of select="Name"></xsl:value-of>
        <br /><b>Outils:</b><xsl:value-of select="Outils"></xsl:value-of>
        <br /><br />
        </xsl:for-each>
        </p>
        <h2 align="Center" style="color:steelblue;"><i>Compétances </i></h2>
        <hr />
        <p class="ex1">
        <xsl:for-each select="CurriculumVitae/Skills">
        <b>Langages de Programmation:</b><xsl:value-of select="ProgrammingLanguages"></xsl:value-of>
        <br /><b>Compétances:</b><xsl:value-of select="Compétances"></xsl:value-of>
        <br /><b>Langues:</b><xsl:value-of select="Languages"></xsl:value-of>
        </xsl:for-each>
        </p>


        <h2 align="Center" style="color:steelblue;"><i>Activités Parascolaires </i> </h2>
        <hr />
        <p class="ex1">
        <xsl:for-each select="CurriculumVitae/ExtraCurricularActivities/activitie">
        <b>Nom:</b><xsl:value-of select="Name"></xsl:value-of> 
        <br /><br /><br />
        </xsl:for-each>
        </p>

    </body>
</html>
</xsl:template>
</xsl:stylesheet>