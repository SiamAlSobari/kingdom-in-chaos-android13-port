.class public Lcom/testin/agent/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/testin/agent/a/g$1;,
        Lcom/testin/agent/a/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/testin/agent/a/g;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/testin/agent/a/g;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/testin/agent/a/g;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/testin/agent/a/g;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/testin/agent/a/j;->a(Landroid/content/Context;)Lcom/testin/agent/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/testin/agent/a/j;->a()V

    return-void
.end method

.method private d(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/testin/agent/TestinAgentConfig;->permissions:[Ljava/lang/String;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v3, Lcom/testin/agent/TestinAgentConfig;->permissions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lcom/testin/agent/e/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/testin/agent/TestinAgentConfig;->permissions:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is missing!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/testin/agent/a/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/testin/agent/a/g$a;-><init>(Lcom/testin/agent/a/g;Landroid/content/Context;Lcom/testin/agent/a/g$1;)V

    invoke-virtual {v0}, Lcom/testin/agent/a/g$a;->start()V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 8

    const/4 v7, -0x1

    const-string v0, "register"

    invoke-static {p1}, Lcom/testin/agent/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/testin/agent/b/c;

    invoke-direct {v2, p1}, Lcom/testin/agent/b/c;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/testin/agent/e/c;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/testin/agent/b/c;->a(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v3, "/cpi/crash"

    invoke-static {v3}, Lcom/testin/agent/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x7530

    invoke-static {v3, v1, v0, v4}, Lcom/testin/agent/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/testin/agent/b/c;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2, v1}, Lcom/testin/agent/b/c;->a(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "en"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "to"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {p1, v0}, Lcom/testin/agent/e/d;->e(Landroid/content/Context;I)V

    const-string v0, "po"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/testin/agent/e/d;->a(Landroid/content/Context;I)V

    const-string v0, "rc"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/testin/agent/e/d;->b(Landroid/content/Context;I)V

    const-string v0, "mc"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/testin/agent/e/d;->c(Landroid/content/Context;I)V

    const-string v0, "ep"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/testin/agent/e/d;->d(Landroid/content/Context;I)V

    const-string v0, "lv"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "tag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcom/testin/agent/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "sw"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "apm"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v7, v3, :cond_3

    sget-object v3, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/testin/agent/TestinAgentConfig;->setOpenAPM(Z)V

    :cond_3
    const-string v3, "exc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v7, v3, :cond_4

    sget-object v3, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/testin/agent/TestinAgentConfig;->setOpenEx(Z)V

    :cond_4
    const-string v3, "crash"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v7, v3, :cond_5

    sget-object v3, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/testin/agent/TestinAgentConfig;->setOpenCrash(Z)V

    :cond_5
    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v7, v3, :cond_6

    sget-object v3, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/testin/agent/TestinAgentConfig;->setReportOnlyWifi(Z)V

    :cond_6
    const-wide/16 v3, 0x0

    const-string v5, "rperiod"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    const-string v3, "rperiod"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/testin/agent/d/b/d;->a:J

    :cond_7
    const-string v3, "rback"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v7, v3, :cond_8

    sget-object v3, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/testin/agent/TestinAgentConfig;->setReportOnBack(Z)V

    :cond_8
    const-string v3, "http"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v7, v0, :cond_9

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/testin/agent/TestinAgentConfig;->setOpenNetworkMonitor(Z)V

    :cond_9
    invoke-static {}, Lcom/testin/agent/e/d;->b()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2, v1}, Lcom/testin/agent/b/c;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
