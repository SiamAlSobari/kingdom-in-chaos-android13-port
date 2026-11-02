.class public Lcom/testin/agent/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static a:Lcom/testin/agent/TestinUncaughtExceptionHandler;

.field private static b:Lcom/testin/agent/a/d;


# instance fields
.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/testin/agent/a/d;->e:Z

    iput-boolean v0, p0, Lcom/testin/agent/a/d;->f:Z

    iput-object p1, p0, Lcom/testin/agent/a/d;->d:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/testin/agent/a/d;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic a(Lcom/testin/agent/a/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/a/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/testin/agent/a/d;
    .locals 1

    sget-object v0, Lcom/testin/agent/a/d;->b:Lcom/testin/agent/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/testin/agent/a/d;

    invoke-direct {v0, p0}, Lcom/testin/agent/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/testin/agent/a/d;->b:Lcom/testin/agent/a/d;

    :cond_0
    sget-object v0, Lcom/testin/agent/a/d;->b:Lcom/testin/agent/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/testin/agent/a/d;Lcom/testin/agent/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/testin/agent/a/d;->a(Lcom/testin/agent/b/a;)V

    return-void
.end method

.method private a(Lcom/testin/agent/b/a;)V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Lcom/testin/agent/c/m;

    invoke-direct {v0}, Lcom/testin/agent/c/m;-><init>()V

    new-instance v1, Lcom/testin/agent/b/c;

    iget-object v2, p0, Lcom/testin/agent/a/d;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/testin/agent/b/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/testin/agent/b/c;->b()Lcom/testin/agent/c/m;

    move-result-object v2

    iget-object v3, p0, Lcom/testin/agent/a/d;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/testin/agent/e/c;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/testin/agent/e/g;->h()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v3}, Lcom/testin/agent/TestinAgentConfig;->isReportOnlyWifi()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/testin/agent/a/d;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/testin/agent/e/a;->a(Landroid/content/Context;Lcom/testin/agent/b/a;)V

    iput-boolean v6, p0, Lcom/testin/agent/a/d;->e:Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/testin/agent/b/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/testin/agent/c/m;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/testin/agent/c/m;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/testin/agent/e/g;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/testin/agent/a/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/testin/agent/e/d;->f(Landroid/content/Context;)I

    move-result v0

    const-string v4, "/cpi/crash"

    invoke-static {v4}, Lcom/testin/agent/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "submore"

    invoke-static {v4, v3, v5, v0}, Lcom/testin/agent/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/testin/agent/a/d;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/testin/agent/e/a;->a(Landroid/content/Context;Lcom/testin/agent/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v6, p0, Lcom/testin/agent/a/d;->e:Z

    goto :goto_0

    :pswitch_0
    const-string v3, "exception"

    invoke-virtual {v0, v3}, Lcom/testin/agent/c/m;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/testin/agent/e/a;->b(Lcom/testin/agent/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/testin/agent/c/m;->b(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v3, "submit"

    invoke-virtual {v0, v3}, Lcom/testin/agent/c/m;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/testin/agent/e/a;->a(Lcom/testin/agent/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/testin/agent/c/m;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "en"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/testin/agent/a/d;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/testin/agent/e/a;->a(Landroid/content/Context;Lcom/testin/agent/b/a;)V

    if-eqz v2, :cond_4

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/testin/agent/b/c;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    iput-boolean v6, p0, Lcom/testin/agent/a/d;->e:Z

    goto/16 :goto_0

    :pswitch_2
    if-eqz v2, :cond_4

    const/4 v0, -0x1

    :try_start_2
    invoke-virtual {v1, v0}, Lcom/testin/agent/b/c;->a(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/testin/agent/a/d;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/testin/agent/e/a;->a(Landroid/content/Context;Lcom/testin/agent/b/a;)V

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v6, p0, Lcom/testin/agent/a/d;->e:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/testin/agent/a/d;->e:Z

    throw v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/testin/agent/e/g;->h()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v0}, Lcom/testin/agent/TestinAgentConfig;->isReportOnlyWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "et"

    invoke-static {p0}, Lcom/testin/agent/e/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/testin/agent/e/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/cpi/crash"

    invoke-static {v1}, Lcom/testin/agent/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkcatch"

    const/16 v3, 0x7530

    invoke-static {v1, v0, v2, v3}, Lcom/testin/agent/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/testin/agent/a/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/a/d;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/testin/agent/a/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/a/d;->f:Z

    return p1
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/testin/agent/a/d;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mContext is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/testin/agent/e/g;->a(Ljava/lang/Long;)V

    new-instance v0, Lcom/testin/agent/a/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/testin/agent/a/e;-><init>(Lcom/testin/agent/a/d;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/testin/agent/a/e;->start()V

    :goto_0
    iget-boolean v0, p0, Lcom/testin/agent/a/d;->e:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/a/d;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/testin/agent/a/d;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/testin/agent/e/g;->a(Ljava/lang/Long;)V

    new-instance v0, Lcom/testin/agent/a/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/testin/agent/a/f;-><init>(Lcom/testin/agent/a/d;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/testin/agent/a/f;->start()V

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, Lcom/testin/agent/a/d;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :goto_0
    sget-object v0, Lcom/testin/agent/a/d;->a:Lcom/testin/agent/TestinUncaughtExceptionHandler;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/testin/agent/a/d;->a:Lcom/testin/agent/TestinUncaughtExceptionHandler;

    invoke-interface {v0}, Lcom/testin/agent/TestinUncaughtExceptionHandler;->testinUncaughtException()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p2}, Lcom/testin/agent/e/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/testin/agent/a/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/testin/agent/a/d;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/testin/agent/a/d;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
