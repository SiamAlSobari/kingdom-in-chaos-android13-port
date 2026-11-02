.class Lcom/applovin/impl/sdk/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cj;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/impl/sdk/bq;

.field private final d:Lcom/applovin/impl/sdk/ck;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/cj;Lcom/applovin/impl/sdk/bq;Lcom/applovin/impl/sdk/ck;)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/bq;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/cn;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/cn;->c:Lcom/applovin/impl/sdk/bq;

    iput-object p3, p0, Lcom/applovin/impl/sdk/cn;->d:Lcom/applovin/impl/sdk/ck;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/cj;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/cj;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cj;->b(Lcom/applovin/impl/sdk/cj;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cn;->b:Ljava/lang/String;

    const-string v3, "Task started execution..."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->c:Lcom/applovin/impl/sdk/bq;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/bq;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v3, v1, v7

    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->c:Lcom/applovin/impl/sdk/bq;

    instance-of v1, v1, Lcom/applovin/impl/sdk/cz;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->c:Lcom/applovin/impl/sdk/bq;

    move-object v0, v1

    check-cast v0, Lcom/applovin/impl/sdk/cz;

    move-object v6, v0

    invoke-static {}, Lcom/applovin/impl/sdk/cu;->a()Lcom/applovin/impl/sdk/cu;

    move-result-object v1

    invoke-interface {v6}, Lcom/applovin/impl/sdk/cz;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v5}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/cj;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/impl/sdk/q;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6}, Lcom/applovin/impl/sdk/cz;->g()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/cu;->a(Ljava/lang/String;JLjava/lang/String;Z)V

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cj;->b(Lcom/applovin/impl/sdk/cj;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cn;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task executed successfully in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/cj;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/bw;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/applovin/impl/sdk/cn;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_count"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/bw;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/applovin/impl/sdk/cn;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_time"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/bw;->a(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/cj;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/cj;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g()V

    :goto_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->c:Lcom/applovin/impl/sdk/bq;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/bq;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v2}, Lcom/applovin/impl/sdk/cj;->b(Lcom/applovin/impl/sdk/cj;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cn;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task failed execution in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cj;->b(Lcom/applovin/impl/sdk/cj;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cn;->b:Ljava/lang/String;

    const-string v3, "Task not executed, SDK is disabled"

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cj;->b(Lcom/applovin/impl/sdk/cj;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cn;->b:Ljava/lang/String;

    const-string v3, "Task re-scheduled..."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/cn;->a:Lcom/applovin/impl/sdk/cj;

    iget-object v2, p0, Lcom/applovin/impl/sdk/cn;->c:Lcom/applovin/impl/sdk/bq;

    iget-object v3, p0, Lcom/applovin/impl/sdk/cn;->d:Lcom/applovin/impl/sdk/ck;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/bq;Lcom/applovin/impl/sdk/ck;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
