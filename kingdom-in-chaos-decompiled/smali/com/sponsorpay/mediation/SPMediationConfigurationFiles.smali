.class public Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;
.super Ljava/lang/Object;
.source "SPMediationConfigurationFiles.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SPMediationConfigurationFiles"

.field private static instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;


# instance fields
.field private adaptersConfig:Ljava/lang/String;

.field private adaptersConfigLocation:Ljava/lang/String;

.field private adaptersInfo:Ljava/lang/String;

.field private adaptersInfoLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    invoke-direct {v0}, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;-><init>()V

    sput-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "/adapters.config"

    iput-object v0, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersConfigLocation:Ljava/lang/String;

    .line 30
    const-string v0, "/adapters.info"

    iput-object v0, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersInfoLocation:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersConfig:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersInfo:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static getAdapterInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    iget-object v0, v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    iget-object v0, v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersInfo:Ljava/lang/String;

    .line 42
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    sget-object v1, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    iget-object v1, v1, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersInfoLocation:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAdaptersConfig()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    iget-object v0, v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersConfig:Ljava/lang/String;

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    iget-object v0, v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersConfig:Ljava/lang/String;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    sget-object v1, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    iget-object v1, v1, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersConfigLocation:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    new-instance v1, Lcom/sponsorpay/utils/GetRemoteFileContentTask;

    invoke-direct {v1}, Lcom/sponsorpay/utils/GetRemoteFileContentTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/sponsorpay/utils/GetRemoteFileContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SPMediationConfigurationFiles"

    const-string v2, "Error occurred"

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 70
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v1, "SPMediationConfigurationFiles"

    const-string v2, "Error occurred"

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    goto :goto_0

    .line 64
    :catch_2
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SPMediationConfigurationFiles"

    const-string v2, "Error occurred"

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 66
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 67
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v1, "SPMediationConfigurationFiles"

    const-string v2, "Error occurred"

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 76
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 78
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 83
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 84
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "line":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_2

    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 98
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v1

    .line 90
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 94
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    .line 95
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 96
    throw v5

    .line 79
    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static setAdaptersConfig(Ljava/lang/String;)V
    .locals 1
    .param p0, "config"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    iput-object p0, v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersConfig:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static setAdaptersConfigLocation(Ljava/lang/String;)V
    .locals 1
    .param p0, "configLocation"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    iput-object p0, v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersConfigLocation:Ljava/lang/String;

    .line 105
    :cond_0
    return-void
.end method

.method public static setAdaptersInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    iput-object p0, v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersInfo:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public static setAdaptersInfoLocation(Ljava/lang/String;)V
    .locals 1
    .param p0, "infoLocation"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->instance:Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;

    iput-object p0, v0, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->adaptersInfoLocation:Ljava/lang/String;

    .line 111
    :cond_0
    return-void
.end method
