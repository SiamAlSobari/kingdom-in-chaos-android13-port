.class public final Lcom/testin/agent/TestinAgent;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beginTransaction(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/testin/agent/TestinAgent;->isOK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Transaction\'s name must not be empty!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/testin/agent/a/h;->h:Lcom/testin/agent/a/l;

    invoke-virtual {v0, p0}, Lcom/testin/agent/a/l;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v0, "Please init TestinAgent first!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static cancelTransaction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/testin/agent/TestinAgent;->isOK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Transaction\'s name must not be empty!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/testin/agent/a/h;->h:Lcom/testin/agent/a/l;

    invoke-virtual {v0, p0, p1}, Lcom/testin/agent/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Please init TestinAgent first!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static endTransaction(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/testin/agent/TestinAgent;->isOK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Transaction\'s name must not be empty!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/testin/agent/a/h;->h:Lcom/testin/agent/a/l;

    invoke-virtual {v0, p0}, Lcom/testin/agent/a/l;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Please init TestinAgent first!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static failTransaction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/testin/agent/TestinAgent;->isOK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Transaction\'s name must not be empty!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/testin/agent/a/h;->h:Lcom/testin/agent/a/l;

    invoke-virtual {v0, p0, p1}, Lcom/testin/agent/a/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Please init TestinAgent first!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "TESTIN_APPKEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "TESTIN_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    return-void
.end method

.method public static init(Lcom/testin/agent/TestinAgentConfig;)V
    .locals 0
    return-void
.end method

.method private static isOK()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/testin/agent/TestinAgent;->isOK()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "breadcrumb must not be empty!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc7

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/testin/agent/a/h;->g:Lcom/testin/agent/c/d;

    invoke-virtual {v0, p0}, Lcom/testin/agent/c/d;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v0, "breadcrumb length must less than 199!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Please init TestinAgent first!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static notifyNativeCrashed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    return-void
.end method

.method private static declared-synchronized reportCustomizedException(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    return-void
.end method

.method public static setCacheFileSize(J)V
    .locals 0

    sput-wide p0, Lcom/testin/agent/d/b/d;->b:J

    return-void
.end method

.method public static setLocalDebug(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/testin/agent/TestinAgent;->isOK()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v0, p0}, Lcom/testin/agent/TestinAgentConfig;->setDebug(Z)V

    :cond_0
    return-void
.end method

.method public static setTestinUncaughtExceptionHandler(Lcom/testin/agent/TestinUncaughtExceptionHandler;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/testin/agent/a/d;->a:Lcom/testin/agent/TestinUncaughtExceptionHandler;

    :cond_0
    return-void
.end method

.method public static setUserInfo(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/testin/agent/TestinAgent;->isOK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v0, p0}, Lcom/testin/agent/TestinAgentConfig;->setUserInfo(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Please init TestinAgent first!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/testin/agent/TestinAgentConfig;)V
    .locals 0
    return-void
.end method

.method private static startInteraction(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/testin/agent/TestinAgent;->isOK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Interaction\'s name must not be empty!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/testin/agent/a/h;->i:Lcom/testin/agent/a/a;

    invoke-virtual {v0, p0}, Lcom/testin/agent/a/a;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v0, "Please init TestinAgent first!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static stopInteraction(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/testin/agent/TestinAgent;->isOK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Interaction\'s name must not be empty!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/testin/agent/a/h;->i:Lcom/testin/agent/a/a;

    invoke-virtual {v0, p0}, Lcom/testin/agent/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Please init TestinAgent first!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized uploadException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    return-void
.end method
