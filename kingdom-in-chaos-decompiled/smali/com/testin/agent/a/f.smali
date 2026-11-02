.class Lcom/testin/agent/a/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/testin/agent/a/d;


# direct methods
.method constructor <init>(Lcom/testin/agent/a/d;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/a/f;->d:Lcom/testin/agent/a/d;

    iput p2, p0, Lcom/testin/agent/a/f;->a:I

    iput-object p3, p0, Lcom/testin/agent/a/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/testin/agent/a/f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/testin/agent/a/f;->d:Lcom/testin/agent/a/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/testin/agent/a/d;->b(Lcom/testin/agent/a/d;Z)Z

    const/16 v2, 0xb

    iget-object v0, p0, Lcom/testin/agent/a/f;->d:Lcom/testin/agent/a/d;

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Lcom/testin/agent/a/d;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/testin/agent/a/f;->a:I

    iget-object v3, p0, Lcom/testin/agent/a/f;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/testin/agent/a/f;->c:Ljava/lang/String;

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/testin/agent/e/a;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/testin/agent/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/testin/agent/a/f;->d:Lcom/testin/agent/a/d;

    invoke-static {v1}, Lcom/testin/agent/a/d;->a(Lcom/testin/agent/a/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/testin/agent/e/a;->b(Landroid/content/Context;Lcom/testin/agent/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/testin/agent/a/f;->d:Lcom/testin/agent/a/d;

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Lcom/testin/agent/a/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/testin/agent/a/j;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/testin/agent/a/f;->d:Lcom/testin/agent/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/testin/agent/a/d;->b(Lcom/testin/agent/a/d;Z)Z

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
