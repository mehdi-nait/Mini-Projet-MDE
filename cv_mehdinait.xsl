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

            
        </section>
        
    </body>

</html>
</xsl:template>
</xsl:stylesheet>