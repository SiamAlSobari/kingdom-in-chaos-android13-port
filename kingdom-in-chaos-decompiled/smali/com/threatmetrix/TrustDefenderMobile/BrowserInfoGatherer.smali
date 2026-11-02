.class Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;
.super Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;
.source "BrowserInfoGatherer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$CompleteBrowserInfoRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

.field private m_context:Landroid/content/Context;

.field private m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

.field private m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

.field private m_jsProblem:Z

.field private m_needWebView:Z

.field private m_options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_context:Landroid/content/Context;

    .line 16
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_needWebView:Z

    .line 17
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsProblem:Z

    .line 18
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .line 19
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    .line 20
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

    .line 21
    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    .line 23
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;)Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;)Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;
    .locals 0
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;
    .param p1, "x1"    # Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;)Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_needWebView:Z

    return v0
.end method

.method static synthetic access$500(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;)V
    .locals 3
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    const-string v1, "(function () { var plugins_string=\'\', i=0; for (p=navigator.plugins[0]; i< navigator.plugins.length;p=navigator.plugins[i++]) {  plugins_string += p.name + \'<FIELD_SEP>\' + p.description + \'<FIELD_SEP>\' + p.filename + \'<FIELD_SEP>\' + p.length.toString() + \'<REC_SEP>\'; } return plugins_string;})();"

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getJSResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->parseBrowserInfo_Plugins(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    const-string v1, "navigator.mimeTypes.length"

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getJSResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypeCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v0, "(function () { var mime_string=\'\', i=0; for (var m=navigator.mimeTypes[0]; i< navigator.mimeTypes.length;m=navigator.mimeTypes[i++]) {  mime_string += m.type; } return mime_string;})();"

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    invoke-virtual {v1, v0}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getJSResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypesHash:Ljava/lang/String;

    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    const-string v2, "failed to convert"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypesHash:Ljava/lang/String;

    goto :goto_1
.end method

.method private static checkPlugin(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p1, "plugin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "plugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 77
    .local v2, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "pluginArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v1, "false"

    .line 98
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 100
    .local v0, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 103
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY -]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    const-string v1, "true"

    .line 110
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 98
    .end local v0    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBrowserInfo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2

    .line 296
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    const-string v5, "(function () { var plugins_string=\'\', i=0; for (p=navigator.plugins[0]; i< navigator.plugins.length;p=navigator.plugins[i++]) {  plugins_string += p.name + \'<FIELD_SEP>\' + p.description + \'<FIELD_SEP>\' + p.filename + \'<FIELD_SEP>\' + p.length.toString() + \'<REC_SEP>\'; } return plugins_string;})();"

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getJSResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "jsPluginList":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 300
    invoke-direct {p0, v2}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->parseBrowserInfo_Plugins(Ljava/lang/String;)V

    .line 304
    .end local v2    # "jsPluginList":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 306
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    const-string v5, "navigator.mimeTypes.length"

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getJSResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 311
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypeCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_3
    :goto_1
    const-string v1, "(function () { var mime_string=\'\', i=0; for (var m=navigator.mimeTypes[0]; i< navigator.mimeTypes.length;m=navigator.mimeTypes[i++]) {  mime_string += m.type; } return mime_string;})();"

    .line 319
    .local v1, "js":Ljava/lang/String;
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    invoke-virtual {v4, v1}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getJSResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    .line 321
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 323
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypesHash:Ljava/lang/String;

    .line 324
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 313
    .end local v1    # "js":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    const-string v5, "failed to convert"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 328
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "js":Ljava/lang/String;
    :cond_4
    const-string v4, ""

    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypesHash:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseBrowserInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 390
    const/4 v3, 0x0

    .line 392
    .local v3, "retValIndex":I
    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 394
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 395
    .local v1, "jsPluginList":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 397
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 399
    invoke-direct {p0, v1}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->parseBrowserInfo_Plugins(Ljava/lang/String;)V

    .line 407
    .end local v1    # "jsPluginList":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 410
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 411
    .local v2, "result":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 413
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 417
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypeCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_1
    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypeCount:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    .line 430
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    .line 431
    :cond_1
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 435
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypesHash:Ljava/lang/String;

    .line 436
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :goto_2
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got mime "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypeCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    return-void

    .line 403
    .restart local v1    # "jsPluginList":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserPluginsFromJSHash:Ljava/lang/String;

    goto/16 :goto_0

    .line 419
    .end local v1    # "jsPluginList":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    const-string v5, "failed to convert"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    iput v6, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypeCount:I

    goto :goto_1

    .line 440
    :cond_5
    const-string v4, ""

    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypesHash:Ljava/lang/String;

    goto :goto_2

    .line 442
    :cond_6
    const-string v4, ""

    goto :goto_3
.end method

.method private parseBrowserInfo_Plugins(Ljava/lang/String;)V
    .locals 10
    .param p1, "jsPluginList"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string v8, "(<FIELD_SEP>|<REC_SEP>)"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserPluginsFromJS:Ljava/lang/String;

    .line 343
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserPluginsFromJS:Ljava/lang/String;

    invoke-static {v8}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserPluginsFromJSHash:Ljava/lang/String;

    .line 345
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v5, "pluginArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v8, "<REC_SEP>"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v6, v1, v2

    .line 349
    .local v6, "pluginString":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 383
    .end local v6    # "pluginString":Ljava/lang/String;
    :goto_1
    return-void

    .line 350
    .restart local v6    # "pluginString":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 352
    .local v4, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "<FIELD_SEP>"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "arr":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 355
    const-string v8, "name"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v8, "description"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v8, "filename"

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v8, "length"

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v4    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "pluginString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserPluginCount:Ljava/lang/String;

    .line 366
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v7, "plugins":Ljava/lang/StringBuilder;
    const-string v8, "QuickTime Plug-in"

    const-string v9, "plugin_quicktime"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v8, "Adobe Acrobat"

    const-string v9, "plugin_adobe_acrobat"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v8, "Java"

    const-string v9, "plugin_java"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v8, "SVG Viewer"

    const-string v9, "plugin_svg_viewer"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v8, "Flash"

    const-string v9, "plugin_flash"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v8, "Windows Media Player"

    const-string v9, "plugin_windows_media_player"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v8, "Silverlight"

    const-string v9, "plugin_silverlight"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v8, "Real Player"

    const-string v9, "plugin_realplayer"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v8, "ShockWave Director"

    const-string v9, "plugin_shockwave"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v8, "VLC"

    const-string v9, "plugin_vlc_player"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v8, "DevalVR"

    const-string v9, "plugin_devalvr"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserPlugins:Ljava/lang/String;

    .line 382
    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserPluginCount:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserPlugins:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserPlugins:Ljava/lang/String;

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    const-string v8, ""

    goto :goto_2
.end method

.method private webViewOkay()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsProblem:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final getBrowserInfoHelper()V
    .locals 5

    .prologue
    .line 236
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->isBrokenJSInterface()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 243
    .local v0, "altJSInterface":Z
    :goto_0
    const/4 v2, 0x1

    .line 244
    .local v2, "latchCount":I
    if-eqz v0, :cond_2

    .line 246
    iget v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 247
    add-int/lit8 v2, v2, 0x1

    .line 249
    :cond_1
    iget v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 250
    add-int/lit8 v2, v2, 0x2

    .line 252
    :cond_2
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

    .line 253
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 255
    .local v1, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Firing off getBrowserInfo on UI thread using latch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

    :goto_1
    invoke-virtual {v4, v3}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->setLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 260
    new-instance v3, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$2;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, p0, p0, v4}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$2;-><init>(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void

    .line 236
    .end local v0    # "altJSInterface":Z
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "latchCount":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    .restart local v0    # "altJSInterface":Z
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "latchCount":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final getBrowserStringFromJS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserPluginsFromJS:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsProblem:Z

    if-eqz v0, :cond_2

    .line 50
    :cond_0
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserStringFromJS:Ljava/lang/String;

    .line 57
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserStringFromJS:Ljava/lang/String;

    return-object v0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserStringFromJS:Ljava/lang/String;

    goto :goto_0
.end method

.method final initJSExecutor(Landroid/content/Context;ZI)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needWebview"    # Z
    .param p3, "options"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_context:Landroid/content/Context;

    .line 121
    iput-boolean p2, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_needWebView:Z

    .line 122
    iput p3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    .line 124
    iget-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_needWebView:Z

    if-nez v3, :cond_0

    .line 188
    :goto_0
    return v4

    .line 127
    :cond_0
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "initJSExecutor: jsProblem = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsProblem:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", jsExec = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", hasBadOptions = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    invoke-virtual {v3, p2}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasBadOptions(Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    iget-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsProblem:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    iget-boolean v6, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_needWebView:Z

    invoke-virtual {v3, v6}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasBadOptions(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 132
    :cond_2
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 133
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    .local v1, "handler":Landroid/os/Handler;
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->isBrokenJSInterface()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    move v0, v5

    .line 137
    .local v0, "altJSInterface":Z
    :goto_2
    new-instance v6, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    if-eqz v0, :cond_6

    move-object v3, v2

    :goto_3
    invoke-direct {v6, v3}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iput-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .line 139
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Firing off initJSExecutor on UI thread using latch: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " with count: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    new-instance v3, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;

    invoke-direct {v3, p0, p0, v2}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;-><init>(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    const-wide/16 v6, 0xa

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 172
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsProblem:Z

    .line 173
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initJSExecutor no response from UI thread before timeout using init latch: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v3

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    const-string v5, "Interrupted initing js engine"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    .end local v0    # "altJSInterface":Z
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_4
    const-string v3, "true"

    goto/16 :goto_1

    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_5
    move v0, v4

    .line 135
    goto :goto_2

    .line 137
    .restart local v0    # "altJSInterface":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 182
    .end local v0    # "altJSInterface":Z
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_7
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    :cond_8
    move v4, v5

    .line 188
    goto/16 :goto_0
.end method

.method final shouldCallBrowserInfoHelper()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsExec:Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsProblem:Z

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_needWebView:Z

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method final waitForBrowserInfoHelper()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_2

    .line 200
    :try_start_0
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "waiting for getBrowserInfo to finished, latch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 203
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->isBrokenJSInterface()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    :cond_0
    iget v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v3, v3, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v1}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->parseBrowserInfo_Plugins(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_options:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_4

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypeCount:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypeCount:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypesHash:Ljava/lang/String;

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got mime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypes:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_2
    :goto_4
    return-void

    .line 206
    :cond_3
    const-string v1, ""

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browserPluginsFromJSHash:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    const-string v2, "getBrowserInfo interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 206
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    :try_start_3
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    const-string v4, "failed to convert"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypeCount:I

    goto :goto_1

    :cond_5
    const-string v1, ""

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_mimeTypesHash:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v1, ""

    goto :goto_3

    .line 211
    :cond_7
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBrowserInfo no response from UI thread before timeout using latch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_browser_info_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->m_jsProblem:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :cond_8
    move v2, v1

    goto/16 :goto_0
.end method
