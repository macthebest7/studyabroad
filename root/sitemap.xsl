<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Sitemap</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 0;
                        padding: 0;
                        background-color: #f9f9f9;
                    }
                    .container {
                        width: 80%;
                        margin: 0 auto;
                        padding: 20px;
                        background-color: #fff;
                        box-shadow: 0 0 10px rgba(0,0,0,0.1);
                    }
                    h1 {
                        font-size: 24px;
                        margin-bottom: 20px;
                    }
                    .url {
                        margin-bottom: 10px;
                        padding: 10px;
                        border-bottom: 1px solid #ddd;
                    }
                    .loc {
                        font-weight: bold;
                    }
                    .details {
                        font-size: 12px;
                        color: #666;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>Sitemap</h1>
                    <xsl:for-each select="urlset/url">
                        <div class="url">
                            <div class="loc"><xsl:value-of select="loc"/></div>
                            <div class="details">
                                Last modified: <xsl:value-of select="lastmod"/> | 
                                Change frequency: <xsl:value-of select="changefreq"/> | 
                                Priority: <xsl:value-of select="priority"/>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
