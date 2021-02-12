<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	<head>
		<title>Lab 8 - Part 1</title>
		<link href='https://fonts.googleapis.com/css?family=Pacifico' 
          		rel='stylesheet' type='text/css'/>
		<link href='https://fonts.googleapis.com/css?family=Bree+Serif' 
          		rel='stylesheet' type='text/css'/>
		<link href='https://fonts.googleapis.com/css?family=Sansita+Swashed' 
		          rel='stylesheet' type='text/css'/>
		<style>
			body {
			background-image: linear-gradient(180deg, #3f51b1 0%, #5a55ae 13%, #7b5fac 25%, #8f6aae 38%, #a86aa4 50%, #cc6b8e 62%, #f18271 75%, #f3a469 100%);
			}
			
			h1 {
			font-family:'Pacifico', cursive;
			font-size: 3em;
			text-align:center;
			margin-top:200px;
			color: goldenrod;
			}

			div {
			display:block; 
			margin-top:50px;
			margin-left:auto; 
			margin-right:auto;
			height:260px;
			width: 650px; 
			border: 6px solid maroon;
			}

			.song-info {
			font-family: 'Bree Serif', serif;
			color: goldenrod;
			float:left;
			font-size:1.2em;
			margin-top: 40px;
			margin-left: 60px;
			margin-right: 30px; 	
			}

			img {	
			display:block;
			float:left;
			margin-top:30px;
			margin-bottom:30px;
			margin-left:50px;
			height:200px;
			width:200px;
			border-radius: 50%;
			border: 4px solid maroon;
			-webkit-animation: spin 10s linear infinite;
			animation: spin 10s linear infinite;
			}

			@-webkit-keyframes spin {
				0% {
    				-webkit-transform: rotate(0deg);
    				-ms-transform: rotate(0deg);
   				transform: rotate(0deg);
  				}
				100% {
    				-webkit-transform: rotate(360deg);
    				-ms-transform: rotate(360deg);
    				transform: rotate(360deg);
    				}
			}
			
			@keyframes spin {
				0% {
    				-webkit-transform: rotate(0deg);
    				-ms-transform: rotate(0deg);
    				transform: rotate(0deg);
    				}
				100% {
    				-webkit-transform: rotate(360deg);
    				-ms-transform: rotate(360deg);
    				transform: rotate(360deg);
    				}
			}

		
		</style>
	</head>
	<body>
		<xsl:for-each select="response/data/item/track/playlist">
			<h1>
				<xsl:value-of select="title"/>
			</h1>
		</xsl:for-each>
		<div>
		<xsl:for-each select="response/data/item/track">
			<xsl:element name="img">
				<xsl:attribute name="src">
					<xsl:value-of select="imageurl"/>			
				</xsl:attribute>
			</xsl:element>
			<span class="song-info">
				<h3>
				Now Playing:
				</h3>	
				<h3>
				Song: 
				<xsl:value-of select="title"/>
				</h3>
				<h3>
				Artist:
				<xsl:value-of select="artist"/>
				</h3>
			</span>
		</xsl:for-each>
		</div>
	</body>
	</html>
</xsl:template>

</xsl:stylesheet>
