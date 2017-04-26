<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/konfigurace_Paran">
    {
    	<xsl:for-each select="ucet">
    	"Profil":
    	{
    		"Nazev uctu": "<xsl:value-of select="nazev_uctu"/>",
    		"Email": "<xsl:value-of select="email"/>",
    		"Stav": "<xsl:value-of select="stav"/>",
    		"Beta verze": "<xsl:value-of select="beta_verze"/>",
    		"Rozhrani":<xsl:for-each select="rozhrani">
    		{
    			"Jazyk": "<xsl:value-of select="jazyk"/>",
    			"Domovska obrazovka": "<xsl:value-of select="domovska_obrazovka"/>",
    			"Vhled": "<xsl:value-of select="vhled"/>",
    			"Spustit zaroven s OS": "<xsl:value-of select="po_spusteni_windows"/>",
    			"Maximalizovat okno": "<xsl:value-of select="maximalizovat"/>",
    			"Zobrazit zalozky":<xsl:for-each select="zalozky">
    			{
    				"Obchod": "<xsl:value-of select="@zObchod"/>",
    				"Hry": "<xsl:value-of select="@zHry"/>",
    				"Komunita": "<xsl:value-of select="@zKomunita"/>",
    				"Nastaveni": "<xsl:value-of select="@zNastaveni"/>"
    			}</xsl:for-each>
    		},</xsl:for-each>
    		"Komunita":<xsl:for-each select="komunita">
    		{
    			"Prezdivka": "<xsl:value-of select="prezdivka"/>",
    			"Automaticke prihlaseni": "<xsl:value-of select="auto_prihlaseni"/>",
    			"Zobrazit cas v chatu": "<xsl:value-of select="cas_v_chatu"/>"
    		},</xsl:for-each>
    		"Aplikace ve hre":<xsl:for-each select="aplikace_ve_hre">
    		{
    			"Klavesova zkratka": "<xsl:value-of select="klavesova_zkratka"/>",
    			"Screenshot": "<xsl:value-of select="screenshot"/>",
    			"Umisteni screenshotu na disku":<xsl:for-each select="screenshot_konf">
    			{
    				"Cesta": "<xsl:value-of select="@umisteni_screenshotu"/>"
    			}</xsl:for-each>
    		},</xsl:for-each>
    		"Hlas":<xsl:for-each select="hlas">
    		{
    			"Nazev mikrofonu": "<xsl:value-of select="nazev_mikrofonu"/>",
    			"Hlasitost mikrofonu": "<xsl:value-of select="hlasitost_mikrofonu"/>%",
    			"Hlasitost prijmu": "<xsl:value-of select="hlasitost_prijmu"/>%",
    			"Zesilit mikrofon": "<xsl:value-of select="zesilit_mikrofon"/>",
    			"Spusteni hlasove konverzace":<xsl:for-each select="hlasova_konverzace">
    			{
    				"Automaticky": "<xsl:value-of select="@automaticky"/>",
    				"Po stisknuti tlacitka": "<xsl:value-of select="@po_stisknuti_tlacitka"/>"
    			}</xsl:for-each>
    		},</xsl:for-each>
    		"Hudebni prehravac":<xsl:for-each select="hudebni_prehravac">
    		{
    			"Umisteni":<xsl:for-each select="umisteni">
    			{
    				"Cesta": "<xsl:value-of select="@umisteni_hudby"/>"
    			},</xsl:for-each>
    			"Automaticky hledat na disku": "<xsl:value-of select="automaticky_prohledat"/>",
    			"Hlasitost hudby": "<xsl:value-of select="hlasitost_hudby"/>%",
    			"Pozastavit hudbu":<xsl:for-each select="pozastavit_hudbu">
    			{
    				"Pri spusteni aplikace": "<xsl:value-of select="@pri_spusteni_aplikace"/>",
    				"Pri hlasove konverzaci": "<xsl:value-of select="@pri_hlasove_konverzaci"/>"
    			},</xsl:for-each>
    			"Upozornit na novou skladbu": "<xsl:value-of select="upozorneni_o_nove_skladbe"/>"
    		},</xsl:for-each>
    		"Stream":<xsl:for-each select="stream">
    		{
    			"Stav prenosu": "<xsl:value-of select="stav_prenosu"/>",
    			"Soukromi": "<xsl:value-of select="soukromi"/>",
    			"Rozliseni videa": "<xsl:value-of select="rozliseni_videa"/>",
    			"Maximalni prenosova rychlost": "<xsl:value-of select="maximalni_rychlost_prenosu"/>",
    			"Optimalizace": "<xsl:value-of select="optimalizace"/>",
    			"Nahrat zvuk z mikrofonu": "<xsl:value-of select="nahravat_zvuk_z_mikrofonu"/>",
    			"Zobrazit statistiky": "<xsl:value-of select="zobrazit_statistiky"/>"
    		},</xsl:for-each>
    		"Stahovani":<xsl:for-each select="stahovani">
    		{
    			"Umisteni her na disku":<xsl:for-each select="cil">
    			{
    				"Cesta": "<xsl:value-of select="@umisteni_her"/>"
    			},</xsl:for-each>
    			"Oblast stahovani": "<xsl:value-of select="oblast_stahovani"/>",
    			"Stahovat behem hrani": "<xsl:value-of select="stahovani_behem_hrani"/>",
    			"Stahovat behem streamu": "<xsl:value-of select="stahovani_behem_streamu"/>",
    			"Rychlost stahovani": "<xsl:value-of select="zobrazit_rychlost"/>"
    		}</xsl:for-each>
    	}<xsl:if test="position() != last()">,</xsl:if></xsl:for-each> 
    }
    </xsl:template>
</xsl:stylesheet>