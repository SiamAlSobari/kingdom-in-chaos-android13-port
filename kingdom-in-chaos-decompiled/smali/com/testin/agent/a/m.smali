.class Lcom/testin/agent/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/testin/agent/c/n;

.field final synthetic b:Lcom/testin/agent/a/l;


# direct methods
.method constructor <init>(Lcom/testin/agent/a/l;Lcom/testin/agent/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/a/m;->b:Lcom/testin/agent/a/l;

    iput-object p2, p0, Lcom/testin/agent/a/m;->a:Lcom/testin/agent/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/testin/agent/c/k;

    const-string v1, "subapm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/testin/agent/c/k;-><init>(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/testin/agent/a/m;->a:Lcom/testin/agent/c/n;

    invoke-virtual {v1}, Lcom/testin/agent/c/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/k;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/testin/agent/d/a/d;

    invoke-direct {v1}, Lcom/testin/agent/d/a/d;-><init>()V

    sget-object v2, Lcom/testin/agent/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/testin/agent/c/k;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/testin/agent/d/a/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/testin/agent/d/a/e;

    return-void
.end method
