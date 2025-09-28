<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
    <xsl:output method="html" indent="yes" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Peta Situs - NIXY GAMING</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="description" content="Peta situs ini berisi semua URL publik yang dapat diakses di NIXY GAMING. Disediakan untuk membantu mesin pencari mengindeks konten kami secara efisien."/>
                <meta name="robots" content="index, follow"/>
                <link rel="icon" href="https://nixygaming.my.id/favicon.ico" type="image/x-icon"/>
                <link rel="preconnect" href="https://fonts.googleapis.com"/>
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="true"/>
                <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&amp;display=swap" rel="stylesheet" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

                <style type="text/css">
                    :root {
                        --bg-main: #121218;
                        --bg-card: #1E1E24;
                        --text-primary: #EAEAEA;
                        --text-secondary: #A0A0B0;
                        --accent-color: #00BFFF; /* Deep Sky Blue */
                        --accent-hover: #009ACD;
                        --border-color: #3A3A4A;
                        --shadow-color: rgba(0, 191, 255, 0.1);
                    }

                    * {
                        margin: 0;
                        padding: 0;
                        box-sizing: border-box;
                    }

                    body {
                        font-family: 'Poppins', sans-serif;
                        background-color: var(--bg-main);
                        color: var(--text-primary);
                        font-size: 16px;
                        line-height: 1.7;
                    }

                    .container {
                        max-width: 1100px;
                        margin: 30px auto;
                        padding: 20px;
                    }
                    
                    .sitemap-header {
                        text-align: center;
                        margin-bottom: 40px;
                    }
                    
                    .sitemap-header .logo {
                        font-size: 2.5em;
                        font-weight: 700;
                        color: var(--text-primary);
                        text-decoration: none;
                    }

                    .sitemap-header .logo span {
                        color: var(--accent-color);
                    }

                    h1 {
                        font-size: 2em;
                        margin-bottom: 10px;
                        text-align: center;
                    }

                    .info-box {
                        background-color: var(--bg-card);
                        padding: 20px 25px;
                        border-radius: 12px;
                        margin-bottom: 30px;
                        font-size: 0.95em;
                        color: var(--text-secondary);
                        border: 1px solid var(--border-color);
                        text-align: center;
                    }

                    .info-box p {
                        margin: 0;
                    }
                    
                    .info-box a {
                        color: var(--accent-color);
                        text-decoration: none;
                        font-weight: 600;
                    }

                    .info-box a:hover {
                        text-decoration: underline;
                        color: var(--accent-hover);
                    }

                    .sitemap-stats {
                        color: var(--text-secondary);
                        margin-bottom: 20px;
                        font-weight: 500;
                        padding-bottom: 10px;
                        border-bottom: 1px solid var(--border-color);
                    }

                    .sitemap-stats strong {
                        color: var(--text-primary);
                        font-weight: 600;
                    }

                    .url-list {
                        list-style: none;
                        padding: 0;
                    }
                    
                    .url-item-header {
                        display: none;
                    }
                    
                    .url-item {
                        display: flex;
                        flex-direction: column;
                        background-color: var(--bg-card);
                        border: 1px solid var(--border-color);
                        border-radius: 8px;
                        margin-bottom: 12px;
                        padding: 15px 20px;
                        transition: all 0.3s ease;
                        position: relative;
                        overflow: hidden;
                    }

                    .url-item:hover {
                        transform: translateY(-3px);
                        border-color: var(--accent-color);
                        box-shadow: 0 5px 20px var(--shadow-color);
                    }

                    .url-link {
                        font-size: 1em;
                        color: var(--text-primary);
                        text-decoration: none;
                        font-weight: 500;
                        word-break: break-all;
                        margin-bottom: 12px;
                        transition: color 0.2s ease;
                    }
                    
                    .url-link:hover {
                        color: var(--accent-color);
                    }

                    .url-meta {
                        font-size: 0.85em;
                        color: var(--text-secondary);
                        display: flex;
                        flex-wrap: wrap;
                        gap: 10px 25px;
                        align-items: center;
                    }

                    .url-meta span {
                        display: inline-flex;
                        align-items: center;
                        gap: 8px;
                        white-space: nowrap;
                    }
                    
                    .url-meta i {
                        color: var(--accent-color);
                        width: 16px; /* Align icons */
                        text-align: center;
                    }
                    
                    .sitemap-footer {
                        text-align: center;
                        margin-top: 40px;
                        padding-top: 20px;
                        border-top: 1px solid var(--border-color);
                        font-size: 0.9em;
                        color: var(--text-secondary);
                    }
                    
                    .sitemap-footer a {
                         color: var(--text-primary);
                         text-decoration: none;
                         font-weight: 600;
                    }
                    
                    .sitemap-footer a:hover {
                        color: var(--accent-color);
                    }

                    /* Responsive adjustments */
                    @media (min-width: 768px) {
                        .url-item {
                            flex-direction: row;
                            justify-content: space-between;
                            align-items: center;
                            padding: 20px 25px;
                        }

                        .url-link {
                            margin-bottom: 0;
                            flex-grow: 1;
                        }
                        
                        .url-meta {
                            flex-wrap: nowrap;
                            justify-content: flex-end;
                            flex-shrink: 0;
                        }
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <header class="sitemap-header">
                        <a href="https://nixygaming.my.id/" class="logo">NIXY<span>GAMING</span></a>
                    </header>
                    
                    <h1>Peta Situs XML</h1>
                    <div class="info-box">
                        <p>
                            Peta situs ini membantu mesin pencari seperti Google untuk menemukan dan mengindeks semua konten di website kami.
                            <a href="https://support.google.com/webmasters/answer/183668?hl=id" target="_blank" rel="noopener noreferrer">Pelajari lebih lanjut.</a>
                        </p>
                    </div>

                    <xsl:choose>
                        <xsl:when test="/sitemap:sitemapindex">
                             <div class="sitemap-stats">
                                <strong>Total Peta Situs:</strong> <xsl:value-of select="count(sitemap:sitemapindex/sitemap:sitemap)"/>
                            </div>
                            <ul class="url-list">
                                <xsl:for-each select="sitemap:sitemapindex/sitemap:sitemap">
                                    <li class="url-item">
                                        <a href="{sitemap:loc}" class="url-link"><xsl:value-of select="sitemap:loc"/></a>
                                        <div class="url-meta">
                                            <span><i class="fa-solid fa-calendar-days"></i> <xsl:value-of select="substring-before(sitemap:lastmod, 'T')"/></span>
                                        </div>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </xsl:when>

                        <xsl:when test="/sitemap:urlset">
                            <div class="sitemap-stats">
                                <strong>Total URL:</strong> <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/>
                            </div>
                            
                            <ul class="url-list">
                                <xsl:for-each select="sitemap:urlset/sitemap:url">
                                    <li class="url-item">
                                        <a href="{sitemap:loc}" class="url-link"><xsl:value-of select="sitemap:loc"/></a>
                                        <div class="url-meta">
                                            <span><i class="fa-solid fa-calendar-days"></i> <xsl:value-of select="substring-before(sitemap:lastmod, 'T')"/></span>
                                            <span><i class="fa-solid fa-star-half-stroke"></i> <xsl:value-of select="sitemap:priority"/></span>
                                            <span><i class="fa-solid fa-arrows-rotate"></i> <xsl:value-of select="sitemap:changefreq"/></span>
                                        </div>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </xsl:when>

                        <xsl:otherwise>
                            <div class="info-box">
                                <p>Maaf, file peta situs ini tidak valid atau tidak dapat dibaca.</p>
                            </div>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <footer class="sitemap-footer">
                       © <span id="current-year"></span> <a href="https://nixygaming.my.id/">NIXY GAMING</a>. All Rights Reserved.
                    </footer>
                </div>
                
                <script type="text/javascript">
                    document.getElementById('current-year').textContent = new Date().getFullYear();
                </script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>