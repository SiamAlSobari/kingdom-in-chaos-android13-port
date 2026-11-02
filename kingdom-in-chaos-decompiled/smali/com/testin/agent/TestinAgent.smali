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
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/testin/agent/TestinAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/testin/agent/TestinAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/testin/agent/TestinAgent;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/testin/agent/TestinAgentConfig;)V

    return-void
.end method

.method public static init(Lcom/testin/agent/TestinAgentConfig;)V
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "TestinAgentConfig parameter is null!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/testin/agent/TestinAgentConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/testin/agent/TestinAgentConfig;->getAppChannel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/testin/agent/TestinAgent;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/testin/agent/TestinAgentConfig;)V

    goto :goto_0
.end method

.method private static isOK()Z
    .locals 1

    sget-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v5, 0x1

    sget-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "TestinAgent"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stackInfo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uuidInfo"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_1
    const-string v2, "stackInfo"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uuidInfo"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Landroid/content/Context;)Lcom/testin/agent/a/d;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v1}, Lcom/testin/agent/a/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Landroid/content/Context;)Lcom/testin/agent/a/d;

    move-result-object v0

    invoke-virtual {v0, v5, p1, p2}, Lcom/testin/agent/a/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static declared-synchronized reportCustomizedException(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/testin/agent/TestinAgent;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "uploadException(): StackTrace info is null or 0-length!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "uploadException(): Message parameter is null or 0-length!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    const-string p1, ""

    :cond_2
    invoke-static {}, Lcom/testin/agent/TestinAgent;->isOK()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v0}, Lcom/testin/agent/TestinAgentConfig;->isOpenEx()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Landroid/content/Context;)Lcom/testin/agent/a/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/testin/agent/a/d;->b(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_2
    const-string v0, "Please init TestinAgent first!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
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
    .locals 6

    if-nez p0, :cond_0

    const-string v0, "Context param is null!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/testin/agent/TestinAgent;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TestinAgent appKey parameter not configured."

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/testin/agent/TestinAgent;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TestinAgent channel parameter not configured."

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/testin/agent/a/h;->e:Z

    if-eqz v0, :cond_3

    const-string v0, "TestinAgent had been initialized!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "TestinAgent V2.0.7 Initializing......"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/testin/agent/a/h;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Lcom/testin/agent/a/h;->d:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/testin/agent/a/h;->c:J

    if-nez p3, :cond_4

    new-instance v0, Lcom/testin/agent/TestinAgentConfig$Builder;

    invoke-direct {v0, p0}, Lcom/testin/agent/TestinAgentConfig$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/testin/agent/TestinAgentConfig$Builder;->withAppKey(Ljava/lang/String;)Lcom/testin/agent/config/IBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/testin/agent/config/IBuilder;->withAppChannel(Ljava/lang/String;)Lcom/testin/agent/config/IBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/testin/agent/config/IBuilder;->build()Lcom/testin/agent/TestinAgentConfig;

    move-result-object v0

    sput-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {}, Lcom/testin/agent/e/d;->a()V

    :goto_1
    new-instance v0, Lcom/testin/agent/a/g;

    invoke-direct {v0}, Lcom/testin/agent/a/g;-><init>()V

    sget-object v1, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/testin/agent/a/g;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sput-object p3, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->setAppKey(Ljava/lang/String;)V

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v0, p2}, Lcom/testin/agent/TestinAgentConfig;->setAppChannel(Ljava/lang/String;)V

    goto :goto_1
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
    .locals 3

    const-class v1, Lcom/testin/agent/TestinAgent;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string v0, "uploadException(): Context parameter is null!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    if-nez p2, :cond_1

    const-string v0, "uploadException(): Throwable parameter is null!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {p2}, Lcom/testin/agent/e/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, p1, v0}, Lcom/testin/agent/TestinAgent;->reportCustomizedException(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
