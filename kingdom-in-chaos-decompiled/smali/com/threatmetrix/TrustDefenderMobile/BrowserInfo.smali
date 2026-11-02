.class Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;
.super Ljava/lang/Object;
.source "BrowserInfo.java"


# instance fields
.field m_browserPluginCount:Ljava/lang/String;

.field m_browserPlugins:Ljava/lang/String;

.field m_browserPluginsFromJS:Ljava/lang/String;

.field m_browserPluginsFromJSHash:Ljava/lang/String;

.field m_browserStringFromJS:Ljava/lang/String;

.field m_mimeTypeCount:I

.field m_mimeTypes:Ljava/lang/String;

.field m_mimeTypesHash:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPlugins:Ljava/lang/String;

    .line 6
    const-string v0, "0"

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPluginCount:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPluginsFromJS:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPluginsFromJSHash:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserStringFromJS:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_mimeTypeCount:I

    .line 11
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_mimeTypes:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_mimeTypesHash:Ljava/lang/String;

    return-void
.end method

.method private getBrowserPluginsFromJS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPluginsFromJS:Ljava/lang/String;

    return-object v0
.end method

.method private getMimeTypes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_mimeTypes:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getBrowserPluginCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPluginCount:Ljava/lang/String;

    return-object v0
.end method

.method public final getBrowserPlugins()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPlugins:Ljava/lang/String;

    return-object v0
.end method

.method public final getBrowserPluginsFromJSHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPluginsFromJSHash:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowserStringFromJS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserStringFromJS:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeTypeCount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_mimeTypeCount:I

    return v0
.end method

.method public final getMimeTypesHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_mimeTypesHash:Ljava/lang/String;

    return-object v0
.end method
