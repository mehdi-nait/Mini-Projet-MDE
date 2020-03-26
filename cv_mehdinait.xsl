<?xml version='1.0' encoding="utf-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <style>
            p.marge {
                margin-left: 60px;
            }
            p {display:inline;}
            p+p{float:right;}
        </style>
        <title>Curriculum Vitae Mehdi Nait Hammou</title>
    </head>

    <body style="margin:70;padding:10">
        <section>
        <br/><br/>
        
        <p><font size="8"><b><xsl:value-of select="CurriculumVitae/Informations/Nom"></xsl:value-of></b></font></p>
        <p><font size="6" >Email:<xsl:value-of select="CurriculumVitae/Informations/Email"></xsl:value-of></font></p>
        <br/><br/>
        <p><font size="6"><xsl:value-of select="CurriculumVitae/Informations/Age"></xsl:value-of></font></p>
        <p><font size="6" >Tél:<xsl:value-of select="CurriculumVitae/Informations/Tél"></xsl:value-of></font></p>
        <br/><br/>
        <p><font size="6">Adresse:<xsl:value-of select="CurriculumVitae/Informations/Adresse"></xsl:value-of></font></p>
        </section>
        
        <section>
            <br/><br/><br/><br/>
            <p><font size="22" ><b><h1 align="Center">Elève Ingénieur en Systèmes Embarqués</h1></b></font></p>
            <br/><br/><br/>
        </section>

        <section>
            <br /><b><font size="12" style="color:steelblue;">Formations</font></b>
            <hr  width="100%" color="black"/>

            <xsl:for-each select="CurriculumVitae/Formation/Educ">
                <p>
                <br/>
                <font size="6" ><b><xsl:value-of select="Début"></xsl:value-of>-</b>
                <b><xsl:value-of select="Fin"></xsl:value-of></b></font>
                <font size="5" style="margin-left:2.5em"><xsl:value-of select="Description"></xsl:value-of> </font>   
                </p>
                <br/><br/>
                
            </xsl:for-each>
            <br /><br />
        </section>
        
        <section>
            <br /><b><font size="12" style="color:steelblue;">Expériences Professionnelles</font></b>
            <hr  width="100%" color="black"/>
            <br/>

            <xsl:for-each select="CurriculumVitae/Expériences_professionnelles/Exp">
            <font size="6.5" ><b><xsl:value-of select="Début"></xsl:value-of>-</b>
            <b><xsl:value-of select="Fin"></xsl:value-of></b></font>
            <font size="6.5" style="margin-left:2.5em"><xsl:value-of select="Nom"></xsl:value-of> </font>
            <br/>
            
            <ul>
                <li size="16" style="margin-left:22em" ><big><b>Lieu:</b></big><font size="4" style="margin-left:5.5em"><xsl:value-of select="Description"></xsl:value-of> </font></li>
                <li size="16" style="margin-left:22em" ><big><b>Date:</b></big><font size="4" style="margin-left:5.5em"><xsl:value-of select="Début"></xsl:value-of>-</font><font size="4" ><xsl:value-of select="Début"></xsl:value-of></font></li>
                <li size="16" style="margin-left:22em" ><big><b>Description:</b></big><font size="4" style="margin-left:2.5em"><xsl:value-of select="Tâche"></xsl:value-of> </font></li>
            </ul>
  
             <br/><br/>   
            </xsl:for-each>
        </section>

        <section>
            <br /><b><font size="12" style="color:steelblue;">Projets Réalisés</font></b>
            <hr  width="100%" color="black"/>
            <br/>
            <xsl:for-each select="CurriculumVitae/Projets/Proj">
                <ul>
                    <li ><b>Description:</b><font size="4" style="margin-left:2.5em"><xsl:value-of select="Nom"></xsl:value-of></font> 
                        <br/>
                        <b>Outils :</b><font size="3.5" style="margin-left:5em"><xsl:value-of select="Outils"></xsl:value-of></font></li>
                    
                </ul>
            </xsl:for-each>
            <br/><br/>
        </section>
        
        <section>
            <b><font size="12" style="color:steelblue;">Compétances</font></b>
            <hr  width="100%" color="black"/>
            <br/>
            <ul>
                <li ><font size="5"><b>Langages de Programmation:</b><font style="margin-left:2.5em"><xsl:value-of select="CurriculumVitae/Compétances/ProgrammingLanguages"></xsl:value-of></font></font></li><br/>
                <li ><font size="5"><b>Méthodes:</b><font style="margin-left:10.5em"><xsl:value-of select="CurriculumVitae/Compétances/Connaissances"></xsl:value-of></font></font></li><br/>
                <li ><font size="5"><b>Langues:</b><font style="margin-left:11em"><xsl:value-of select="CurriculumVitae/Compétances/Languages"></xsl:value-of></font></font></li><br/>
            </ul>
            <br/>
        </section>
        
        <section>
            <b><font size="12" style="color:steelblue;">Activités Parascolaires</font></b>
            <hr  width="100%" color="black"/>
            <br/>
            <ul>
                <xsl:for-each select="CurriculumVitae/Activités_Parascolaires/activité">
                    <li><font size="5"><xsl:value-of select="Nom"></xsl:value-of></font></li><br/>
                </xsl:for-each>
            </ul>
        </section>
    </body>

</html>
</xsl:template>
</xsl:stylesheet>