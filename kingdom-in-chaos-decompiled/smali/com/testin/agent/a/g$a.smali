.class Lcom/testin/agent/a/g$a;
.super Ljava/lang/Thread;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/testin/agent/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/testin/agent/a/g;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/testin/agent/a/g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/a/g$a;->a:Lcom/testin/agent/a/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/testin/agent/a/g$a;->b:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/testin/agent/a/g;Landroid/content/Context;Lcom/testin/agent/a/g$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/testin/agent/a/g$a;-><init>(Lcom/testin/agent/a/g;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/testin/agent/a/g$a;->a:Lcom/testin/agent/a/g;

    iget-object v1, p0, Lcom/testin/agent/a/g$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/testin/agent/a/g;->a(Lcom/testin/agent/a/g;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TestinAgent Init Failed."

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/testin/agent/a/h;->a()Lcom/testin/agent/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/testin/agent/a/h;->b()V

    iget-object v0, p0, Lcom/testin/agent/a/g$a;->a:Lcom/testin/agent/a/g;

    iget-object v1, p0, Lcom/testin/agent/a/g$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/testin/agent/a/g;->b(Landroid/content/Context;)V

    const-string v0, "Regist finished."

    invoke-static {v0}, Lcom/testin/agent/e/f;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v0}, Lcom/testin/agent/TestinAgentConfig;->isOpenCrash()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Monitor java code crash."

    invoke-static {v0}, Lcom/testin/agent/e/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/testin/agent/a/g$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Landroid/content/Context;)Lcom/testin/agent/a/d;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v0}, Lcom/testin/agent/TestinAgentConfig;->isCollectNDKCrash()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Monitor native code crash."

    invoke-static {v0}, Lcom/testin/agent/e/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/testin/agent/a/g$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/testin/agent/e/b;->a(Landroid/content/Context;)Z

    :cond_2
    iget-object v0, p0, Lcom/testin/agent/a/g$a;->a:Lcom/testin/agent/a/g;

    iget-object v1, p0, Lcom/testin/agent/a/g$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/testin/agent/a/g;->b(Lcom/testin/agent/a/g;Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/testin/agent/a/c;

    invoke-direct {v1}, Lcom/testin/agent/a/c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/testin/agent/a/h;->e:Z

    const-string v0, "TestinAgent Init Successed"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "API Level is less than 14. App on background don\'t report data function can not be used!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TestinAgent Init Failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_2
.end method
