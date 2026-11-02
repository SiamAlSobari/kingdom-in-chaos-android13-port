.class public Lcom/vungle/publisher/bw;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/bv;


# instance fields
.field a:Z

.field b:Z

.field public c:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/bx;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lcom/vungle/publisher/by;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/vungle/publisher/bw;->a:Z

    .line 23
    iput-boolean v0, p0, Lcom/vungle/publisher/bw;->b:Z

    return-void
.end method


# virtual methods
.method public final b()Landroid/location/Location;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 33
    .line 36
    :try_start_0
    iget-boolean v1, p0, Lcom/vungle/publisher/bw;->b:Z

    if-eqz v1, :cond_3

    .line 37
    iget-object v2, p0, Lcom/vungle/publisher/bw;->d:Lcom/vungle/publisher/by;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 39
    if-eqz v2, :cond_0

    .line 40
    :try_start_1
    invoke-interface {v2}, Lcom/vungle/publisher/bv;->b()Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 51
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/vungle/publisher/bw;->a:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 53
    :try_start_3
    iget-object v0, p0, Lcom/vungle/publisher/bw;->c:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bv;
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 54
    if-eqz v0, :cond_2

    .line 55
    :try_start_4
    invoke-interface {v0}, Lcom/vungle/publisher/bv;->b()Landroid/location/Location;
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 70
    :cond_1
    :goto_2
    return-object v1

    .line 43
    :catch_0
    move-exception v1

    .line 44
    :try_start_5
    const-string v3, "VungleLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "permanent error obtaining detailed location "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vungle/publisher/bw;->b:Z

    move-object v1, v0

    .line 49
    goto :goto_0

    .line 47
    :catch_1
    move-exception v1

    .line 48
    const-string v3, "VungleLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error obtaining detailed location "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    move-object v1, v0

    goto :goto_0

    .line 58
    :catch_2
    move-exception v0

    .line 59
    :goto_3
    :try_start_6
    const-string v3, "VungleLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "permanent error obtaining detailed location "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/bw;->a:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 67
    :catch_3
    move-exception v0

    .line 68
    :goto_4
    const-string v3, "VungleLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error obtaining detailed location "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 62
    :catch_4
    move-exception v0

    .line 63
    :goto_5
    :try_start_7
    const-string v3, "VungleLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error obtaining detailed location "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 67
    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 62
    :catch_7
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_5

    .line 58
    :catch_8
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto/16 :goto_1

    :cond_3
    move-object v2, v0

    move-object v1, v0

    goto/16 :goto_0
.end method
